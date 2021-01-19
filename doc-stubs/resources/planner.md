---
title: "planner resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# planner resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get planner](../api/planner-get.md)|[planner](../resources/planner.md)|Read the properties and relationships of a [planner](../resources/planner.md) object.|
|[Update planner](../api/planner-update.md)|[planner](../resources/planner.md)|Update the properties of a [planner](../resources/planner.md) object.|
|[List rosters](../api/planner-list-rosters.md)|[plannerRoster](../resources/plannerroster.md) collection|Get the plannerRoster resources from the rosters navigation property.|
|[Create plannerRoster](../api/planner-post-rosters.md)|[plannerRoster](../resources/plannerroster.md)|Create a new plannerRoster object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|buckets|[plannerBucket](../resources/plannerbucket.md) collection|**TODO: Add Description**|
|plans|[plannerPlan](../resources/plannerplan.md) collection|**TODO: Add Description**|
|rosters|[plannerRoster](../resources/plannerroster.md) collection|**TODO: Add Description**|
|tasks|[plannerTask](../resources/plannertask.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.planner",
  "baseType": "",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.planner"
}
```

