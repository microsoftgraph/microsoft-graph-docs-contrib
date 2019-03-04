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

### Action to take

1. [Acknowledge](webhooks.md#notifications) the receipt of the notification, by responding to the POST call with `202 - Accepted`.
2. [Validate]((webhooks.md#notifications)) the authenticity of the notification.
3. Ensure the app has a valid authentication token to take the next step. 
> **Note:** If you are using one of the [authentication libraries](https://docs.microsoft.com/azure/active-directory/develop/reference-v2-libraries) they will handle this for you by either reusing a valid cached token, or obtaining a new token. Note that obtaining a new token may fail, since the conditions of access may have changed, and the caller may no longer be allowed access to the resource data.

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
> **Note:** These actions may fail, because the authorization checks performed by the system may deny the app or the user access to the resource. You may retry these actions later, at any time, without having to wait for another authorization challenge, for example when the conditions of access have change. Note that any resource changes in the time period from when the challenge was sent, to when the app re-authorizes the subscription successfully, will be lost. The app will need to fetch those changes on its own.@@@provide guidance as in the Outlook API blog@@@

### "Missed notifications"@@@

@@@ - add a secion describing the re-sync required signals @@@

### Future-proof the code handling lifecycle notifications

In the future Graph will add more types of subscription lifecycle notifications. They will be posted to the same endpoint: `lifecycleNotificationUrl`, but they may have a different a slightly different schema and properties, specific to the scenario for which they will be issued.

You should implement your code in a future-proof way so it does not break when Graph introduces new types of notifications. We recommend the following approach:

1. Explicitly identify each notification as an event that you support, using the `lifecycleEvent` property. For example, look for the `"lifecycleEvent": "reauthorizationRequired"` propety to identify an authorization challenge, and handle it.

2. For any lifecycle events you do not recognize, ignore them; we may add more values for the `lifecycleEvent` property in the future. We advise you log them so you can become aware of the new types of signals, in case you missed a Graph announcement for the new scenario. That way you can look up the updated documentation and implement your support for it at your discretion.

## Code samples

@@@TBD@@@
## See also

- [Subscription resource type](/graph/api/resources/subscription?view=graph-rest-1.0)
- [Get subscription](/graph/api/subscription-get?view=graph-rest-1.0)
- [Create subscription](/graph/api/subscription-post-subscriptions?view=graph-rest-1.0)