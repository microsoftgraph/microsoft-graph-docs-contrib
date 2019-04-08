---
title: "Maintaining continous notification delivery for Outlook resources by responding to subcriptionRemoved notifications"
description: "Outlook may suspend delivery of change notifications due to security events such as user's password reset. Special lifecycle events - `subscriptionRemoved` and `missed` - need to be handled to ensure uninterrupted delivery of notifications."
author: "piotrci"
localization_priority: Priority
---

# Maintaining continous notification delivery for Outlook resources by responding to subcriptionRemoved notifications

An app that subscribes to notifications for Outlook resources, such as messages or events, needs to be able to respond to `subscriptionRemoved` signals in order to maintain continous flow of notifications over the lifetime of its subscription.

There are certain events in the Outlook service that cause a subscription to be removed. Examples include:

- user's password has been reset
- user's device is out of compliance
-	user's account has been revoked

When these events occur, Microsoft Graph will send a special lifecycle notification - `subscriptionRemoved` to the app. The app needs to respond to that notification by creating a new subscription.

An app needs to implement logic additional to the standard [notification pattern](webhooks.md):
- Identify these notifications, and respond to them by making an API in Microsoft Graph to create a new subscription;
- Optionally, register a separate lifecycle notification url, if the app wishes to receive lifecycle notifications of all types to a separate endpoint

The Outlook service may also send special lifecycle notifications - `missed` - if some notifications could not be delivered to the app. An app should can handle those special notifications by re-syncing resource data using Microsoft Graph.

## Creating a subscription

When creating a subscription, a separate notification endpoint can be specified, using the `lifecycleNotificationUrl` property. If the endpoint is specified, all current and future types of lifecycle notifications will be delivered there. Otherwise, `subscriptionRemoved` and `missed` notifications will be delivered to the currently specified `notificationUrl` for all existing subscriptions.

> **Note:** At the moment, the `lifecycleNotificationUrl` property can only be set or read using the `beta` version of Graph APIs. However, subscriptions created using `beta` are stored in the same production environment as `v1.0` so you can implement the new Outlook flow described here in addition to your regular usage of `v1.0` with other subscriptions.

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

> **Note:** It is not possible to update (`PATCH`) the existing subscriptions to add `lifecycleNotificationUrl` property. If the app has existing subscriptions, it will have to replace them with new subscriptions to specify the `lifecycleNotificationUrl` property. Existing subscriptions without `lifecycleNotificationUrl` property will receive the `subscriptionRemoved` and `missed` notifications via the `notificationUrl`. 

## Responding to `subscriptionRemoved` notifications

These lifecycle notifications inform the app that a subscription has been removed and should be recreated, if the app wants to continue receiving notifications. 

An app can create a long lived subscription (e.g. 3 days), and resource data notifications will start flowing to the `notificationUrl`. However, the conditions of access to the resource data may change over time. For example, an event in the Outlook service may occur that requires the app to re-authenticate the user. In such a case, the flow looks as follows:

1. Outlook decides that a subscription needs to be removed from Microsoft Graph.
    1. There is no set cadence for these events. They may occur frequently for some resources, and almost never for others.

2. Microsoft Graph sends an `subscriptionRemoved` notification to the `lifecycleNotificationUrl` (if specified), or the `notificationUrl`.  

3. The app can respond to this notification by creating a new subscription for the same resource. To do this, the app needs to present a valid access token; in some cases this means the app needs to re-authenticate the user to obtain a new valid access token.

4. If the app successfully creates a new subscription, resource notifications will start flowing again. However, if the app fails (for example, it could not obtain a valid access token), resource notifications will not be sent.

5. After creating the new subscription, the app can sync the resource data to identify any missing changes.

### `subscriptionRemoved` notification example

```json
{
  "value": [
    {
      "subscriptionId":"<subscription_guid>",
      "subscriptionExpirationDateTime":"2019-03-20T11:00:00.0000000Z",
      "tenantId": "<tenant_guid>",
      "clientState":"<secretClientState>",
      "lifecycleEvent": "subscriptionRemoved"
    }
  ]
}
```

