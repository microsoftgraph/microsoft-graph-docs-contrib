---
title: "plannerAssignment resource type"
description: "The **plannerAssignment** resource represents the assignment of a task to a user. This type is used in the open type plannerAssignments."
ms.localizationpriority: medium
author: "TarkanSevilmis"
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 07/26/2024
---

# plannerAssignment resource type

Namespace: microsoft.graph

The **plannerAssignment** resource represents the assignment of a task to a user. This type is used in the open type [plannerAssignments](plannerassignments.md).


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|assignedBy|[identitySet](identityset.md)|The identity of the user that performed the assignment of the task, that is, the assignor.|
|assignedDateTime|DateTimeOffset|The time when the task was assigned. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|orderHint|String|Hint used to order assignees in a task. The format is defined as outlined [here](planner-order-hint-format.md).|

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerAssignment"
}-->

```json
{
  "assignedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "assignedDateTime": "String (timestamp)",
  "orderHint": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plannerAssignment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

