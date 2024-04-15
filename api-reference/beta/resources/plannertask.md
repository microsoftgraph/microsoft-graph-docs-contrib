---
title: "plannerTask resource type"
description: "Represents a Planner task in Microsoft 365."
ms.localizationpriority: medium
author: "TarkanSevilmis"
ms.subservice: "planner"
doc_type: resourcePageType
---

# plannerTask resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Planner task in Microsoft 365. A Planner task is contained in a [plan](plannerplan.md) and can be assigned to a [bucket](plannerbucket.md) in a plan. Each task object has a [details](plannertaskdetails.md) object that can contain more information about the task. For more information about relationships between group, plan, and task, see [Use the Planner REST API](planner-overview.md).


## Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get plannerTask](../api/plannertask-get.md) | [plannerTask](plannertask.md) |Read the properties and relationships of **plannerTask** object.|
|[Update](../api/plannertask-update.md) | [plannerTask](plannertask.md)	|Update a **plannerTask** object. |
|[Delete](../api/plannertask-delete.md) | None |Delete a **plannerTask** object. |
|[Get delta](../api/plannertask-delta.md)|[plannerTask](../resources/plannertask.md) collection| Get newly created, updated, or deleted **plannerTask** objects in either a **plannerPlan** or assigned to the signed-in user without having to perform a full read of the entire resource collection. |

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|activeChecklistItemCount|Int32|The number of checklist items with value set to `false`, representing incomplete items.|
|appliedCategories|[plannerAppliedCategories](plannerappliedcategories.md)|The categories to which the task is applied. See [plannerAppliedCategories resource type](plannerappliedcategories.md) for possible values.|
|assigneePriority|String|A hint that is used to order items of this type in a list view. For more information, see [Using order hints in Planner](planner-order-hint-format.md).|
|assignments|[plannerAssignments](plannerassignments.md)|The set of assignees the task is assigned to.|
|bucketId|String|Bucket ID to which the task belongs. The bucket needs to be in the same plan as the task. The value of the bucketId property is 28 characters long and case-sensitive. [Format validation](tasks-identifiers-disclaimer.md) is done on the service. |
|checklistItemCount|Int32|The number of checklist items that are present on the task.|
|completedBy|[identitySet](identityset.md)|The identity of the user that completed the task.|
|completedDateTime|DateTimeOffset|Read-only. The date and time at which the `'percentComplete'` of the task is set to `'100'`. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|conversationThreadId|String|The thread ID of the conversation on the task. This is the ID of the conversation thread object created in the group.|
|createdBy|[identitySet](identityset.md)|The identity of the user who created the task.|
|createdDateTime|DateTimeOffset|Read-only. The date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|creationSource|[plannerTaskCreation](../resources/plannertaskcreation.md)|Information about the origin of the task.|
|dueDateTime|DateTimeOffset|The date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|hasDescription|Boolean|Read-only. This value is `true` if the details object of the task has a nonempty description. Otherwise,`false`.|
|id|String|Read-only. The unique identifier of the task. The value of this property is 28 characters long and case-sensitive. [Format validation](tasks-identifiers-disclaimer.md) is done on the service.|
|isOnMyDay|Boolean|A Boolean value that indicates whether to show this task in the MyDay view. `true` to show the task. Otherwise, `false`.|
|isOnMyDayLastModifiedDate|Date|Read-only. The date on which task is added to or removed from MyDay.|
|orderHint|String|The hint used to order items of this type in a list view. For more information, see [Using order hints in Planner](planner-order-hint-format.md)n.|
|percentComplete|Int32|The percentage of task completion. When set to `100`, the task is completed. |
|planId|String|Plan ID to which the task belongs.|
|previewType|String|The type of preview that shows up on the task. Possible values are: `automatic`, `noPreview`, `checklist`, `description`, `reference`.|
|recurrence|[plannerTaskRecurrence](../resources/plannertaskrecurrence.md)|Defines active or inactive recurrence for the task. `null` when the recurrence has never been defined for the task.|
|referenceCount|Int32|Number of external references that exist on the task.|
|specifiedCompletionRequirements|[plannerTaskCompletionRequirements](../resources/plannertask.md#plannertaskcompletionrequirements-values)|Indicates all the requirements specified on the **plannerTask**. Possible values are: `none`, `checklistCompletion`, `unknownFutureValue`, `formCompletion`, `approvalCompletion`. Read-only. You must use the `Prefer: include-unknown-enum-members` request header to get the following values in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `formCompletion`, `approvalCompletion`. The [plannerTaskCompletionRequirementDetails](plannertaskcompletionrequirementdetails.md) in [plannerTaskDetails](plannertaskdetails.md) has details of the requirements specified, if any. |
|startDateTime|DateTimeOffset|Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`|
|title|String|Title of the task.|

### plannerTaskCompletionRequirements values

| Member              | Description                                                             |
|:--------------------|:------------------------------------------------------------------------|
| none                | No requirement.                                                         |
| checklistCompletion | Some or all of the checklist items are required to be checked.          |
| unknownFutureValue  | Evolvable enumeration sentinel value. Don't use.                        |
| formCompletion      | Some or all of the forms must be submitted to complete the planner task.|
| approvalCompletion  | Approval is required.                                                   |

## Relationships

| Relationship | Type |Description|
|:---------------|:--------|:----------|
|assignedToTaskBoardFormat|[plannerAssignedToTaskBoardTaskFormat](plannerassignedtotaskboardtaskformat.md)| Read-only. Nullable. Used to render the task correctly in the task board view when grouped by assignedTo.|
|bucketTaskBoardFormat|[plannerBucketTaskBoardTaskFormat](plannerbuckettaskboardtaskformat.md)| Read-only. Nullable. Used to render the task correctly in the task board view when grouped by bucket.|
|details|[plannerTaskDetails](plannertaskdetails.md)| Read-only. Nullable. More details about the task.|
|progressTaskBoardFormat|[plannerProgressTaskBoardTaskFormat](plannerprogresstaskboardtaskformat.md)| Read-only. Nullable. Used to render the task correctly in the task board view when grouped by progress.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "keyProperty": "id",
  "baseType":"microsoft.graph.entity",  
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
  "isOnMyDay": "Boolean",
  "isOnMyDayLastModifiedDate": "Date",
  "orderHint": "String",
  "percentComplete": "Int32",
  "planId": "String",
  "previewType": "String",
  "priority": "Int32",
  "recurrence": {"@odata.type": "microsoft.graph.plannerTaskRecurrence"},
  "referenceCount": "Int32",
  "specifiedCompletionRequirements": "String",
  "startDateTime": "String (timestamp)",
  "title": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "plannerTask resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