A few things to note about this type of notification:
- The `"lifecycleEvent": "subscriptionRemoved"` field designates this notification as related to subscription removal. Other types of lifecycle notifications are also possible, and new ones will be introduced in the future.
- The notification does not contain any information about a specific resource, because it is not related to a resource change, but to the subscription state change
- `value` is an array, so multiple lifecycle notifications may be batched together - possibly with different `lifecycleEvent` values - similarly to resource notifications. You should process each notification in the batch, and react to it.

### Action to take

1. [Acknowledge](webhooks.md#notifications) the receipt of the notification, by responding to the POST call with `202 - Accepted`.
2. [Validate](webhooks.md#notifications) the authenticity of the notification.
3. Ensure the app has a valid access token to take the next step. 
> **Note:** If you are using one of the [authentication libraries](https://docs.microsoft.com/azure/active-directory/develop/reference-v2-libraries) they will handle this for you by either reusing a valid cached token, or obtaining a new token, including asking the user to login again (e.g. with a new password). Note that obtaining a new token may fail, since the conditions of access may have changed, and the caller may no longer be allowed access to the resource data.

4. Create a new subscription using the standard process described [here](webhooks.md#subscription-request-example).

> **Note:** This action may fail, because the authorization checks performed by the system may deny the app or the user access to the resource. It may be necessary for the app to obtain a new access token from the user to successfully reauthorize a subscription. You may retry these actions later, at any time, for example when the conditions of access have change. Any resource changes in the time period from when the lifecycle notification was sent, to when the app re-creates the subscription successfully, will be lost. The app will need to fetch those changes on its own.

5. After creating the new subscription, sync any missing resource data from the last known time you received a notification for this resource, e.g.: `GET https://graph.microsoft.com/v1.0/users/{id}/messages?$filter=createdDateTime+ge+{LastTimeNotificationWasReceived}`

## Responding to `missed` notifications

These signals inform the app that some notifications may have not been delivered. You should decide if your app ignores or handles these signals.

### Notification example

```json
{
  "value": [
    {
      "subscriptionId":"<subscription_guid>",
      "subscriptionExpirationDateTime":"2019-03-20T11:00:00.0000000Z",
      "tenantId": "<tenant_guid>",
      "clientState":"<secretClientState>",
      "lifecycleEvent": "missed"
    }
  ]
}
```

A few things to note about this type of notification:
- The `"lifecycleEvent": "missed"` field designates this as a signal about missed notifications. Other types of lifecycle notifications are also possible, and new ones will be introduced in the future.
- The notification does not contain any information about a specific resource, because it is not related to a resource change, but to the subscription state change
- `value` is an array, so multiple lifecycle notifications may be batched together - possibly with different `lifecycleEvent` values - similarly to resource notifications. You should process each notification in the batch, and react to it.

### Action to take

1. [Acknowledge](webhooks.md#notifications) the receipt of the notification, by responding to the POST call with `202 - Accepted`.
  - If you ignore these, signals, do nothing else. Otherwise:
2. [Validate](webhooks.md#notifications) the authenticity of the notification.
3. Perform a full data resync of the resource to identify the changes that were not delivered as notifications. 


## Future-proof the code handling lifecycle notifications

In the future Graph will add more types of subscription lifecycle notifications. They will be posted to the same endpoint: `lifecycleNotificationUrl`, but they will have a different value under `lifecycleEvent` and may contain a slightly different schema and properties, specific to the scenario for which they will be issued.

You should implement your code in a future-proof way so it does not break when Graph introduces new types of lifecycle notifications. We recommend the following approach:

1. Explicitly identify each notification as an event that you support, using the `lifecycleEvent` property. For example, look for the `"lifecycleEvent": "subscriptionRemoved"` propety to identify a specific event, and handle it.

2. For any lifecycle events you do not recognize, ignore them; we may add more values for the `lifecycleEvent` property in the future. We advise you log them so you can become aware of the new types of signals, in case you missed a Graph announcement for the new scenario. That way you can look up the updated documentation and implement your support for it at your discretion.

## See also

- [Subscription resource type](/graph/api/resources/subscription?view=graph-rest-1.0)
- [Get subscription](/graph/api/subscription-get?view=graph-rest-1.0)
- [Create subscription](/graph/api/subscription-post-subscriptions?view=graph-rest-1.0)