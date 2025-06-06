---
title: "emailNotificationsSetting resource type"
description: "Represents the Email Setting of Multi Admin Notifications"
author: "Vassu05"
ms.date: 05/29/2025
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: resourcePageType
---

# emailNotificationsSetting resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the Email Setting of Multi Admin Notifications


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/emailnotificationssetting-get.md)|[emailNotificationsSetting](../resources/emailnotificationssetting.md)|Read the properties and relationships of an emailNotificationsSetting object.|
|[Update](../api/emailnotificationssetting-update.md)|[emailNotificationsSetting](../resources/emailnotificationssetting.md)|Update the properties of an emailNotificationsSetting object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|additionalEvents|notificationEventsType|Represents whether you want to opt for additional policy and restore updates. The possible values are: `none`, `restoreAndPolicyUpdates`, `unknownFutureValue`.|
|isEnabled|Boolean|Represents whether notifications are enabled or not.|
|recipients|[notificationRecipients](../resources/notificationrecipients.md)|List of recipients.|

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
  "id": "String (identifier)",
  "isEnabled": "Boolean",
  "additionalEvents": "String",
  "recipients": {
    "@odata.type": "microsoft.graph.notificationRecipients"
  }
}
```

