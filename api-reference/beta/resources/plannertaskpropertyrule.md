---
title: "plannerTaskPropertyRule resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# plannerTaskPropertyRule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [plannerPropertyRule](../resources/plannerpropertyrule.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|appliedCategories|[plannerFieldRules](../resources/plannerfieldrules.md)|**TODO: Add Description**|
|assignments|[plannerFieldRules](../resources/plannerfieldrules.md)|**TODO: Add Description**|
|checkLists|[plannerFieldRules](../resources/plannerfieldrules.md)|**TODO: Add Description**|
|delete|String collection|**TODO: Add Description**|
|dueDate|String collection|**TODO: Add Description**|
|move|String collection|**TODO: Add Description**|
|notes|String collection|**TODO: Add Description**|
|order|String collection|**TODO: Add Description**|
|percentComplete|String collection|**TODO: Add Description**|
|previewType|String collection|**TODO: Add Description**|
|priority|String collection|**TODO: Add Description**|
|references|[plannerFieldRules](../resources/plannerfieldrules.md)|**TODO: Add Description**|
|ruleKind|plannerRuleKind|**TODO: Add Description** Inherited from [plannerPropertyRule](../resources/plannerpropertyrule.md).The possible values are: `taskRule`, `bucketRule`, `planRule`, `unknownFutureValue`.|
|startDate|String collection|**TODO: Add Description**|
|title|String collection|**TODO: Add Description**|

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

