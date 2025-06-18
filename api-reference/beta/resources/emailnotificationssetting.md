---
title: "emailNotificationsSetting resource type"
description: "Represents the email settings for multi-admin notifications."
author: "Vassu05"
ms.date: 05/29/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# emailNotificationsSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the email settings for multi-admin notifications.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/emailnotificationssetting-get.md)|[emailNotificationsSetting](../resources/emailnotificationssetting.md)|Read the properties and relationships of an [emailNotificationsSetting](../resources/emailnotificationssetting.md) object.|
|[Update](../api/emailnotificationssetting-update.md)|[emailNotificationsSetting](../resources/emailnotificationssetting.md)|Update the properties of an [emailNotificationsSetting](../resources/emailnotificationssetting.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|additionalEvents|notificationEventsType|Indicates whether to opt in to additional policy and restore updates. Possible values: `none`, `restoreAndPolicyUpdates`, `unknownFutureValue`.|
|isEnabled|Boolean|Indicates whether notifications are enabled.|
|recipients|[notificationRecipients](../resources/notificationrecipients.md)|A list of recipients who receive the notifications.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.emailNotificationsSetting",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.emailNotificationsSetting",
  "additionalEvents": "String",
  "isEnabled": "Boolean",
  "recipients": {"@odata.type": "microsoft.graph.notificationRecipients"}
}
```
