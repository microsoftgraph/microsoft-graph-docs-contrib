---
title: "Set up change notifications for Teams messages, including message properties"
description: "The Microsoft Graph API uses a webhook mechanism to deliver change notifications to clients. Notifications can include resource properties. Apps need to implement additional code to handle the requirements related to resource data being included."
author: "piotrci"
localization_priority: Priority
---

# Set up change notifications for Teams messages, including message properties

The Microsoft Graph API uses a webhook mechanism to deliver change notifications to clients. A client is a web service that configures its own URL to receive notifications. Client apps use notifications to update their state upon changes.

After Microsoft Graph accepts the subscription request, it pushes notifications to the URL specified in the subscription. The app then takes action according to its business logic. For example, it fetches more data, updates its cache and views, etc.

Subscriptions can be set up to include resource data in notifications. This allows the app to execute its business logic without the need to make additional Graph API calls to fetch the changing resource; as a result, the app makes fewer API calls and improving performance, which is especially beneficial in large scale scenarios.

However, since notfications can include sensitive customer data, the app must implement additional logic to satisfy data access and security requirements. In this article, we walk through the details, using the Team messages as an example. We focus specifically on the net new requirements specific to including resource data in notifications:

- Receiving special subscription lifecycle notifications, and responding to them to maintain an uninterrupted flow of data.
- Validating the authenticity of notifications, as having originated from Microsoft Graph.
- Decrypting resource data payload received through notifications.

## Supported resources

In Microsoft Graph API, the following resources support change notifications which include resource data:

- Teams messages (preview)

For instance, you can create a subscription to receive notifications about new or changed Teams messages in the entire organization (tenant):
@@@need correct resource path``

Or to all Teams messages in a specific tenant:
@@@need correct resource path``

## Creating a subscription

Creating a subscription for change notifications that include resource data requires additional information in the request:

- @@@Name may change@@@`includeProperties` set to `true` to explicitly request resource properties.
- A `$select` operator in the resource path to select the properties to be included.
- An additional endpoint - `lifecycleNotificationUrl` - where a new type of notifications related to subscription state will be delivered (more on this later in the article).

> **Important:** You must upload and configure a public key for your app to enable encryption of resource data. Without the key, any attempts to create a subcription will fail. More information on encryption is available later in this article.

