---
title: "Set up change notifications for Teams messages, including message properties"
description: "Microsoft Graph uses a webhook mechanism to deliver change notifications to clients. Notifications can include resource properties. Apps need to implement additional code to handle the requirements related to resource data being included."
author: "piotrci"
localization_priority: Priority
---

# Set up change notifications for Teams messages, including message properties

Microsoft Graph allows apps to subscribe to change notifications for resources via [webhooks](webhooks.md). You can now set up subscriptions to resource data (such as content of a Teams message) to be included in notifications. Your app can then execute its business logic without the need to make additional API calls to fetch the changing resource; as a result, the app makes fewer API calls and improves its performance, which is especially beneficial in large scale scenarios.

Requesting resource data in notifications requires you to implement additional logic to satisfy data access and security requirements: 

- Handle special subscription lifecycle notifications - `reauthorizationRequired` - to maintain an uninterrupted flow of data.
- Validate the authenticity of notifications, as having originated from Microsoft Graph.
- Provide a public encryption key and use a private key to decrypt resource data received through notifications.

This article walks through the details, using the Team messages resource as an example.

## Supported resources

The following resources support change notifications which include resource data:

- Teams messages (preview)
  - new or changed Teams messages in the entire organization (tenant): @@@need correct resource path``@@@
  - new or changed messages in a specific channel: @@@TBD@@@

## Creating a subscription

To have resource data included in change notifications, you need to provide additional properties when creating a subscription:

- @@@Name may change@@@**includeProperties** set to `true` to explicitly request resource data.
- A `$select` operator in the resource path to select the properties to be included.
- **lifecycleNotificationUrl** - an endpoint to which where lifecycle notifications will be delivered. This can be the same or different as **notificationUrl**. @@@ad inner-link to section@@@
- **publicEncryptionKey** containing the public key that Microsoft Graph will use to encrypt resource data. You will keep the corresponding private key which will be used to decrypt the content. More details about the specification of the key and the decryption process are described here.@@@add inner link@@@
- **publicEncryptionKeyId** your own identifier for the key. It will be included in notifications so you can identify which private key to use for decryption. This is useful when you periodically rotate your key pair.

> **Important:** The above properties are required to successfully create a subscription.

#### Subscription request example

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json
{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "lifecycleNotificationUrl": "https://webhook.azurewebsites.net/api/lifecycleNotifications",
  "resource": "/teams/allMessages?$select=subject,body", @@@confirm@@@
  @@@subject to change@@@"includeProperties": true,
  @@@"publicEncryptionKey": <base64encodedKey>,
  @@@"publicEncryptionKeyId": <string>,
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "<secretClientState>"
}
```

#### Subscription response
```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json
{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "lifecycleNotificationUrl": "https://webhook.azurewebsites.net/api/lifecycleNotifications",
  "resource": "/teams/allMessages?$select=subject,body", @@@confirm@@@
  @@@subject to change@@@"includeProperties": true,
  @@@"publicEncryptionKeyId": <string>,   
  "expirationDateTime": "2019-09-19T11:00:00.0000000Z",
  "clientState": "<secretClientState>"
}
```
 
> **Important:** Use the same hostname for both notifications URLs.

> **Note:** You need to validate both notification endpoints as described in [the generic notification article](webhooks.md#managing-subscriptions).
If you choose to use the same URL for both endpoints you will receive and respond to two validation requests.

> **Note:** You cannot update (`PATCH`) the existing subscriptions to add the **lifecycleNotificationUrl** property. You should remove such existing subscriptions, and create new subscriptions and specify the **lifecycleNotificationUrl** property. Existing subscriptions without **lifecycleNotificationUrl** property will receive the `subscriptionRemoved` and `missed` notifications via the **notificationUrl**. 

## Subscription lifecycle notifications

Subscription lifecycle notifications inform you about actions you need to take in order to maintain an uninterrupted flow of notifications. Unlike resource change notifications, which inform about an instance of a resource changing, these notifications tell you about the subscription itself, and its current state in the lifecycle.

These notifications will be delivered to the **lifecycleNotificationUrl**. You should identify the type of notification, and take the corresponding action to ensure that the change notifications continue to flow.

### Authorization challenges

The `reauthorizationRequired` notification informs you that a subscription must be re-authorized to maintain the flow of data. 

You can create a long-lived subscription (e.g. 3 days), and resource data notifications will start flowing to the **notificationUrl**. However, at any point in time, Microsoft Graph may require that you re-authorize the subscription to prove that you still have access to resource data in case the conditions of access have changed since the subscription was created. Some examples of changes that may impact your apps access to data are:

- a tenant admin may revoke your app's permissions to read the resource
- the user providing the authentication token to your app (interactive scenarios) may be subject to dynamic policies based on their location, device state, risk assesment, etc. - see this article for more information on [Azure AD conditional access policies](https://docs.microsoft.com/en-us/azure/active-directory/conditional-access/overview). For example, if the user changes their physical location, they may no longer be allowed to access the data, and your app will not be able to re-authorize the subscription.

Given an active, non-expired subscription, the flow looks as follows:

1. Microsoft Graph decides that a subscription requires re-authorization to maintain the resource notification flow.
    1. The reasons for this may vary from resource to resource, and may change over time. Your do not need to understand why the re-authorization events occur, you only need to respond to them.

2. Microsoft Graph sends an authorization challenge notification to the **lifecycleNotificationUrl**
    1. Note that the flow of resource notifications may continue for a while, giving you extra time to respond. However, eventually resource notification delivery will be paused, until you take the required action.

3. You can respond to this notification in two ways:
    1. Re-authorize the subscription; this does not extend the subscription's expiry date.
    2. Renew the subscription; this both re-authorizes and extends the expiry date.

  Note: both actions require you to present a valid authentication token, the same as when creating or renewing a subscription.

4. If you successfully re-authorize or renew the subscription, resource notifications will continue. Otherwise, resource notifications will remain paused.
    
#### reauthorizationRequired notification example

@@@confirm the actual shape of the notification

```json
{
  "value": [
    {
      "subscriptionId":"<subscription_guid>",
      "subscriptionExpirationDateTime":"2019-09-19T11:00:00.0000000Z",
      "clientState":"<secretClientState>",
      "resource": "/teams/allMessages?$select=subject,body",
      "lifecycleEvent": "reauthorizationRequired"
    }
  ]
}
```

A few things to note about this type of notification:
- The `"lifecycleEvent": "reauthorizationRequired"` field designates this notification as an authorization challenge.
- The notification does not contain any information about a specific resource, because it is not related to a resource change, but to the subscription state change.
- Similar to resource notifications, lifecycle notifications may be batched together (in the **value** array), each with a possibly different **lifecycleEvent** value. Process each notification in the batch accordingly.

#### Actions to take

1. [Acknowledge](webhooks.md#notifications) the receipt of the notification, by responding to the POST call with `202 - Accepted`.
2. [Validate](webhooks.md#notifications) the authenticity of the notification.
3. Ensure the app has a valid access token to take the next step. 
> **Note:** If you are using one of the [authentication libraries](https://docs.microsoft.com/azure/active-directory/develop/reference-v2-libraries) they will handle this for you by either reusing a valid cached token, or obtaining a new token, including asking the user to login again (e.g. with a new password). Note that obtaining a new token may fail, since the conditions of access may have changed, and the caller may no longer be allowed access to the resource data.

4. Call either of these two APIs - if successful, both will have the affect of resuming the resource notification flow
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
  "expirationDateTime": "2019-09-21T11:00:00.0000000Z",
}
```

