---
title: "plannerUser resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# plannerUser resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [plannerDelta](../resources/plannerdelta.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List plannerUsers](../api/planneruser-list.md)|[plannerUser](../resources/planneruser.md) collection|Get a list of the [plannerUser](../resources/planneruser.md) objects and their properties.|
|[Create plannerUser](../api/planneruser-create.md)|[plannerUser](../resources/planneruser.md)|Create a new [plannerUser](../resources/planneruser.md) object.|
|[Get plannerUser](../api/planneruser-get.md)|[plannerUser](../resources/planneruser.md)|Read the properties and relationships of a [plannerUser](../resources/planneruser.md) object.|
|[Update plannerUser](../api/planneruser-update.md)|[plannerUser](../resources/planneruser.md)|Update the properties of a [plannerUser](../resources/planneruser.md) object.|
|[Delete plannerUser](../api/planneruser-delete.md)|None|Deletes a [plannerUser](../resources/planneruser.md) object.|
|[List rosterPlans](../api/planneruser-list-rosterplans.md)|[plannerPlan](../resources/plannerplan.md) collection|Get the plannerPlan resources from the rosterPlans navigation property.|
|[Add plannerPlan](../api/planneruser-post-rosterplans.md)|[plannerPlan](../resources/plannerplan.md)|Add rosterPlans by posting to the rosterPlans collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|favoritePlanReferences|[plannerFavoritePlanReferenceCollection](../resources/plannerfavoriteplanreferencecollection.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|recentPlanReferences|[plannerRecentPlanReferenceCollection](../resources/plannerrecentplanreferencecollection.md)|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|all|[plannerDelta](../resources/plannerdelta.md) collection|**TODO: Add Description**|
|favoritePlans|[plannerPlan](../resources/plannerplan.md) collection|**TODO: Add Description**|
|plans|[plannerPlan](../resources/plannerplan.md) collection|**TODO: Add Description**|
|recentPlans|[plannerPlan](../resources/plannerplan.md) collection|**TODO: Add Description**|
|rosterPlans|[plannerPlan](../resources/plannerplan.md) collection|**TODO: Add Description**|
|tasks|[plannerTask](../resources/plannertask.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.plannerUser",
  "baseType": "microsoft.graph.plannerDelta",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerUser",
  "id": "String (identifier)",
  "favoritePlanReferences": {
    "@odata.type": "microsoft.graph.plannerFavoritePlanReferenceCollection"
  },
  "recentPlanReferences": {
    "@odata.type": "microsoft.graph.plannerRecentPlanReferenceCollection"
  }
}
```