#### Subscription request example

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json
{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "lifecycleNotificationUrl": "https://webhook.azurewebsites.net/api/lifecycleNotifications",
  "resource": "/teams/allMessages?$select=subject,body",
  @@@subject to change@@@"includeProperties": true,
  "expirationDateTime": "2019-03-20T11:00:00.0000000Z",
  "clientState": "<secretClientState>"
}
```
 
> **Important:** Both notifications URLs must share the same hostname. 

> **Note:** Both notification endpoints will need to be validated by the client app, as described in [the generic notification article](webhooks.md#managing-subscriptions).
You may choose to use the same URL for both endpoints, in which case you will receive two validation requests, to which you will need to respond.

## Subscription lifecycle notifications

Subscription lifecycle notifications inform the app about actions it needs to take in order to maintain an uninterrupted flow of notifications. Unlike  resource change notifications, which inform about an instance of a resource changing, these notifications tell the app about the subscription itself, and its current state in the lifecycle.

These notifications will be delivered to the `lifecycleNotificationUrl`. Your app should identify the type of notification, and take the corresponding action to ensure that the change notifications continue to flow.

### Authorization challenges

These notifications inform the app that a subscription must be re-authorized to maintain the flow of data. 

An app can create a long lived subscription (e.g. 3 days), and resource data will start flowing to the `notificationUrl`. However, the conditions of access to the resource data may change over time. For example, a tenant admin may revoke the app's permissions or the user providing the authentication token to the app may be subject to dynamic policies based on their location, device state, risk assesment, etc. - see this article for more information on [Azure AD conditional access policies](https://docs.microsoft.com/en-us/azure/active-directory/conditional-access/overview).

Given an active, non-expired subscription, the flow looks as follows:

1. Microsoft Graph decides that a subscription requires re-authorization from the app, to maintain the resource data flow.
    1. The reasons for this may vary from resource to resource. The app does not need to understand why the re-authorization events occur, it only needs to respond to them.

2. Microsoft Graph sends an authorization challenge notification to the `lifecycleNotificationUrl`
    1. Note that the flow of resource notifications may continue for a while, giving the app extra time to respond. However, eventually resource notification delivery will be paused, until the app takes the required action.

3. The app responds to the challenge. It has two options:
    1. Re-authorize the subscription; this does not extend the subscription's expiry date.
    2. Renew the subscription; this both re-authorizes and extends the expiry date.

  Note: the above actions require the app to present a valid authentication token, the same as when creating or renewing a subscription.

4. If the app succeeds, resource notifications are resumed. However, if the app fails (for example, it may not be able to obtain a current authentication token), resource notifications will remain paused.
    1. Microsoft Graph will retry delivery of paused notifications for a period of time - currently @@@4 hours. If the app does not re-authorize the subscription, notification data will be lost and the app will need to re-sync the lost state outside of the notification flow.

#### Notification example

@@@confirm the actual shape of the notification

```json
{
  "value": [
    {
      "subscriptionId":"<subscription_guid>",
      "subscriptionExpirationDateTime":"2019-03-20T11:00:00.0000000Z",
      "clientState":"<secretClientState>",
      "resource": "/teams/allMessages?$select=subject,body",
      "lifecycleEvent": "reauthorizationRequired"
    }
  ]
}
```

A few things to note about this type of notification:
- The `"lifecycleEvent": "reauthorizationRequired"` field designates this notification as an authorization challenge.
- The notification does not contain any information about a specific resource, because it is not related to a resource change, but to the subscription state
- `value` is an array, so multiple authorization challenges may be batched together, the same as for resource notifications. You should process each notification in the batch, and react to it.

#### Action to take

1. Acknowledge the receipt of the notification, by responding to the POST call with `202 - Accepted`.
2. Validate the authenticity of the notification @@@more details@@@.
3. Ensure the app has a valid authentication token to take the next step. 
> **Note:** If you are using one of the [authentication libraries](https://docs.microsoft.com/azure/active-directory/develop/reference-v2-libraries) they will handle this for you by either reusing a valid cached token, or obtaining a new token.
Obtaining a new token may fail, since the conditions of access may have changed. For example, the user may have changed their geographical location and the conditional access policy may now deny tokens to a specific resource, such as /messages. In this case you won't be able to re-authorize the subscription until a token can be obtained, potentially losing some notification data.

4. Call either of these two Graph APIs - if successful, both will have the affect of resuming the resource notification flow
    1. To re-authorize the subscription, without extending its expiration date, call the /reauthorize action:
```http
POST  https://graph.microsoft.com/beta/subscriptions/{id}/reauthorize
Content-type: application/json
```
  2. To re-authorize and renew the subscription at the same time, perform a regular renew action:
```http
PATCH https://graph.microsoft.com/beta/subscriptions/{id}
Content-Type: application/json

