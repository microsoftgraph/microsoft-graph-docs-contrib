---
title: "plannerPlan resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# plannerPlan resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [plannerDelta](../resources/plannerdelta.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List plannerPlans](../api/plannerplan-list.md)|[plannerPlan](../resources/plannerplan.md) collection|Get a list of the [plannerPlan](../resources/plannerplan.md) objects and their properties.|
|[Create plannerPlan](../api/plannerplan-create.md)|[plannerPlan](../resources/plannerplan.md)|Create a new [plannerPlan](../resources/plannerplan.md) object.|
|[Get plannerPlan](../api/plannerplan-get.md)|[plannerPlan](../resources/plannerplan.md)|Read the properties and relationships of a [plannerPlan](../resources/plannerplan.md) object.|
|[Update plannerPlan](../api/plannerplan-update.md)|[plannerPlan](../resources/plannerplan.md)|Update the properties of a [plannerPlan](../resources/plannerplan.md) object.|
|[Delete plannerPlan](../api/plannerplan-delete.md)|None|Deletes a [plannerPlan](../resources/plannerplan.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|container|[plannerPlanContainer](../resources/plannerplancontainer.md)|**TODO: Add Description**|
|contexts|[plannerPlanContextCollection](../resources/plannerplancontextcollection.md)|**TODO: Add Description**|
|createdBy|[identitySet](../resources/identityset.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|owner|String|**TODO: Add Description**|
|title|String|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|buckets|[plannerBucket](../resources/plannerbucket.md) collection|**TODO: Add Description**|
|details|[plannerPlanDetails](../resources/plannerplandetails.md)|**TODO: Add Description**|
|tasks|[plannerTask](../resources/plannertask.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.plannerPlan",
  "baseType": "microsoft.graph.plannerDelta",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerPlan",
  "id": "String (identifier)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "owner": "String",
  "title": "String",
  "contexts": {
    "@odata.type": "microsoft.graph.plannerPlanContextCollection"
  },
  "container": {
    "@odata.type": "microsoft.graph.plannerPlanContainer"
  }
}
```

