---
title: "aadUserNotificationRecipient resource type"
description:  Represents a Microsoft Entra user recipient of a notification sent in a Microsoft Teams activity feed.
author: RamjotSingh
ms.localizationpriority: medium
ms.subservice: teams
doc_type: resourcePageType
ms.date: 07/22/2024
---

# aadUserNotificationRecipient resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft Entra user recipient of a notification sent in a Microsoft Teams activity feed.

Inherits from [teamworkNotificationRecipient](teamworknotificationrecipient.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|userId|String|Microsoft Entra user identifier. Use the [List users](../api/user-list.md) method to get this ID.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.aadUserNotificationRecipient"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.aadUserNotificationRecipient",
  "userId": "String"
}
```
