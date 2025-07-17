---
title: "changeNotification resource type"
description: "Represents the change notification sent to the subscriber (app) of a Microsoft Graph subscription."
ms.localizationpriority: medium
author: "keylimesoda"
doc_type: resourcePageType
ms.subservice: change-notifications
ms.date: 12/20/2024
---

# changeNotification resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the notification sent to the subscriber (app) of a [Microsoft Graph subscription](../resources/subscription.md). All the properties of this resource are read-only.

For details, see [Use Microsoft Graph to get change notifications](change-notifications-api-overview.md).

## Methods

None.

## Properties

| Property | Type | Description |
|:---------|:-----|:------------|
| changeType | changeType | Indicates the type of change that will raise the change notification. The supported values are: `created`, `updated`, `deleted`. Required.|
| clientState | string | Value of the **clientState** property sent specified in the subscription request (if any). The maximum length is 255 characters. The client can check whether the change notification came from the service by comparing the values of the **clientState** property. The value of the **clientState** property sent with the subscription is compared with the value of the **clientState** property received with each change notification. Optional. |
| encryptedContent | [changeNotificationEncryptedContent](changenotificationencryptedcontent.md) | (Preview) Encrypted content attached with the change notification. Only provided if **encryptionCertificate** and **includeResourceData** were defined during the subscription request and if the resource supports it. Optional. |
| id | string | Unique ID for the notification. Optional. |
| lifecycleEvent | lifecycleEventType | The type of lifecycle notification if the current notification is a lifecycle notification. Optional. Supported values are `missed`, `subscriptionRemoved`, `reauthorizationRequired`. Optional. |
| resource | string | The URI of the resource that emitted the change notification relative to `https://graph.microsoft.com`. Required. |
| resourceData | [resourceData](resourcedata.md) | The content of this property depends on the type of resource being subscribed to. Optional. |
| subscriptionExpirationDateTime | DateTimeOffset | The expiration time for the subscription. Required. |
| subscriptionId | Guid | The unique identifier of the subscription that generated the notification. Required.|
| tenantId | Guid | The unique identifier of the tenant from which the change notification originated. Required.|

## Relationships

None.


## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.changeNotification"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.changeNotification",
  "id": "String (identifier)",
  "subscriptionId": "Guid",
  "subscriptionExpirationDateTime": "String (timestamp)",
  "clientState": "String",
  "changeType": "String",
  "resource": "String",
  "tenantId": "Guid",
  "encryptedContent": {
    "@odata.type": "microsoft.graph.changeNotificationEncryptedContent"
  },
  "lifecycleEvent": "String",
  "resourceData": {
    "@odata.type": "microsoft.graph.resourceData"
  }
}
```

<!-- uuid: 15ee1d1f-af7b-42d9-885b-9d00db065dd9
2020-05-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "change notification resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


