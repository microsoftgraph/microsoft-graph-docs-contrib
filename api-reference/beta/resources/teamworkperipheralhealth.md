---
title: "teamworkPeripheralHealth resource type"
description: "Represents the health details about a particular peripheral of a device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkPeripheralHealth resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the health details about a particular peripheral of a [teamworkDevice](../resources/teamworkdevice.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|connection|[teamworkConnection](../resources/teamworkconnection.md)|The connected state and time since the peripheral was connected to the device.|
|isOptional|Boolean|`True` if the peripheral is optional. Used for health computation.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|peripheral|[teamworkPeripheral](../resources/teamworkperipheral.md)|Information about the peripheral.|

## JSON representation
The following is a JSON representation of the resource.
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

