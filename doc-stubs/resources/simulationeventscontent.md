---
title: "simulationEventsContent resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# simulationEventsContent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|compromisedRate|Double|**TODO: Add Description**|
|events|[simulationEvent](../resources/simulationevent.md) collection|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.simulationEventsContent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.simulationEventsContent",
  "compromisedRate": "Double",
  "events": [
    {
      "@odata.type": "microsoft.graph.simulationEvent"
    }
  ]
}
```

