---
title: "plannerTaskPropertyRule resource type"
description: "**TODO: Add Description**"
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# plannerTaskPropertyRule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the specific restrictions that apply to editing a [plannerTask](../resources/plannertask.md). See [Planner Task Rules](planner-task-rules-overview.md) for more information on how to use this object.


Inherits from [plannerPropertyRule](../resources/plannerpropertyrule.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appliedCategories|[plannerFieldRules](../resources/plannerfieldrules.md)|Rules and restrictions for applied categories. This value does not currently support overrides. Accepted values for the defaultRule and individual overrides are `allow`, `block`.|
|assignments|[plannerFieldRules](../resources/plannerfieldrules.md)|Rules and restrictions for assignments. Allowed overrides are `userCreated` and `applicationCreated`. Accepted values for the defaultRule and individual overrides are `allow`, `add`, `addSelf`, `addOther`, `remove`, `removeSelf`, `removeOther`, `block`.|
|checkLists|[plannerFieldRules](../resources/plannerfieldrules.md)|Rules and restrictions for checklist. Allowed overrides are `userCreated` and `applicationCreated`. Accepted values for the defaultRule and individual overrides are `allow`, `add`, `remove`, `update`, `check`, `reorder`, `block`.|
|delete|String collection|Rules and restrictions for deleting the task. Accepted values are `allow` and `block`.|
|dueDate|String collection|Rules and restrictions for changing the due date of the task. Accepted values are `allow` and `block`.|
|move|String collection|Rules and restrictions for moving the task between buckets or plans. Accepted values are `allow`, `moveBetweenPlans`, `moveBetweenBuckets` and `block`.|
|notes|String collection|Rules and restrictions for changing notes of the task. Accepted values are `allow` and `block`.|
|order|String collection|Rules and restrictions for changing order of the task. Accepted values are `allow` and `block`.|
|percentComplete|String collection|Rules and restrictions for changing completion percentage of the task. Accepted values are `allow`, `setToComplete`, `setToNotStarted`, `setToInProgress` and `block`.|
|previewType|String collection|Rules and restrictions for changing the poreview type of the task. Accepted values are `allow` and `block`.|
|priority|String collectionRules and restrictions for changing the priority of the task. Accepted values are `allow` and `block`.|
|references|[plannerFieldRules](../resources/plannerfieldrules.md)|Rules and restrictions for references. Allowed overrides are `userCreated` and `applicationCreated`. Accepted values for the defaultRule and individual overrides are `allow`, `add`, `remove`, `block`.|
|ruleKind|plannerRuleKind|Must be set to `taskRule`. Inherited from [plannerPropertyRule](../resources/plannerpropertyrule.md).The possible values are: `taskRule`, `bucketRule`, `planRule`, `unknownFutureValue`.|
|startDate|String collection|Rules and restrictions for changing the start date of the task. Accepted values are `allow` and `block`.|
|title|String collection|Rules and restrictions for changing the title of the task. Accepted values are `allow` and `block`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerTaskPropertyRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerTaskPropertyRule",
  "ruleKind": "String",
  "move": [
    "String"
  ],
  "delete": [
    "String"
  ],
  "title": [
    "String"
  ],
  "notes": [
    "String"
  ],
  "references": {
    "@odata.type": "microsoft.graph.plannerFieldRules"
  },
  "checkLists": {
    "@odata.type": "microsoft.graph.plannerFieldRules"
  },
  "priority": [
    "String"
  ],
  "startDate": [
    "String"
  ],
  "dueDate": [
    "String"
  ],
  "percentComplete": [
    "String"
  ],
  "assignments": {
    "@odata.type": "microsoft.graph.plannerFieldRules"
  },
  "order": [
    "String"
  ],
  "appliedCategories": {
    "@odata.type": "microsoft.graph.plannerFieldRules"
  },
  "previewType": [
    "String"
  ]
}
```

