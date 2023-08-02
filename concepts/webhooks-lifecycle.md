---
title: "Reduce missing change notifications and removed subscriptions"
description: "Subscribe to Microsoft Graph lifecycle notifications to help you minimize the risk of missed change notifications or removed subscriptions."
author: "FaithOmbongi"
ms.author: ombongifaith
ms.reviewer: keylimesoda
ms.localizationpriority: high
ms.prod: "change-notifications"
ms.custom: graphiamtop20
ms.date: 04/20/2023
---

# Reduce missing subscriptions and change notifications

In the lifetime of a subscription, Microsoft Graph sends special kinds of notifications to help you minimize the risk of missing subscriptions and change notifications. These notifications are called **lifecycle notifications**.

There are three types of lifecycle events:

- **reauthorizationRequired** notifications
- Subscription **removed** notifications
- **missed** notifications

If you ignore these events, it might break the change notification flow; you can handle the events by implementing logic in your app to resume a continuous change notification flow.

This article introduces lifecycle notifications in Microsoft Graph change notifications and provides guidance for handling the notifications.

## Supported resources

While you can provide a **lifecycleNotificationUrl** when creating a subscription on any resource type, lifecycle notifications are currently supported only for the following resource types.

- reauthorizationRequired notifications - All resources
- subscriptionRemoved notifications - Outlook [message][], Outlook [event][], Outlook personal [contact][], Teams [chatMessage][]
- missed notifications - Outlook [message][], Outlook [event][], Outlook personal [contact][]

## Configure your subscription to receive lifecycle notifications

To receive lifecycle notifications, you must provide a valid **lifecycleNotificationUrl** endpoint when creating the subscription.

The following subscription creation request defines both the **notificationUrl** and **lifecycleNotificationUrl** endpoints.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "change-notifications-lifecycle-notifications-lifecycleNotificationUrl"
}-->
```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/api/resourceNotifications",
  "lifecycleNotificationUrl": "https://webhook.azurewebsites.net/api/lifecycleNotifications",
  "resource": "/users/{id}/messages",
  "expirationDateTime": "2020-03-20T11:00:00.0000000Z",
  "clientState": "<secretClientState>"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/change-notifications-lifecycle-notifications-lifecyclenotificationurl-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/v1/change-notifications-lifecycle-notifications-lifecyclenotificationurl-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/change-notifications-lifecycle-notifications-lifecyclenotificationurl-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/change-notifications-lifecycle-notifications-lifecyclenotificationurl-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/change-notifications-lifecycle-notifications-lifecyclenotificationurl-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/change-notifications-lifecycle-notifications-lifecyclenotificationurl-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/change-notifications-lifecycle-notifications-lifecyclenotificationurl-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/change-notifications-lifecycle-notifications-lifecyclenotificationurl-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The **lifecycleNotificationUrl** endpoint can be the same as the **notificationUrl**.

Existing subscriptions without a **lifecycleNotificationUrl** property don't receive the lifecycle notifications. To add the **lifecycleNotificationUrl** property, you should remove such existing subscriptions and create new subscriptions while specifying the property during subscription creation.

When using the webhooks delivery channel, you must [validate both endpoints](./change-notifications-delivery-webhooks.md#notificationurl-validation).

## Structure of a lifecycle notification

A lifecycle notification payload follows the structure of the [changeNotificationCollection](/graph/api/resources/changenotificationcollection) and the related [changeNotification](/graph/api/resources/changenotification) resource types as follows:

```json
{
  "value": [
    {
      "subscriptionId":"<subscription_guid>",
      "subscriptionExpirationDateTime":"2019-03-20T11:00:00.0000000Z",
      "tenantId": "<tenant_guid>",
      "clientState":"<secretClientState>",
      "lifecycleEvent": "subscriptionRemoved or missed or reauthorizationRequired"
    }
  ]
}
```

The **lifecycleEvent** can be `subscriptionRemoved`, `missed`, or `reauthorizationRequired`, representing the lifecycle notification types.

A lifecycle notification doesn't contain any information about a specific resource, because it isn't related to a resource change, but to the subscription state change. Similar to change notifications, lifecycle notifications can be batched together and received as a collection, each with a possibly different **lifecycleEvent** value. Process each lifecycle notification in the batch accordingly.

When you process the lifecycle notification and resume the flow of change notifications, the change notifications start flowing to the **notificationUrl**.

## Responding to reauthorizationRequired notifications

`reauthorizationRequired` lifecycle events alert you when Microsoft Graph requires the app to reauthorize the subscription, for example in the following cases:

- When the access token is about to expire.
- When a [subscription is about to expire](./webhooks.md#subscription-lifetime).
- When a tenant administrator has revoked your app's permissions to read a resource.

Before any of these conditions become true, Microsoft Graph sends an authorization challenge to the **lifecycleNotificationUrl**. 

The following code sample illustrates how the Microsoft Graph change notifications service can calculate the interval of these notifications.

```csharp
    //The following code is for illustrative purposes only
    var TokenTimeToExpirationInMinutes=(TokenExpirationTime-CurrentTime)/4;

    if((TokenTimeToExpirationInMinutes)<=180 && TokenTimeToExpirationInMinutes>60){
        //Microsoft Graph will send reauthorizationRequired notification
        TokenTimeToExpirationInMinutes=TokenTimeToExpirationInMinutes/2;
    }
    elseif(TokenTimeToExpirationInMinutes<60 && TokenTimeToExpirationInMinutes>=0){
            //Microsoft Graph will send reauthorizationRequired notification every 15 mins
            TokenTimeToExpirationInMinutes=TokenTimeToExpirationInMinutes-15;
    } else {
      //Microsoft Graph will stop sending reauthorizationRequired notifications
    }
