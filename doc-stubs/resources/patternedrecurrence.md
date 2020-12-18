---
title: "patternedRecurrence resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# patternedRecurrence resource type

Namespace: microsoft.graph

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|pattern|[recurrencePattern](../resources/recurrencepattern.md)|**TODO: Add Description**|
|range|[recurrenceRange](../resources/recurrencerange.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.patternedRecurrence"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.patternedRecurrence",
  "pattern": {
    "@odata.type": "microsoft.graph.recurrencePattern"
  },
  "range": {
    "@odata.type": "microsoft.graph.recurrenceRange"
  }
}
```

