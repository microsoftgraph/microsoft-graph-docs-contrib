---
title: "teamworkConfiguredPeripheral resource type"
description: "Represents the details of the configured peripheral of a device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkConfiguredPeripheral resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of the configured peripheral of a [teamworkDevice](../resources/teamworkdevice.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isOptional|Boolean|`True` if the current peripheral is optional. This property is also used to calculate the health state for the device.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|peripheral|[teamworkPeripheral](../resources/teamworkperipheral.md)|Details about the peripherals attached to the device.|

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

