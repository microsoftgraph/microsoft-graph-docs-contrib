---
title: "teamworkPeripheralHealth resource type"
description: "Represents health details for a peripheral device attached to a Microsoft Teams-enabled device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamworkPeripheralHealth resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents health details for a peripheral device attached to a Microsoft Teams-enabled [device](../resources/teamworkdevice.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|connection|[teamworkConnection](../resources/teamworkconnection.md)|The connected state and time since the peripheral device was connected.|
|isOptional|Boolean|`True` if the peripheral is optional. Used for health computation.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|peripheral|[teamworkPeripheral](../resources/teamworkperipheral.md)|Information about the peripheral device.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkPeripheralHealth"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkPeripheralHealth",
  "connection": {
    "@odata.type": "microsoft.graph.teamworkConnection"
  },
  "isOptional": "Boolean"
}
```

