---
title: "Change notifications for Cloud communication resources in Microsoft Graph"
description: "Learn how to get notifications for changes (create, update, and delete) for resources in Cloud communications using Microsoft Graph APIs"
author: "benlee-msft"
ms.localizationpriority: high
ms.prod: "cloud-communications"
ms.custom: scenarios:getting-started
---

# Change notifications for Cloud communication resources in Microsoft Graph

Microsoft Graph API can be used to subscribe to changes on a resource. Subscription allows users to receive notifications via [webhooks](/graph/api/resources/webhooks). This provides applications the ability to run business logic without having to make separate API calls to fetch changed resources. Fewer required API calls benefits applications in larger scale scenarios when managing resources. To subscribe to change notifications of Cloud communication resources, first create a [subscription](/graph/api/resources/subscription).

## Creating subscription

Subscription on eligible cloud communication resources are available through Microsoft Graph API.

The following outlines cloud communication resource types that are supported and on which Microsoft Graph API versions.

| Resource           | Microsoft Graph API versions |
| :--------------------| :--------------------|
| [callrecords](/graph/api/resources/callrecords-api-overview) | v1, beta |
| [onlinemeeting](/graph/api/resources/onlinemeeting) | beta |
| [presence](/graph/api/resources/presence) | v1, beta |

### Request example
```http
POST https://graph.microsoft.com/{Graph API version}/subscriptions
Content-type: application/json

{
   "changeType": "created",
   "notificationUrl": "{Notification url}",
   "resource": "{Cloud communication resource}",
   "expirationDateTime": "{Subscription expiration time}",
   "clientState": "{client state value}",
}
```
The **resource** property in the creation payload can exist in the following forms for cloud communication resources.

| Resource | Examples |
| :--------| :--------|
| callRecords| `communications/callRecords` |
| online meeting | `/communications/onlineMeetings/?$filter=JoinWebUrl eq '{JoinWebUrl}'` |
| presence | `/communications/presences/{id}` (single user), `/communications/presences?$filter=id in ('{id}','{id}',…)` (multiple users) | 


For more details on subscription creation, see [Create subscription](/graph/api/subscription-post-subscriptions).

### Encrypted resource data

**online meeting** and **presence** resources support encrypted resource data. See [Set up change notifications with resource data](webhooks-with-resource-data.md) for more details about this use case.

## Renewing subscriptions

Subscription are only maintained for a certain period of time. For details for each resource, see [maximum expiration time](/graph/api/resources/subscription#maximum-length-of-subscription-per-resource-type).
Subscriptions must be renewed periodically by using the [Update subscription API](/graph/api/subscription-update) to prevent deletion upon expiry.

## Other subscription operations

Microsoft Graph API also supports the following actions on subscriptions to change notifications, see
- [Get](/graph/api/subscription-get) existing subscription.
- [Delete](/graph/api/subscription-delete) existing subscription.

See [Use the Microsoft Graph API to get change notifications](/graph/api/resources/webhooks) for details surrounding the API.

## Create an application to listen to notifications

For information about how to listen for Microsoft Graph notifications, see [Set up notifications for changes in user data – Code Samples](./webhooks.md#code-samples).

## See also
- [Microsoft Graph change notifications](webhooks.md)
- [Set up change notifications that include resource data](webhooks-with-resource-data.md)
- [Call records resource](/graph/api/resources/callrecords-api-overview)
- [Presence resource](/graph/api/resources/presence)
- [Online meeting resource](/graph/api/resources/onlinemeeting)