> **Note:** This action may fail, because the authorization checks performed by the system may deny the app or the user access to the resource. It may be necessary for the app to obtain a new access token from the user to successfully reauthorize a subscription. You may retry these actions later, at any time, for example when the conditions of access have change. Any resource changes in the time period from when the lifecycle notification was sent, to when the app re-creates the subscription successfully, will be lost. The app will need to fetch those changes on its own.

#### Implementation guidelines

Keep the following things in mind:

1. Authorization challenges do not replace the need for you to renew your subscriptions before they expire. While you can choose to renew subscriptions as a response to challenges, the challenges may not be generated by the system for all of your subscriptions. For example, subscriptions that do not have any activity - no resource notifications pending delivery - may not signal any authorization challenges to your app. Continue to renew your subscriptions, as described [here](webhooks.md#managing-subscriptions).

2. Do not make assumptions about the frequency at which you may see challenges for your subscriptions, it is subject to change. The main reason for these signals is for you, the app developer, not to have to know all the cases in which re-authorization of your subscription is required; instead, Microsoft Graph tells you when you need to take action. Your app should be ready to handle these challenges anywhere from once every few minutes per each subscription to very rarely, only for some subscriptions.

### Future-proof the code handling lifecycle notifications

In the future Microsoft Graph will add more types of subscription lifecycle notifications. They will be posted to the same endpoint: **lifecycleNotificationUrl**, but they will have a different value under **lifecycleEvent** and may contain a slightly different schema and properties, specific to the scenario for which they will be issued.

You should implement your code in a future-proof way so it does not break when Microsoft Graph introduces new types of lifecycle notifications. We recommend the following approach:

1. Explicitly identify each notification as an event that you support, using the **lifecycleEvent** property. For example, look for the `"lifecycleEvent": "reauthorizationRequired"` property to identify a specific event, and handle it.

2. Watch for announcements of notifications for new scenarions, as there may be more types of lifecycle notifications in the future.

3. In your app, ignore any lifecycle events that the app does not recognize, and log them to gain awareness.

4. At your discretion, look up the related documentation for new lifecycle notifications and implement support for them as appropriate.

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

## Decrypting resource data from change notifications

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

@@@TBD - change this section to reflect that keys are now part of the subscription. describe how to rotate them with a PATCH operation@@@
@@@The content below is outdated, needs to be replaced@@@
1. Upload a new **public** key to your app registration.
2. Configure the property@@@ to point to the new key. This is now the new key for encryption.
3. Some things to keep in mind:
    - There will be some time (@@@give SLA@@@) when the old key will still be used for encryption. Your app must have access to both old and new private keys to be able to decrypt content. Old and new keys may be used in parallel for a period of time.
    - Use the `publicEncryptionKeyId` property in each notification to  identify the correct key to use.
    - Discard of the old key pair only when you have seen no recent notifications referencing the old key.

### How to decrypt

To optimize performance, Microsoft Graph uses its own generated symmetric key to encrypt resource data. That key itself is then encrypted by Microsoft Graph using the apps assymetric public key, and included in the `symmetricEncryptionKey` property.

To decrypt resource data, your app should perform the following steps:

1. Use the `publicEncryptionKeyId` property to identify the private key your app should use for decryption.
2. Using the private key, decrypt the content of the `symmetricEncryptionKey` property.
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
  "publicEncryptionKeyId": <key_guid>,
  "symmetricEncryptionKey": <encryptedSymmetricKeyFromGraph>
}
```

@@@TBD@@@


## Code samples

@@@TBD@@@
## See also

- [Subscription resource type](/graph/api/resources/subscription?view=graph-rest-1.0)
- [Get subscription](/graph/api/subscription-get?view=graph-rest-1.0)
- [Create subscription](/graph/api/subscription-post-subscriptions?view=graph-rest-1.0)
