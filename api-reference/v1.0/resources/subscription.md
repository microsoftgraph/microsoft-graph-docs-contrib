---
title: "subscription resource type"
description: "Represents a subscription that allows a client app to receive change notifications about changes to data in Microsoft Graph."
ms.localizationpriority: high
author: "keylimesoda"
ms.subservice: change-notifications
doc_type: resourcePageType
ms.date: 06/10/2024
---

# subscription resource type

Namespace: microsoft.graph

Represents a subscription that allows a client app to receive [change notifications](../resources/changenotificationcollection.md) about changes to data in Microsoft Graph.

For more information about subscriptions and change notifications, including resources that support change notifications, see [Set up notifications for changes in resource data](change-notifications-api-overview.md).

## Methods

| Method | Return Type | Description |
|:-------|:------------|:------------|
| [List](../api/subscription-list.md) | [subscription](subscription.md) | Lists active subscriptions. |
| [Create](../api/subscription-post-subscriptions.md) | [subscription](subscription.md) | Subscribes a listener application to receive change notifications when Microsoft Graph data changes. When a susbcription is created and valdiated sucessfully, Microsoft Graph sends the app at least one [changeNotificationCollection](../resources/changenotificationcollection.md) object every time there's a change in the subscribed resource. |
| [Get](../api/subscription-get.md) | [subscription](subscription.md) | Reads properties and relationships of subscription object. |
| [Update](../api/subscription-update.md) | [subscription](subscription.md) | Updates a subscription expiration time for renewal and/or updates the notificationUrl for delivery. |
| [Delete](../api/subscription-delete.md) | None | Deletes a subscription object. |
|[Reauthorize](../api/subscription-reauthorize.md)|None|Reauthorize a subscription when you receive a **reauthorizationRequired** challenge. |

## Properties

