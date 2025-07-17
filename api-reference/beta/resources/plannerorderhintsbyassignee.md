---
title: "plannerOrderHintsByAssignee resource type"
description: "Contains ordering hints for assignees in a plannerTask resource, to indicate the order of the task in Assigned To view of the Task Board."
ms.localizationpriority: medium
author: "TarkanSevilmis"
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 11/08/2024
---

# plannerOrderHintsByAssignee resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains [ordering hints](planner-order-hint-format.md) for assignees in a [plannerTask](plannertask.md) resource, to indicate the order of the task in Assigned To view of the Task Board.
This type is an open type. The properties are the IDs of users assigned to the task, and the values are order hints.

## Properties
Properties of an Open Type can be defined by the client. In this case, the client must provide IDs of users assigned to the task as property names, and a valid [order hint](planner-order-hint-format.md) as the value.
Properties can't be removed from this type. The service will automatically remove values as the assignments on the containing [plannerTask](plannertask.md) are updated.

Example:

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerOrderHintsByAssignee",
  "openType": true
}-->

```json
{
  "ca2a1df2-e36b-4987-9f6b-0ea462f4eb47": "String",
  "4e98f8f1-bb03-4015-b8e0-19bb370949d8": "String"
}

```

## Relationships

None.

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "plannerOrderHintsByAssignee resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


