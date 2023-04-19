---
title: "Receive change notifications through webhooks"
description: "Change notifications can be delivered via different channels, including webhooks and Azure Event Hubs. This article walks you through how to get change notifications through webhooks."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: jumasure
ms.prod: "change-notifications"
ms.localizationpriority: high
ms.custom: graphiamtop20, devx-track-azurecli
ms.date: 03/23/2022
---

# Receive change notifications through webhooks

A webhook is a HTTP-based user-defined callback API that you can set up in your infrastructure to receive change notifications and events from a service, such as Microsoft Graph. You must configure the webhook using a well-known and accessible HTTPS-secured endpoint.

To receive change notifications through webhooks, you need to create a subscription to the resource for which you want to be notified of changes. While the subscription is valid, Microsoft Graph sends a notification to your app whenever a change is detected on the resource.

The article guides you through the process of managing your Microsoft Graph subscription and how to receive change notifications through webhooks.

## Create a subscription

Before you can receive Microsoft Graph change notifications, you must first create a subscription. The process to set up a valid subscription involves both the client app and Microsoft Graph as follows:

1. The client app sends a subscription request to subscribe to changes on a specific resource.

1. Microsoft Graph verifies the request.

    - If the request is valid, Microsoft Graph sends a validation token to the notification URL for the client app to validate the notification URL.
    - If the request is invalid, Microsoft Graph sends an error response with an error code and details.

1. When the client receives the notification URL validation request, the client responds with the validation token in plain text as explained later in this article.

1. Microsoft Graph validates the client's validation token response and if the validation token is valid, responds with a subscription ID.

### Subscription request

The client app sends a **POST** request to the `/subscriptions` endpoint. The following example shows a request to subscribe to changes to a specific mail folder on behalf of the signed-in user. For more information about other Microsoft Graph resources that support change notifications, see [supported resources](/graph/webhooks#supported-resources).

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "change-notifications-subscriptions-example"
}-->
```http
POST https://graph.microsoft.com/v1.0/subscriptions
Content-Type: application/json

{
  "changeType": "created,updated",
  "notificationUrl": "https://webhook.azurewebsites.net/notificationClient",
  "resource": "/me/mailfolders('inbox')/messages",
  "expirationDateTime": "2016-03-20T11:00:00.0000000Z",
  "clientState": "SecretClientState"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/change-notifications-subscriptions-example-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/change-notifications-subscriptions-example-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/change-notifications-subscriptions-example-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/change-notifications-subscriptions-example-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/change-notifications-subscriptions-example-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/change-notifications-subscriptions-example-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The **clientState** property is required. Setting this property allows your service to confirm that change notifications you receive originate from Microsoft Graph. For this reason, the value of the property should remain secret and known only to your application and the Microsoft Graph service.

If successful, Microsoft Graph returns a `201 Created` code and a [subscription](/graph/api/resources/subscription) object in the body.

Each subscription has a unique **subscriptionId**, even if you have multiple subscriptions that monitor the same resource and use the same notification URL.

> [!NOTE]
> Any query string parameter included in the **notificationUrl** property will be included in the HTTP POST request when notifications are being delivered to your service.

#### notificationUrl validation

[!INCLUDE [change-notifications-delivery-notificationurl-validation](includes/change-notifications-delivery-notificationurl-validation.md)]

## Receive notifications

While the subscription is valid and there are changes to the resource that you subscribed to, Microsoft Graph sends a `POST` request to the **notificationUrl** with details of the changes. This payload is the **change notification**.

For most subscriptions, Microsoft Graph doesn't delay sending notifications but [delivers all notifications within the SLA unless the service is experiencing an incident](./webhooks.md#latency).

A change notification payload sent to your app can contain a collection of change notifications relating to your subscriptions.

### Change notification example

When the user receives an email, Microsoft Graph sends a change notification object to the client app as shown in the following example. See [changeNotificationCollection](/graph/api/resources/changenotificationcollection) and the related [changeNotification](/graph/api/resources/changenotification) for details of the notification payload.

When many changes occur, Microsoft Graph may send multiple notifications that correspond to different subscriptions in the same `POST` request.

```json
{
  "value": [
    {
      "id": "lsgTZMr9KwAAA",
      "subscriptionId":"{subscription_guid}",
      "subscriptionExpirationDateTime":"2016-03-19T22:11:09.952Z",
      "clientState":"secretClientValue",
      "changeType":"created",
      "resource":"users/{user_guid}@{tenant_guid}/messages/{long_id_string}",
      "tenantId": "84bd8158-6d4d-4958-8b9f-9d6445542f95",
      "resourceData":
      {
        "@odata.type":"#Microsoft.Graph.Message",
        "@odata.id":"Users/{user_guid}@{tenant_guid}/Messages/{long_id_string}",
        "@odata.etag":"W/\"CQAAABYAAADkrWGo7bouTKlsgTZMr9KwAAAUWRHf\"",
        "id":"{long_id_string}"
      }
    }
  ]
}
```

### Processing the change notification

Your service should process every change notification it receives. The following are the minimum tasks that your app must perform to process a change notification:

1. After receiving the change notification, send a 2xx class code back to Microsoft Graph. If Microsoft Graph doesn't receive a 2xx class code within 3 seconds, it tries to resend the change notification multiple times, for up to 4 hours. If Microsoft Graph still doesn't receive a 2xx code within the period, it discards the change notification. If the client app consistently doesn't respond within 3 seconds, the [notifications might be subject to throttling](#throttling).

    If your service can take more than 3 seconds to process the change notification, it should persist the notification, return a `202 - Accepted` status code in the response to Microsoft Graph, then process the notifications at its capacity. If the notification isn't persisted, return a 5xx class code to indicate an error so that Microsoft Graph can retry the notification.

    If your service is expected to take less than 3 seconds, it should process the notifications and return a `200 - OK` status code to Microsoft Graph. If the notification isn't processed correctly, return a 5xx class code to indicate an error so that Microsoft Graph can retry the notification.

1. Validate the `clientState` property. It must match the value originally submitted with the subscription creation request.

    If there's a mismatch, don't consider the change notification as valid. It's possible that the change notification hasn't originated from Microsoft Graph and may have been sent by a rogue actor. You should also investigate where the change notification comes from and take appropriate action.

1. Update your client app based on your business logic.

## Renew a subscription

There are many reasons why you may need to renew a subscription. For more information, see [lifecycle notifications](/graph/webhooks-lifecycle).

When you subscribe to lifecycle notifications, Microsoft Graph alerts you when a subscription is almost expiring and should be renewed. If you don't subscribe to lifecycle notifications, you can use the **subscriptionExpirationDateTime** to monitor when your app should send a subscription renewal request.

To renew the subscription, the **expirationDateTime** property is required. If you don't renew a subscription in time, Microsoft Graph deletes the subscription, and the app won't receive future change notifications for the subscription.

### Subscription renewal request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "change-notifications-subscriptions-example-renewal"
}-->
```http
PATCH https://graph.microsoft.com/v1.0/subscriptions/{id}
Content-Type: application/json

