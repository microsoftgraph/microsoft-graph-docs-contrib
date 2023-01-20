---
title: "plannerChecklistRequirement resource type"
description: "Represents a checklist completion requirement on task."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerChecklistRequirement resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a checklist completion requirement on [plannerTask](plannerTask.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|requiredChecklistItemIds|`Collection(Edm.String)`|Collection of identifiers of [plannerChecklistItems](plannerchecklistitems.md) that are required to be checked to be able to complete the [plannerTask](plannertask.md).|


## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.

``` json
{
  "@odata.type": "#microsoft.graph.plannerChecklistRequirement",
  "requiredChecklistItemIds": ["12345"] // checklist item id collection
}
```
