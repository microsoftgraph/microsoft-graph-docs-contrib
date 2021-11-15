---
title: "teamworkPeripheralHealth resource type"
description: "Details of a peripheral's health."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkPeripheralHealth resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Health details of particular peripheral of a device.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|connection|[teamworkConnection](../resources/teamworkconnection.md)|Connected state and time since connected of the peripheral.|
|isOptional|Boolean|True if peripheral is optional. Used for health computation.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|peripheral|[teamworkPeripheral](../resources/teamworkperipheral.md)|Info about the peripheral.|

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

