---
title: "plannerChecklistRequirement resource type"
description: "Represents a checklist completion requirement on a plannerTask."
author: "prasad5596"
ms.localizationpriority: medium
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerChecklistRequirement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a checklist completion requirement on a [plannerTask](plannertask.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|requiredChecklistItemIds|String collection|A collection of required [plannerChecklistItems](plannerchecklistitems.md) identifiers to complete the [plannerTask](plannertask.md).|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

<!--{
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerChecklistRequirement"
}-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerChecklistRequirement",
  "requiredChecklistItemIds": ["String"]
}
```