| Property | Type | Description |
|---|---|---|
| applicationId | String | Optional. Identifier of the application used to create the subscription. Read-only. |
| changeType | String | Required. Indicates the type of change in the subscribed resource that raises a change notification. The supported values are: `created`, `updated`, `deleted`. Multiple values can be combined using a comma-separated list. <br><br>**Note:** <li> Drive root item and list change notifications support only the `updated` changeType. <li>[User](../resources/user.md) and [group](../resources/user.md) change notifications support `updated` and `deleted` changeType. Use `updated` to receive notifications when user or group is created, updated, or soft deleted. Use `deleted` to receive notifications when user or group is permanently deleted. |
| clientState | String | Optional. Specifies the value of the `clientState` property sent by the service in each change notification. The maximum length is 128 characters. The client can check that the change notification came from the service by comparing the value of the `clientState` property sent with the subscription with the value of the `clientState` property received with each change notification. |
| creatorId | String | Optional. Identifier of the user or service principal that created the subscription. If the app used delegated permissions to create the subscription, this field contains the ID of the signed-in user the app called on behalf of. If the app used application permissions, this field contains the ID of the service principal corresponding to the app. Read-only. |
| encryptionCertificate | String | Optional. A base64-encoded representation of a certificate with a public key used to encrypt resource data in change notifications. Optional but required when **includeResourceData** is `true`. |
| encryptionCertificateId | String | Optional. A custom app-provided identifier to help identify the certificate needed to decrypt resource data. |
| expirationDateTime | DateTimeOffset | Required. Specifies the date and time when the webhook subscription expires. The time is in UTC, and can be an amount of time from subscription creation that varies for the resource subscribed to. Any value under 45 minutes after the time of the request is automatically set to 45 minutes after the request time. For the maximum supported subscription length of time, see [Subscription lifetime](#subscription-lifetime). |
| id | String | Optional. Unique identifier for the subscription. Read-only. |
| includeResourceData | Boolean | Optional. When set to `true`, change notifications [include resource data](/graph/change-notifications-with-resource-data) (such as content of a chat message). |
| latestSupportedTlsVersion | String | Optional. Specifies the latest version of Transport Layer Security (TLS) that the notification endpoint, specified by **notificationUrl**, supports. The possible values are: `v1_0`, `v1_1`, `v1_2`, `v1_3`. </br></br>For subscribers whose notification endpoint supports a version lower than the currently recommended version (TLS 1.2), specifying this property by a set [timeline](https://developer.microsoft.com/graph/blogs/microsoft-graph-subscriptions-deprecating-tls-1-0-and-1-1/) allows them to temporarily use their deprecated version of TLS before completing their upgrade to TLS 1.2. For these subscribers, not setting this property per the timeline would result in subscription operations failing. </br></br>For subscribers whose notification endpoint already supports TLS 1.2, setting this property is optional. In such cases, Microsoft Graph defaults the property to `v1_2`. |
| lifecycleNotificationUrl | String | Required for Teams resources if  the `expirationDateTime` value is more than 1 hour from now; optional otherwise. The URL of the endpoint that receives lifecycle notifications, including `subscriptionRemoved`, `reauthorizationRequired`, and `missed` notifications. This URL must make use of the HTTPS protocol. For more information, see [Reduce missing subscriptions and change notifications](/graph/change-notifications-lifecycle-events). |
| notificationQueryOptions | String | Optional. OData query options for specifying value for the targeting resource. Clients receive notifications when resource reaches the state matching the query options provided here. With this new property in the subscription creation payload along with all existing properties, Webhooks deliver notifications whenever a resource reaches the desired state mentioned in the notificationQueryOptions property. For example, when the print job is completed or when a print job resource `isFetchable` property value becomes `true` etc. <br/><br/> Supported only for Universal Print Service. For more information, see [Subscribe to change notifications from cloud printing APIs using Microsoft Graph](/graph/universal-print-webhook-notifications).  |
| notificationUrl | String | Required. The URL of the endpoint that receives the change notifications. This URL must make use of the HTTPS protocol. Any query string parameter included in the notificationUrl property is included in the HTTP POST request when Microsoft Graph sends the change notifications.|
| notificationUrlAppId | String | Optional. The app ID that the subscription service can use to generate the validation token. The value allows the client to validate the authenticity of the notification received. |
| resource | String | Required. Specifies the resource that is monitored for changes. Don't include the base URL (`https://graph.microsoft.com/v1.0/`). See the possible resource path [values](change-notifications-api-overview.md) for each supported resource. |

### Subscription lifetime

Subscriptions have a limited lifetime. Apps need to renew their subscriptions before the expiration time; otherwise, they need to create a new subscription. Apps can also unsubscribe at any time to stop getting change notifications.

Additionally, any request with expirationDateTime set to under 45 minutes after the time of the request is automatically set to 45 minutes after the request time. 

The following table shows the maximum expiration times for subscriptions per resource in Microsoft Graph.

[!INCLUDE [change-notifications-subscription-lifetime](../../../concepts/includes/change-notifications-subscription-lifetime.md)]

### Latency

[!INCLUDE [change-notifications-delivery-latency](../../../concepts/includes/change-notifications-delivery-latency.md)]

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [],
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.subscription",
  "@odata.annotations": [
    {
      "capabilities": {
        "skippable": false,
        "toppable": false,
        "countable": false,
        "expandable": false,
        "filterable": false,
        "referenceable": false,
        "selectable": false,
        "sortable": false
      }
    }
  ]
}-->

``` json
{
  "@odata.type": "#microsoft.graph.subscription",
  "applicationId": "String",
  "changeType": "String",
  "clientState": "String",
  "creatorId": "String",
  "encryptionCertificate": "String",
  "encryptionCertificateId": "String",
  "expirationDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "includeResourceData": "Boolean",
  "latestSupportedTlsVersion": "String",
  "lifecycleNotificationUrl": "String",
  "notificationQueryOptions": "String",
  "notificationUrl": "String",
  "notificationUrlAppId": "String",
  "resource": "String"
}
```
