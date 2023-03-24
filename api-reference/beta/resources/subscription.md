---
title: "subscription resource type"
description: "A subscription allows a client app to receive change notifications about changes to data in Microsoft Graph. Currently, subscriptions are enabled for the following resources:"
ms.localizationpriority: medium
author: "jumasure"
doc_type: resourcePageType
ms.prod: "change-notifications"

---

# subscription resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [todo-deprecate-basetaskapi-sharedfeature](../includes/todo-deprecate-basetaskapi-sharedfeature.md)]

A subscription allows a client app to receive change notifications about changes to data in Microsoft Graph. 

[!INCLUDE [change-notifications-supported-resources](../../../concepts/includes/change-notifications-supported-resources-flat.md)]

For the possible resource path values for each supported resource, see [Use the Microsoft Graph API to get change notifications](webhooks.md). To learn how to use lifecycle notifications, see [Reduce missing subscriptions and change notifications](/graph/webhooks-lifecycle).

## Methods

| Method | Return Type | Description |
|:-------|:------------|:------------|
| [Create subscription](../api/subscription-post-subscriptions.md) | [subscription](subscription.md) | Subscribes a listener application to receive change notifications when Microsoft Graph data changes. |
| [Update subscription](../api/subscription-update.md) | [subscription](subscription.md) | Renew a subscription by updating its expiration time. |
| [List subscriptions](../api/subscription-list.md) | [subscription](subscription.md) | Lists active subscriptions. |
| [Get subscription](../api/subscription-get.md) | [subscription](subscription.md) | Read properties and relationships of subscription object. |
| [Delete subscription](../api/subscription-delete.md) | None | Delete a subscription object. |

## Properties

| Property | Type | Description |
|---|---|---|
| applicationId | String | Optional. Identifier of the application used to create the subscription. Read-only. |
| changeType | String | Required. Indicates the type of change in the subscribed resource that will raise a change notification. The supported values are: `created`, `updated`, `deleted`. Multiple values can be combined using a comma-separated list. <br><br>**Note:** <li> Drive root item and list change notifications support only the `updated` changeType. <li>[User](../resources/user.md) and [group](../resources/user.md) change notifications support `updated` and `deleted` changeType. Use `updated` to receive notifications when user or group is created, updated or soft deleted.  Use `deleted` to receive notifications when user or group is permanently deleted. |
| clientState | String | Required. Specifies the value of the **clientState** property sent by the service in each change notification. The maximum length is 255 characters. The client can check that the change notification came from the service by comparing the value of the **clientState** property sent with the subscription with the value of the **clientState** property received with each change notification. |
| creatorId | String | Optional. Identifier of the user or service principal that created the subscription. If the app used delegated permissions to create the subscription, this field contains the ID of the signed-in user the app called on behalf of. If the app used application permissions, this field contains the ID of the service principal corresponding to the app. Read-only. |
| encryptionCertificate | String | Optional. A base64-encoded representation of a certificate with a public key used to encrypt resource data in change notifications. Optional but required when **includeResourceData** is `true`. |
| encryptionCertificateId | String | Optional. A custom app-provided identifier to help identify the certificate needed to decrypt resource data. Required when **includeResourceData** is `true`. |
| expirationDateTime | DateTimeOffset | Required. Specifies the date and time when the webhook subscription expires. The time is in UTC, and can be an amount of time from subscription creation that varies for the resource subscribed to. For the maximum supported subscription length of time, see [the table below](#maximum-length-of-subscription-per-resource-type). |
| id | String | Optional. Unique identifier for the subscription. Read-only. |
| includeResourceData | Boolean | Optional. When set to `true`, change notifications [include resource data](/graph/webhooks-with-resource-data) (such as content of a chat message). |
| latestSupportedTlsVersion | String | Optional. Specifies the latest version of Transport Layer Security (TLS) that the notification endpoint, specified by **notificationUrl**, supports. The possible values are: `v1_0`, `v1_1`, `v1_2`, `v1_3`. </br></br>For subscribers whose notification endpoint supports a version lower than the currently recommended version (TLS 1.2), specifying this property by a set [timeline](https://developer.microsoft.com/graph/blogs/microsoft-graph-subscriptions-deprecating-tls-1-0-and-1-1/) allows them to temporarily use their deprecated version of TLS before completing their upgrade to TLS 1.2. For these subscribers, not setting this property per the timeline would result in subscription operations failing. </br></br>For subscribers whose notification endpoint already supports TLS 1.2, setting this property is optional. In such cases, Microsoft Graph defaults the property to `v1_2`. |
| lifecycleNotificationUrl | String | Optional. The URL of the endpoint that receives lifecycle notifications, including `subscriptionRemoved`, `reauthorizationRequired`, and `missed` notifications. This URL must make use of the HTTPS protocol. |
| notificationContentType | String | Optional. Desired **content-type** for Microsoft Graph change notifications for supported resource types. The default content-type is `application/json`. |
| notificationQueryOptions | String | Optional.  OData query options for specifying the value for the targeting resource. Clients receive notifications when the resource reaches the state matching the query options provided here. With this new property in the subscription creation payload along with all existing properties, Webhooks will deliver notifications whenever a resource reaches the desired state mentioned in the **notificationQueryOptions** property. For example, when the print job is completed or when a print job resource `isFetchable` property value becomes `true` etc. <br/><br/> Supported only for Universal Print Service. For more information, see [Subscribe to change notifications from cloud printing APIs using Microsoft Graph](/graph/universal-print-webhook-notifications). |
| notificationUrl | String | Required. The URL of the endpoint that receives the change notifications. This URL must make use of the HTTPS protocol. |
| notificationUrlAppId | String | Optional. The app ID that the subscription service can use to generate the validation token. This allows the client to validate the authenticity of the notification received. |
| resource | String | Required. Specifies the resource that will be monitored for changes. Do not include the base URL (`https://graph.microsoft.com/beta/`). See the possible resource path [values](webhooks.md) for each supported resource. |

### Maximum length of subscription per resource type

[!INCLUDE [change-notifications-subscription-lifetime](../../../concepts/includes/change-notifications-subscription-lifetime.md)]

## Relationships

None.

## JSON representation

Here is a JSON representation of the resource.

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
  "id": "String (identifier)",
  "resource": "String",
  "changeType": "String",
  "clientState": "String",
  "notificationUrl": "String",
  "expirationDateTime": "String (timestamp)",
  "applicationId": "String",
  "creatorId": "String",
  "includeResourceData": "Boolean",
  "lifecycleNotificationUrl": "String",
  "encryptionCertificate": "String",
  "encryptionCertificateId": "String",
  "latestSupportedTlsVersion": "String",
  "notificationQueryOptions": "String",
  "notificationContentType": "String",
  "notificationUrlAppId": "String"
}
```
