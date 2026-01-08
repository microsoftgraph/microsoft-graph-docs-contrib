---
title: "Receive change notifications through webhooks"
description: "Change notifications can be delivered via different channels, including webhooks and Azure Event Hubs. This article walks you through how to get change notifications through webhooks."
author: FaithOmbongi
ms.author: ombongifaith
ms.reviewer: keylimesoda
ms.topic: how-to
ms.subservice: change-notifications
ms.localizationpriority: high
ms.custom: graphiamtop20
ms.date: 01/15/2025
#customer intent: As a developer, I want to receive notifications of changes to specific Microsoft Graph resources through webhooks, so that I can build apps that process the changes according to business requirements.
---

# Receive change notifications through webhooks

A webhook is an HTTP-based user-defined callback API that you can set up in your infrastructure to receive change notifications and events from a service, such as Microsoft Graph. To use webhooks, you need to define a publicly accessible HTTPS-secured endpoint that receives the notifications.

You can create a subscription to the resource for which you want to be notified of changes. While the subscription is valid, Microsoft Graph sends a notification to your endpoint whenever it detects a change in the resource.

The article guides you through the process of implementing your webhook endpoint, subscribing to and managing Microsoft Graph subscriptions, and how to receive change notifications through webhooks.

For details about how to create change notifications, see [Microsoft Graph API change notifications](/graph/api/resources/change-notifications-api-overview).

## Considerations for a webhook endpoint

Before you can receive a notification via webhooks, you must create a publicly accessible, HTTPS-secured endpoint that is addressable via URL. If your endpoint isn't publicly accessible, Microsoft Graph doesn't send notifications to your endpoint.

Your endpoint must provide correct, consistent, and timely HTTP responses in order to reliably receive notifications. If an endpoint doesn't respond in a timely manner, the change notification service might begin to drop notifications. Dropped notifications can't be recovered.

Your endpoint must also continue to remain authenticated to Microsoft Graph, either by continually renewing your subscription or by responding to lifecycle notifications.

### HTTP codes and retry logic
Once the Microsoft Graph change notifications service receives a 2xx class code from your endpoint, the notification is considered sent. As long as the change notifications service receives any other HTML response (even an error code) within 10 seconds, the service continues to try to deliver the notification for up to 4 hours.

 - If you're able to process the notification within a 3-second window, you should return a `200 - OK` status code to Microsoft Graph
 - If your service takes more than 10 seconds to process the notification, then you should persist the notification in a queue on your endpoint and return `202 - Accepted` status code to Microsoft Graph.
 - If the notification isn't processed or queued, return a 5xx class code to indicate an error so that Microsoft Graph can retry the notification.

Notifications that fail to deliver are retried at exponential backoff intervals. Missed notifications might take up to 4 hours to resend once your endpoint comes online.

### Throttling
For security and performance reasons, Microsoft Graph throttles notifications sent to endpoints that become slow or unresponsive. It might include dropping notifications in a way that they can't be recovered.

1. An endpoint is marked "slow" once more than 10% of responses take longer than 10 seconds in a 10-minute window.
      - Once an endpoint is marked "slow", any new notifications are sent on a 10-second delay.
      - An endpoint exits the "slow" state once less than 10% of responses take longer than 10 seconds in a 10-minute window.

2. An endpoint is marked "drop" once more than 15% of responses take longer than 10 seconds in a 10-minute window.
      - Once an endpoint is marked "drop", any new notifications are dropped, for up to 10 minutes
      - An endpoint exits the "drop" state once less than 15% of responses take longer than 10 seconds in a 10-minute window.

If your endpoint is unable to meet these performance characteristics, consider using [Event Hubs](/graph/change-notifications-delivery-event-hubs) or [Event Grid](/azure/event-grid/subscribe-to-graph-api-events?context=graph/context) as a target for receiving notifications.

### Authentication
When you create your subscription, an access token is sent to your endpoint. This access token is used only to check the validity of your endpoint and has a lifecycle different from your change notification subscription. This access token generally expires within 1 hour.

