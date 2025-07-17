---
title: "plannerTask resource type"
description: "Represents a Planner task in Microsoft 365."
ms.localizationpriority: high
author: "TarkanSevilmis"
ms.subservice: "planner"
doc_type: resourcePageType
ms.date: 08/09/2024
---

# plannerTask resource type

Namespace: microsoft.graph

Represents a Planner task in Microsoft 365. A Planner task is contained in a [plan](plannerplan.md) and can be assigned to a [bucket](plannerbucket.md) in a plan. Each task object has a [details](plannertaskdetails.md) object that can contain more information about the task. For more information about relationships between group, plan, and task, See [Use the Planner REST API](planner-overview.md).


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Create](../api/planner-post-tasks.md) | [plannerTask](plannertask.md) |Create **plannerTask** object.|
|[Get](../api/plannertask-get.md) | [plannerTask](plannertask.md) |Read properties and relationships of **plannerTask** object.|
|[Update](../api/plannertask-update.md) | [plannerTask](plannertask.md)	|Update **plannerTask** object. |
|[Delete](../api/plannertask-delete.md) | None |Delete **plannerTask** object. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|activeChecklistItemCount|Int32|Number of checklist items with value set to `false`, representing incomplete items.|
|appliedCategories|[plannerAppliedCategories](plannerappliedcategories.md)|The categories to which the task has been applied. See [applied Categories](plannerappliedcategories.md) for possible values.|
|assigneePriority|String|Hint used to order items of this type in a list view. The format is defined as outlined [here](planner-order-hint-format.md).|
|assignments|[plannerAssignments](plannerassignments.md)|The set of assignees the task is assigned to.|
|bucketId|String|Bucket ID to which the task belongs. The bucket needs to be in the plan that the task is in. It's 28 characters long and case-sensitive. [Format validation](planner-identifiers-disclaimer.md) is done on the service. |
|checklistItemCount|Int32|Number of checklist items that are present on the task.|
|completedBy|[identitySet](identityset.md)|Identity of the user that completed the task.|
|completedDateTime|DateTimeOffset|Read-only. Date and time at which the `'percentComplete'` of the task is set to `'100'`. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|conversationThreadId|String|Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.|
|createdBy|[identitySet](identityset.md)|Identity of the user that created the task.|
|createdDateTime|DateTimeOffset|Read-only. Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|dueDateTime|DateTimeOffset|Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|hasDescription|Boolean|Read-only. Value is `true` if the details object of the task has a nonempty description and `false` otherwise.|
|id|String|Read-only. ID of the task. It's 28 characters long and case-sensitive. [Format validation](planner-identifiers-disclaimer.md) is done on the service.|
|orderHint|String|Hint used to order items of this type in a list view. The format is defined as outlined [here](planner-order-hint-format.md).|
|percentComplete|Int32|Percentage of task completion. When set to `100`, the task is considered completed. |
|planId|String|Plan ID to which the task belongs.|
|previewType|String|This sets the type of preview that shows up on the task. The possible values are: `automatic`, `noPreview`, `checklist`, `description`, `reference`.|
|priority|Int32|Priority of the task. The valid range of values is between `0` and `10`, with the increasing value being lower priority (`0` has the highest priority and `10` has the lowest priority).  Currently, Planner interprets values `0` and `1` as "urgent", `2`, `3` and `4` as "important", `5`, `6`, and `7` as "medium", and `8`, `9`, and `10` as "low".  Additionally, Planner sets the value `1` for "urgent", `3` for "important", `5` for "medium", and `9` for "low".|
|referenceCount|Int32|Number of external references that exist on the task.|
|startDateTime|DateTimeOffset|Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|title|String|Title of the task.|

## Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|assignedToTaskBoardFormat|[plannerAssignedToTaskBoardTaskFormat](plannerassignedtotaskboardtaskformat.md)| Read-only. Nullable. Used to render the task correctly in the task board view when grouped by assignedTo.|
|bucketTaskBoardFormat|[plannerBucketTaskBoardTaskFormat](plannerbuckettaskboardtaskformat.md)| Read-only. Nullable. Used to render the task correctly in the task board view when grouped by bucket.|
|details|[plannerTaskDetails](plannertaskdetails.md)| Read-only. Nullable. More details about the task.|
|progressTaskBoardFormat|[plannerProgressTaskBoardTaskFormat](plannerprogresstaskboardtaskformat.md)| Read-only. Nullable. Used to render the task correctly in the task board view when grouped by progress.|

## JSON representation
The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "baseType": "microsoft.graph.entity",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerTask"
}-->

```json
{
  "activeChecklistItemCount": "Int32",
  "appliedCategories": {"@odata.type": "microsoft.graph.plannerAppliedCategories"},
  "assigneePriority": "String",
  "assignments": {"@odata.type": "microsoft.graph.plannerAssignments"},
  "bucketId": "String",
  "checklistItemCount": "Int32",
  "completedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "completedDateTime": "String (timestamp)",
  "conversationThreadId": "String",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "dueDateTime": "String (timestamp)",
  "hasDescription": "Boolean",
  "id": "String (identifier)",
  "orderHint": "String",
  "percentComplete": "Int32",
  "priority": "Int32",
  "planId": "String",
  "previewType": "String",
  "referenceCount": "Int32",
  "startDateTime": "String (timestamp)",
  "title": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plannerTask resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

