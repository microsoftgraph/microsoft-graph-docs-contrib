---
title: "teamworkConfiguredPeripheral resource type"
description: "Details of configured peripheral of a device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkConfiguredPeripheral resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details of configured peripheral of a device.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isOptional|Boolean|True if current peripheral is optional. Also used to calculate health state for the device.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|peripheral|[teamworkPeripheral](../resources/teamworkperipheral.md)|More information about the peripheral.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkConfiguredPeripheral"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkConfiguredPeripheral",
  "isOptional": "Boolean"
}
```