To ensure uninterrupted notifications, your endpoint must be prepared for regular reauthorization by Microsoft Graph.

If an access token expires, notifications aren't delivered. However, it doesn't trigger endpoint throttling behavior and Microsoft Graph continues to retry sending each notification for up to 4 hours. So if the access token is refreshed within 4 hours of expiration, unsent notifications are delivered.

We recommend that you add [lifecycle notifications](.\change-notifications-lifecycle-events.md) to your subscription to receive a warning about token expiration so you can reauthorize your endpoint in a timely manner.

When you [renew your subscription](#renew-a-subscription), your access token is also refreshed.

### Firewall configuration
You can configure the firewall that protects your endpoint to allow inbound connections only from Microsoft Graph, reducing further exposure to invalid change notifications. For a complete list of IP addresses used by Microsoft Graph to deliver change notifications, see [additional endpoints for Microsoft 365](/office365/enterprise/additional-office365-ip-addresses-and-urls).

## Create a subscription

> [!IMPORTANT]
> Multiple steps are required to ensure a secure communication channel is established and maintained between the Microsoft Graph change notifications service and your endpoint.

To start receiving Microsoft Graph change notifications, you must create a subscription using the URL of your endpoint (notification URL) to establish the subscription. The pattern of establishing a subscription is as follows:

1. The client app sends a subscription request to subscribe to changes on a specific resource.

2. Microsoft Graph checks the request.

    - If the request is valid, Microsoft Graph sends a validation token to the notification URL for the client app to validate the notification URL.
    - If the request is invalid, Microsoft Graph sends an error response with an error code and details.

3. When the client receives the notification URL validation request, the client responds with the validation token in plain text.

4. Microsoft Graph validates the client's validation token response and if the validation token is valid, responds with a subscription ID.

### Subscription request

The client app sends a **POST** request to the `/subscriptions` endpoint. The following example shows a basic request to subscribe to changes to a specific mail folder on behalf of the signed-in user. For more information about other Microsoft Graph resources that support change notifications, see [supported resources](/graph/change-notifications-overview#supported-resources).

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
  "lifecycleNotificationUrl": "https://webhook.azurewebsites.net/api/lifecycleNotifications",
  "resource": "/me/mailfolders('inbox')/messages",
  "expirationDateTime": "2016-03-20T11:00:00.0000000Z",
  "clientState": "SecretClientState"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/change-notifications-subscriptions-example-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/change-notifications-subscriptions-example-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/change-notifications-subscriptions-example-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/change-notifications-subscriptions-example-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/change-notifications-subscriptions-example-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/change-notifications-subscriptions-example-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/change-notifications-subscriptions-example-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

The **clientState** property is required. Setting the property allows your service to confirm that change notifications you receive originate from Microsoft Graph. For this reason, the value of the property should remain secret and known only to your application and the Microsoft Graph service.

If successful, Microsoft Graph returns a `201 Created` code and a [subscription](/graph/api/resources/subscription) object in the body.

Each subscription has a unique **subscriptionId**, even if you have multiple subscriptions that monitor the same resource and use the same notification URL.

> [!NOTE]
> Any query string parameter included in the **notificationUrl** property is included in the HTTP POST request when notifications are being delivered to your service.
>
> Duplicate subscriptions aren't allowed. When a subscription request contains the same values for **changeType** and **resource** as an existing subscription, the request fails with an HTTP error code `409 Conflict`, and the error message `Subscription Id <> already exists for the requested combination`.

#### notificationUrl validation

[!INCLUDE [change-notifications-delivery-notificationurl-validation](includes/change-notifications-delivery-notificationurl-validation.md)]

## Receive notifications

While the subscription is valid and there are changes to the resource that you subscribed to, Microsoft Graph sends a `POST` request to the **notificationUrl** with details of the changes. This payload is the **change notification**.

For most subscriptions, Microsoft Graph doesn't delay sending notifications but [delivers all notifications within the SLA unless the service is experiencing an incident](./change-notifications-overview.md#latency).

A change notification payload sent to your endpoint can contain a collection of change notifications relating to your subscriptions.

### Change notification example

When the user receives an email, Microsoft Graph sends a change notification object to the client app as shown in the following example. See [changeNotificationCollection](/graph/api/resources/changenotificationcollection) and the related [changeNotification](/graph/api/resources/changenotification) for details of the notification payload.

When many changes occur, Microsoft Graph might send multiple notifications that correspond to different subscriptions in the same `POST` request.

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

When you receive a change notification:

1. Validate the **clientState** property. It must match the value originally submitted with the subscription creation request.

    If there's a mismatch, don't consider the change notification as valid. It's possible that the change notification isn't originated from Microsoft Graph and might have been sent by a rogue actor. You should also investigate where the change notification comes from and take appropriate action.

1. Update your client app based on your business logic.

## Subscription lifecycle
When they're no longer needed, subscriptions might be deleted or expire. When you create your subscription, you set an expiration date using the **expirationDateTime** property. Once this time passes, Microsoft Graph deletes the subscription and doesn't send notifications to your endpoint. You might also explicitly delete your subscription.

The simplest way to continue receiving notifications is to continue renewing your subscription request. Each notification includes a **subscriptionExpirationDateTime** property. You can use it to guide you when to renew your subscription.

Each subscription also includes an access token granted to the endpoint. The expiration time of this access token might occur before the subscription expiration. You can manage access token expiration using lifecycle notifications for your subscription.

### Renew a subscription

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
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/change-notifications-subscriptions-example-renewal-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/change-notifications-subscriptions-example-renewal-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/change-notifications-subscriptions-example-renewal-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/change-notifications-subscriptions-example-renewal-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/change-notifications-subscriptions-example-renewal-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/change-notifications-subscriptions-example-renewal-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/change-notifications-subscriptions-example-renewal-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

If the subscription renewal request is successful, Microsoft Graph returns a `200 OK` response code and a [subscription](/graph/api/resources/subscription) object in the response body. The subscription object includes the new **expirationDateTime** value.

### Delete a subscription

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
[!INCLUDE [sample-code](../includes/snippets/csharp/v1/change-notifications-subscriptions-example-delete-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/v1/change-notifications-subscriptions-example-delete-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/v1/change-notifications-subscriptions-example-delete-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/v1/change-notifications-subscriptions-example-delete-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/v1/change-notifications-subscriptions-example-delete-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/v1/change-notifications-subscriptions-example-delete-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/v1/change-notifications-subscriptions-example-delete-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

If successful, Microsoft Graph returns a `204 No Content` code.

### Lifecycle notifications for your subscription
For increased flexibility and reliability, when you create a subscription, you might also subscribe to the lifecycle notifications for that subscription by providing a **lifecycleNotificationUrl** endpoint that receives, processes, and responds to lifecycle notifications.

When you subscribe to lifecycle notifications, Microsoft Graph alerts you:
- When the access token is about to expire.
- When a subscription is about to expire.
- When a tenant administrator revokes your app's permissions to read a resource.

> [!NOTE]
> If an access token expires, notifications aren't delivered to the endpoint. But Microsoft Graph continues to retry sending each notification for up to 4 hours. So if the access token is refreshed within 4 hours of expiration, unsent notifications are delivered.

For more information on how to utilize lifecycle notifications for your subscription, see [lifecycle notifications](/graph/change-notifications-lifecycle-events).

## Summary

In this article, you learned how to receive change notifications through webhooks.

1. Create a subscription by sending a POST request to the `/subscriptions` endpoint.
2. Microsoft Graph validates the webhook notification endpoint before it completes the subscription creation process. A unique **subscriptionID** is linked to the subscription.
3. As long as the subscription is still valid and changes occur to the subscribed resource, Microsoft Graph sends change notifications to the **notificationUrl** endpoint.
4. Regularly renew the subscription to maintain its validity and continue receiving updates on the subscribed changes.

## Related content

- [subscription resource type](/graph/api/resources/subscription)
- [changeNotificationCollection](/graph/api/resources/changenotificationcollection) resource type
- [Lifecycle notifications](./change-notifications-lifecycle-events.md)