{
  "expirationDateTime": "2016-03-22T11:00:00.0000000Z"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/change-notifications-subscriptions-example-renewal-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/change-notifications-subscriptions-example-renewal-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/change-notifications-subscriptions-example-renewal-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/change-notifications-subscriptions-example-renewal-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/change-notifications-subscriptions-example-renewal-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/change-notifications-subscriptions-example-renewal-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

If the subscription renewal request is successful, Microsoft Graph returns a `200 OK` response code and a [subscription](/graph/api/resources/subscription) object in the response body. The subscription object includes the new **expirationDateTime** value.

## Delete a subscription

If the client app no longer wants change notifications, it can delete the subscription using its **subscriptionId** as follows:

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "change-notifications-subscriptions-example-delete"
}-->
```http
DELETE https://graph.microsoft.com/v1.0/subscriptions/{id}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/change-notifications-subscriptions-example-delete-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/change-notifications-subscriptions-example-delete-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/change-notifications-subscriptions-example-delete-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/change-notifications-subscriptions-example-delete-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/change-notifications-subscriptions-example-delete-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/change-notifications-subscriptions-example-delete-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

If successful, Microsoft Graph returns a `204 No Content` code.

## Throttling

If a subscription notification URL is slow or fails to respond, and Microsoft Graph doesn't receive a 2xx class code within 3 seconds, Microsoft Graph tries to resend the change notification multiple times, for up to 4 hours. In this case Microsoft Graph might throttle notifications for the notification endpoint that's associated with the subscription.

#### How Microsoft Graph handles throttling for change notifications using webhooks

Notifications are published using an HTTP client with a 3-second timeout.

1. If the publishing time is greater than 2900 ms, the response is considered slow.
1. The change notification service then calculates the percentage of slow responses after the endpoint receives 100 notifications.
1. If the percentage of slow responses reaches 10%, the endpoint associated with the notification URL is flagged as a slow endpoint. All notifications for all subscriptions associated with the endpoint are subjected to throttling.
1. The evaluation continues in real time and the accumulation of responses is flushed every 10 minutes.

When Microsoft Graph throttles an endpoint, notifications are subjected to a delay of 10 minutes and are offloaded to workers dedicated to failed and throttled notifications. Notifications that failed to deliver due to an unsuccessful HTTP call are retried again in 10 minutes. Notifications are dropped if the throttled endpoint slow percentage is greater than or equal to 15%.

## Firewall configuration

You can configure the firewall that protects your notification URL to allow inbound connections only from Microsoft Graph, reducing further exposure to invalid change notifications. For a complete list of IP addresses used by Microsoft Graph to deliver change notifications, see [additional endpoints for Microsoft 365](/office365/enterprise/additional-office365-ip-addresses-and-urls).

> [!NOTE]
> The listed IP addresses that are used to deliver change notifications can be updated at any time without notice.

## Summary

In this article, you learned how to receive change notifications through webhooks.

1. Create a subscription by sending a POST request to the `/subscriptions` endpoint.
2. Microsoft Graph will validate the webhook notification endpoint before it completes the subscription creation process. A unique **subscriptionId** is linked to the subscription.
3. As long as the subscription is still valid and changes occur to the subscribed resource, Microsoft Graph will send change notifications to the **notificationUrl** endpoint.
4. Regularly renew the subscription to maintain its validity and continue receiving updates on the subscribed changes.

## See also

- [Training module: Use change notifications and track changes with Microsoft Graph](/training/modules/msgraph-changenotifications-trackchanges)
- [subscription resource type](/graph/api/resources/subscription)
- [changeNotificationCollection](/graph/api/resources/changenotificationcollection) resource type
- [Lifecycle notifications](./webhooks-lifecycle.md)