{
  "expirationDateTime": "2019-03-22T11:00:00.0000000Z",
}
```
> **Note:** These actions may fail, because the authorization checks performed by the system may deny the app or the user access to the resource. You may retry these actions later, at any time, without having to wait for another authorization challenge, for example when the conditions of access have change, e.g. the user's location has changed and now access to data is permitted.

#### Implementation guidelines

Keep the following things in mind when implementing your app:

1. Authorization challenges do not replace the need for you to renew your subscriptions before they expire. While you can choose to renew subscriptions as a response to challenges, the challenges may not be generated by the system for all of your subscriptions. For example, subscriptions that do not have any activity - no resource notifications pending delivery - may not signal any authorization challenges to your app. Continue to renew your subscriptions, as described [here](webhooks.md#managing-subscriptions).

2. Do not make assumptions about the frequency at which you may see challenges for your subscriptions, it is subject to change. The main reason for these signals is for you, the app developer, not to have to know all the cases in which re-authorization of your subscription is required; instead, Microsoft Graph tells you when you need to take action. Your app should be ready to handle these challenges anywhere from once every few minutes per each subscription to very rarely, only for some subscriptions.

### Future-proof the code handling lifecycle notifications

In the future Graph will add more types of subscription lifecycle notifications. They will be posted to the same endpoint: `lifecycleNotificationUrl`, but they may have a different a slightly different schema and properties, specific to the scenario for which they will be issued.

You should implement your code in a future-proof way so it does not break when Graph introduces new types of notifications. We recommend the following approach:

1. Explicitly identify each notification as an event that you support, using the `lifecycleEvent` property. For example, look for the `"lifecycleEvent": "reauthorizationRequired"` propety to identify an authorization challenge, and handle it.

2. For any lifecycle events you do not recognize, ignore them; we may add more values for the `lifecycleEvent` property in the future. We advise you log them so you can become aware of the new types of signals, in case you missed a Graph announcement for the new scenario. That way you can look up the updated documentation and implement your support for it at your discretion.

## Validating the authenticity of notifications@@@this entire section is made up, we don't have this finalized yet@@@

When an app receives notifications with resource data, it will execute business logic based on that data. It is important that the app first verifies that the authenticity and integrity of the data; otherwise a 3rd party could spoof the app with false notifications and make it execute its business logic incorrectly, which could result in a security incident.

For simple notifications, which do not contain resource data, this validation is simplified and based on the `clientState` value, as described [here](webhooks.md#notifications). That is acceptable, because app rely on additional trusted Microsoft Graph calls to get access to resource data, and therefore the impact of any spoofing attempts is limited. A more thorough validation is required before apps process resource data included inside of the notification.

1. Send a `202 - Accepted` status code in in the response to the notification. You should do that before validating the notification itself; it prevents any potential rogue actors from finding out if they passed or failed validation. It also acknoledges the receipt of the notification to Microsoft Graph.

2. The `POST` request will contain an `Authorization` header, with a JWT token that you need to validate. Validation consists of the following steps: 

    1. Verify the token was signed by the expected ceritificate - that it was issued by Microsoft.

    2. Verify the issuer is as expected.

    3. Verify that the audience of your token is your application.

    4. Verify that the token has not expired.

If you are new to token validation, this [blog article](http://www.cloudidentity.com/blog/2014/03/03/principles-of-token-validation/) contains a useful overview.

The above steps can be easily executed using the Microsoft libraries available for .NET and Node.js@@@link to docs, samples here@@@. If you are building on a different platform, you can use a third party library for working with JWT tokens.

3. Validate the value of `clientState` in the notification matches the value you originally provided when creating the subscription.

4. At this point, the app can trust that the notification is legitimate.

## Descrypting resource data from notifications

The data included in the `resourceData` property of the notification is encrypted by Microsoft Graph using the public key provided by the app developer. This is done to increase the security of customer data accessed via notifications.

### Managing app public keys for encryption

> **Important:** You must upload and configure a public key for you app before it will be able to create subscriptions for notifications with resource data. If a key is not configured, any requests to create subscriptions will fail.

1. You need to obtain a pair of assymetric keys.
2. You need to upload the **public** key, in the form of a X509 certificate, to the app object you already registered with Azure AD for calling Microsoft Graph. You will give it a unique GUID identifier.
    1. @@@more intructions on how to do this, but will be similar to [what is described here](https://docs.microsoft.com/en-us/azure/active-directory/manage-apps/howto-saml-token-encryption)
3. The private key will be held by your app; we recommend using as secure key store.
4. You can upload one or more keys, but your app's property@@@TBD@@@ must be set to a single key for all notification encryption.
    1. @@@more info on how to set that@@@

#### Rotating keys

It is a good practice to periodically change assymetric keys, to minimize the risk of a private key becoming compromised. If you want to introduce a new pair of keys, follow these steps:

1. Upload a new **public** key to your app registration.
2. Configure the property@@@ to point to the new key. This is now the new key for encryption.
3. Some things to keep in mind:
    - There will be some time (@@@give SLA@@@) when the old key will still be used for encryption. Your app must have access to both old and new private keys to be able to decrypt content. Old and new keys may be used in parallel for a period of time.
    - Use the `encryptionKeyId` property in each notification to  identify the correct key to use.
    - Discard of the old key pair only when you have seen no recent notifications referencing the old key.

### How to decrypt

To optimize performance, Microsoft Graph uses its own generated symmetric key to encrypt resource data. That key itself is then encrypted by Microsoft Graph using the apps assymetric public key, and included in the `symmetricKey` property.

To decrypt resource data, your app should perform the following steps:

1. Use the `assymetricKeyId` property to identify the private key your app should use for decryption.
2. Using the private key, decrypt the content of the `symmetricKey` property.
3. Use the symmetric key to decrypt the content of the `resourceData` for each notification item in the `value` array.

Note that the symmetric key will change frequently so you should not store or cache it, but always use the latest value in the notification payload.

#### Code sample using .NET

For example, given this notification:
```json
{
  "value": [
    {
      "subscriptionId":"<subscription_guid>",
      "subscriptionExpirationDateTime":"2019-03-19T22:11:09.952Z",
      "clientState":"<secretClientState>",
      "changeType":"created",
      "resource":"/teams/allMessages?$select=subject,body",
      "resourceData": <encryptedResourceDataContent>
    }
  ],
  "assymetricKeyId": <key_guid>,
  "symmetricKey": <encryptedSymmetricKeyFromGraph>
}
```

@@@TBD@@@



## Code samples

@@@TBD@@@
## See also

- [Subscription resource type](/graph/api/resources/subscription?view=graph-rest-1.0)
- [Get subscription](/graph/api/subscription-get?view=graph-rest-1.0)
- [Create subscription](/graph/api/subscription-post-subscriptions?view=graph-rest-1.0)
