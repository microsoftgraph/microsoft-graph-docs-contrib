---
title: "plannerPlanCreation resource type"
description: "Contains information about the origin of the plannerPlan."
author: "DanluCui"
ms.localizationpriority: medium
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerPlanCreation resource type

Namespace: microsoft.graph

The resources that derive from plannerPlanCreation contain information about the origin of the [plannerPlan](plannerplan.md). Apps do not need to know the origin of the plan to be able to work with it; however, some apps can use the additional information to provide specific experiences around these plans. This is the abstract base type of [plannerExternalPlanSource](plannerExternalPlanSource.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|creationSourceKind|plannerCreationSourceKind|Specifies what kind of creation source the plan is created with. The possible values are: `external`, `publication` and `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerPlanCreation"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerPlanCreation",
  "creationSourceKind": "String-value"
}
```

