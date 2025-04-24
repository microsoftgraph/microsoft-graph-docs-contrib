---
title: "recommendationConfiguration resource type"
description: "Represents the configuration for recommendation notifications."
author: "mbrndiar"
ms.date: 04/23/2025
ms.localizationpriority: medium
ms.subservice: "entra-monitoring-health"
doc_type: resourcePageType
---

# recommendationConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the configuration for recommendation notifications. This resource type is used to manage the notification settings for recommendations in Microsoft Entra ID.
It allows you to enable or disable notifications for recommendations, which can help organizations stay informed about important security and compliance issues.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/recommendationconfiguration-get.md)|[recommendationConfiguration](../resources/recommendationconfiguration.md)|Read the properties of a recommendationConfiguration object.|
|[Update](../api/recommendationconfiguration-update.md)|None|Update the properties of a recommendationConfiguration object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|isNotificationEnabled|Boolean|Indicates whether notifications for recommendations are enabled.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.recommendationConfiguration",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.recommendationConfiguration",
  "isNotificationEnabled": "Boolean"
}
```
