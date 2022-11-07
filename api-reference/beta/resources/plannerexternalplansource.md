---
title: "plannerExternalPlanSource resource type"
description: "Contains information about the relationship of a plannerPlan to a user experience outside of Planner."
author: "DanluCui"
ms.localizationpriority: medium
ms.prod: "planner"
doc_type: resourcePageType
---

# plannerExternalPlanSource resource type

Namespace: microsoft.graph

Contains information about the relationship of a [plannerPlan](plannerplan.md) to a user experience outside of Planner. Plans in Planner can be surfaced in or synced with other experiences to track work in the context of that experience. Data in the plannerExternalPlanSource can be displayed in a user interface, used for sync information utilized by external services, or used to simply point to where a plan was created in an external service.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contextScenarioId|String| Nullable. An identifier for the scenario associated with this external source. This will generally take the form of "com.contoso.myapp".|
|externalObjectId|String| Nullable. The id of the entity that an external service associates with a plan.|
|externalContextId|String| Nullable. The id of the external entity's containing entity or context.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerExternalPlanSource"
}
-->
``` json
{
    "@odata.type": "#microsoft.graph.plannerExternalPlanSource",
    "externalObjectId": "String-value",
    "externalContextId": "String-value",
    "contextScenarioId": "String-value",
}
```



