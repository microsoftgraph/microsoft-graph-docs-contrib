---
title: "teamworkConfiguredPeripheral resource type"
description: "Represents the details about a peripheral device configured for a Microsoft Teams-enabled device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkConfiguredPeripheral resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details about a peripheral device configured for a Microsoft Teams-enabled [device](../resources/teamworkdevice.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isOptional|Boolean|`True` if the current peripheral is optional. If set to `false`, this property is also used as part of the calculation of the health state for the device.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|peripheral|[teamworkPeripheral](../resources/teamworkperipheral.md)|Details about the peripheral devices attached.|

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