```

The following steps represent the flow of an authorization challenge for an active subscription:

1. Microsoft Graph requires a subscription to be reauthorized.

    The reasons may vary from resource to resource and may change over time. To maintain the subscription, you must respond to a reauthorization event no matter what caused it.

2. Microsoft Graph sends an authorization challenge notification to the **lifecycleNotificationUrl**.

    The flow of change notifications may continue for a while, giving you extra time to respond. However, eventually change notification delivery pauses, until you take the required action. Any notifications about resource changes that happen when the change notification delivery pauses and the time when the app successfully creates the subscription again would be lost. In such cases, the app should separately fetch those changes, for example using the [delta query](/graph/delta-query-overview).

### Actions to take

1. Acknowledge receipt of the lifecycle notification by responding to the POST call with `202 - Accepted` response code.
2. Validate the authenticity of the lifecycle notification.
3. Ensure that the app has a valid access token to take the next step.
4. Call either of the following two APIs. If the API call succeeds, the change notification flow resumes.

    - Call the `/reauthorize` action to reauthorize the subscription without extending its expiration date.
        
        <!-- {
          "blockType": "request",
          "name": "change-notifications-lifecycle-notifications-reauthorize"
        }-->
        ```http
        POST  https://graph.microsoft.com/beta/subscriptions/{id}/reauthorize
        ```

    - Perform a regular "renew" action to reauthorize *and* renew the subscription at the same time.

        <!-- {
          "blockType": "request",
          "name": "change-notifications-lifecycle-notifications-renew"
        }-->
        ```http
        PATCH https://graph.microsoft.com/beta/subscriptions/{id}
        Content-Type: application/json

        {
           "expirationDateTime": "2019-09-21T11:00:00.0000000Z"
        }
        ```

      Renewing may fail if the app is no longer authorized to access to the resource. It may then be necessary for the app to obtain a new access token to successfully reauthorize a subscription.

      You may retry these actions later, at any time, and succeed if the conditions of access change.

### Additional information

- Authorization challenges don't replace the need to renew a subscription before it expires.

    While you can choose to renew a subscription when you receive an authorization challenge, Microsoft Graph may not challenge all of your subscriptions. For example, a subscription that doesn't have any activity and has no change notifications pending delivery may not signal any reauthorization challenges to your app. Make sure to [renew subscriptions](/graph/api/subscription-update) before they expire.

- The frequency of authorization challenges is subject to change.

    Don't assume the frequency of authorization challenges. These lifecycle notifications tell you when to take actions, saving you from having to track which subscriptions require reauthorization. Be ready to handle authorization challenges from once every few minutes for every subscription to rarely for some of your subscriptions.

## Responding to subscriptionRemoved notifications

`subscriptionRemoved` lifecycle events alert you when Microsoft Graph has removed a subscription. In such cases, if you want to continue receiving change notifications for the related resource, you need to recreate the subscription.

Even if you have a long-lived subscription, the conditions of access to the resource data might change over time. For example, an event in the service might occur that requires the app to reauthenticate the user. In such a case, Microsoft Graph sends you a **subscriptionRemoved** notification.

The following flow shows the flow of a **subscriptionRemoved** event:

1. The service detects that a subscription needs to be removed from Microsoft Graph.
    
    There's no set cadence for these events. They might occur frequently for some resources, and almost never for others.

2. Microsoft Graph sends a `subscriptionRemoved` lifecycle notification to the **lifecycleNotificationUrl** (if specified).  
    
    No lifecycle notifications are available from the period when the `subscriptionRemoved` lifecycle notification was sent to when the app recreates the subscription successfully. The app needs to fetch those changes on its own.

### Actions to take

1. Acknowledge receipt of the lifecycle notification by responding to the POST call with `202 - Accepted` response code.
2. Validate the authenticity of the lifecycle notification.
3. Ensure that the app has a valid access token to take the next step.
4. Create a new subscription.

    This action might fail, because the authorization checks performed by the system might deny the app access to the resource. It might be necessary for the app to obtain a new access token to successfully reauthorize a subscription. You can retry these actions later, at any time; for example, when the conditions of access have changed.

5. After creating the new subscription, you can sync the resource data to identify any missed change notifications; for example using the [delta query](/graph/delta-query-overview).

## Responding to missed notifications

`missed` lifecycle events alert you that some change notifications might not have been delivered. For example, because of [throttling](change-notifications-delivery-webhooks.md#throttling).

### Actions to take

1. Acknowledge receipt of the lifecycle notification by responding to the POST call with `202 - Accepted` response code.
2. Validate the authenticity of the lifecycle notification.
3. Perform a full data resync of the resource to identify the changes that weren't delivered as notifications; for example, using the [delta query](/graph/delta-query-overview).

## See also

- [Subscription resource type](/graph/api/resources/subscription)

[contact]: /graph/api/resources/contact
[event]: /graph/api/resources/event
[message]: /graph/api/resources/message
[chatMessage]: /graph/api/resources/chatmessage
