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

Contains information about the relationship of a [plannerPlan](plannerplan.md) to a user experience outside of Planner. Plans in Planner can be surfaced in or synced with other experiences to track work in the context of that experience. Data in the plannerExternalPlanSource can be displayed in a user interface, used for sync information utilized by external services, or used to simply point to where a plan was created in an external service. The combination of contextScenarioId and externalObjectId is enforced to be unique within a tenant. If creation is called with an existing contextScenarioId and externalObjectId, the existing object is returned with no modifications. This type derives from [plannerPlanCreation](plannerPlanCreation.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|creationSourceKind|plannerCreationSourceKind|Specifies what kind of creation source the plan is created with. The possible values are: `external`, `publication` and `unknownFutureValue`. The value of this property will be `external`. Inherited from [plannerPlanCreation](plannerPlanCreation.md).|
|contextScenarioId|String| Nullable. An identifier for the scenario associated with this external source. This should be in reverse DNS format. For example, Contoso company owned application for customer support would have a value like "com.constoso.customerSupport".|
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
  "creationSourceKind": "String-value",
  "externalObjectId": "String-value",
  "externalContextId": "String-value",
  "contextScenarioId": "String-value",
}
```



