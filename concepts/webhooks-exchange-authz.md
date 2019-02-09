---
title: "Responding to authorization challenges to maintain continous notification delivery for Outlook resources"
description: "@@@TBD@@@"
author: "piotrci"
localization_priority: Priority
---

# Responding to authorization challenges to maintain continous notification delivery for Outlook resources

An app that subscribes to notifications for Outlook resources, such as messages or events, needs to be able to respond to authorization challenges in order to maintain continous flow of notifications over the lifetime of its subscription.

There are certain events in the Outlook service that require the notifications to stop flowing to the subscribing app, until the app re-authorizes its subscription. Examples include:

- user's password has been reset, and access to the user's mailbox or calendar requires re-authorization
- @@@need 1 or 2 more examples@@@

When these events occur, Microsoft Graph will send a special notification - an authorization challenge - to the app. The app needs to respond to that notification by re-authorizing its subscription.

An app needs to implement logic additional to the standard [notification pattern](webhooks.md):
- the app registers a separate new notification url to receive authorization challenges
- the app can identify these challenges, and respond by calling a specific API in Microsoft Graph; the app has to be able to obtain authentication tokens to make these calls, the same as in the subscription creation or renewal scenarios.

## Creating a subscription

When creating a subscription, a separate notification endpoint needs to be specified, using the `lifecycleNotificationUrl` property; this is where the authorization challenges will be delivered. If the property is not set, the challenges will not be sent, and the app will not be aware of the need to re-authorize the subscription.

#### Subscription request example

```http
POST https://graph.microsoft.com/beta/subscriptions
Content-Type: application/json
{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "lifecycleNotificationUrl": "https://webhook.azurewebsites.net/api/lifecycleNotifications",
  "resource": "/users/{id}/messages",
  "expirationDateTime": "2019-03-20T11:00:00.0000000Z",
  "clientState": "<secretClientState>"
}
```
 
> **Important:** Both notifications URLs must share the same hostname. 

> **Note:** Both notification endpoints will need to be validated by the client app, as described in [the generic notification article](webhooks.md#managing-subscriptions).
You may choose to use the same URL for both endpoints, in which case you will receive two validation requests, to which you will need to respond.

#### Migrating existing subscriptions

If the app has existing subscriptions, it will have to replace them with new subscriptions that include the `lifecycleNotificationUrl`. It is not possible to update (`PATCH`) the existing subscriptions.

## Responding to authorization challenges

These notifications inform the app that a subscription must be re-authorized to maintain the flow of data. 

An app can create a long lived subscription (e.g. 3 days), and resource data will start flowing to the `notificationUrl`. However, the conditions of access to the resource data may change over time. For example, an event in the Outlook service may occur that requires the app to take action.

Given an active, non-expired subscription, the flow looks as follows:

1. Outlook decides that a subscription requires re-authorization from the app, to maintain the resource data flow.
    1. There is no set cadence for these events. They may occur frequently for some resources, and almost never for others.

2. Microsoft Graph sends an authorization challenge notification to the `lifecycleNotificationUrl`

3. The app responds to the challenge. It has two options:
    1. Re-authorize the subscription; this does not extend the subscription's expiry date.
    2. Renew the subscription; this both re-authorizes and extends the expiry date.

  Note: the above actions require the app to present a valid authentication token, the same as when creating or renewing a subscription.

4. If the app succeeds, resource notifications are resumed. However, if the app fails (for example, it may not be able to obtain a current authentication token), resource notifications will not be sent.

### Notification example

@@@confirm the actual shape of the notification

```json
{
  "value": [
    {
      "subscriptionId":"<subscription_guid>",
      "subscriptionExpirationDateTime":"2019-03-20T11:00:00.0000000Z",
      "clientState":"<secretClientState>",
      "resource": "/users/{id}/messages",
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