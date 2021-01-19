---
title: "plannerRoster resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# plannerRoster resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List plannerRosters](../api/plannerroster-list.md)|[plannerRoster](../resources/plannerroster.md) collection|Get a list of the [plannerRoster](../resources/plannerroster.md) objects and their properties.|
|[Create plannerRoster](../api/plannerroster-create.md)|[plannerRoster](../resources/plannerroster.md)|Create a new [plannerRoster](../resources/plannerroster.md) object.|
|[Get plannerRoster](../api/plannerroster-get.md)|[plannerRoster](../resources/plannerroster.md)|Read the properties and relationships of a [plannerRoster](../resources/plannerroster.md) object.|
|[Update plannerRoster](../api/plannerroster-update.md)|[plannerRoster](../resources/plannerroster.md)|Update the properties of a [plannerRoster](../resources/plannerroster.md) object.|
|[Delete plannerRoster](../api/plannerroster-delete.md)|None|Deletes a [plannerRoster](../resources/plannerroster.md) object.|
|[List members](../api/plannerroster-list-members.md)|[plannerRosterMember](../resources/plannerrostermember.md) collection|Get the plannerRosterMember resources from the members navigation property.|
|[Create plannerRosterMember](../api/plannerroster-post-members.md)|[plannerRosterMember](../resources/plannerrostermember.md)|Create a new plannerRosterMember object.|
|[List plans](../api/plannerroster-list-plans.md)|[plannerPlan](../resources/plannerplan.md) collection|Get the plannerPlan resources from the plans navigation property.|
|[Add plannerPlan](../api/plannerroster-post-plans.md)|[plannerPlan](../resources/plannerplan.md)|Add plans by posting to the plans collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|members|[plannerRosterMember](../resources/plannerrostermember.md) collection|**TODO: Add Description**|
|plans|[plannerPlan](../resources/plannerplan.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.plannerRoster",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerRoster",
  "id": "String (identifier)"
}
```

