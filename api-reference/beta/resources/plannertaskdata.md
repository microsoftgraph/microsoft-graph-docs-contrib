---
title: "plannerTaskData resource type"
description: "Represents a snapshot of a planner task at a specific point in time."
author: "praspati"
ms.date: 05/15/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# plannerTaskData resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a snapshot of a [planner task](../resources/plannertask.md) at a specific point in time. This resource is used in [taskHistoryItem](../resources/taskhistoryitem.md) to capture the state of a task before and after changes.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|activeChecklistItemCount|Int32|The number of incomplete checklist items whose value is set to `false`.|
|appliedCategories|[plannerAppliedCategories](../resources/plannerappliedcategories.md)|The categories to which the task is applied.|
|archivalInfo|[plannerArchivalInfo](../resources/plannerarchivalinfo.md)|Information about who archived or unarchived the task and why.|
|assignments|[plannerAssignments](../resources/plannerassignments.md)|The set of assignees the task is assigned to.|
|bucketId|String|Bucket ID to which the task belongs. The bucket needs to be in the same plan as the task.|
|checklistItemCount|Int32|The number of checklist items that are present on the task.|
|completedBy|[identitySet](../resources/identityset.md)|The identity of the user that completed the task.|
|completedDateTime|DateTimeOffset|The date and time at which the **percentComplete** of the task is set to `100`. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`.|
|conversationThreadId|String|The thread ID of the conversation on the task that corresponds to the ID of the conversation thread object created in the group.|
|createdBy|[identitySet](../resources/identityset.md)|The identity of the user who created the task.|
|createdDateTime|DateTimeOffset|The date and time at which the task was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`.|
|creationSource|[plannerTaskCreation](../resources/plannertaskcreation.md)|Information about the origin of the task.|
|details|[plannerTaskDetailsData](../resources/plannertaskdetailsdata.md)|Additional details about the task.|
|dueDateTime|DateTimeOffset|The date and time at which the task is due. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`.|
|hasChat|Boolean|Set to `true` if the task has a chat associated with it; otherwise, `false`.|
|hasDescription|Boolean|Set to `true` if the details object of the task has a nonempty description; otherwise, `false`.|
|isArchived|Boolean|Set to `true` if the task is archived; otherwise, `false`.|
|orderHint|String|Hint used to order items of this type in a list view.|
|percentComplete|Int32|Percentage of task completion. When set to `100`, the task is considered completed.|
|previewType|plannerPreviewType|The type of preview that shows up on the task. The possible values are: `automatic`, `noPreview`, `checklist`, `description`, `reference`.|
|priority|Int32|The priority of the task. Valid values are between `0` and `10`, inclusive. Larger values indicate lower priority. For example, `0` has the highest priority and `10` has the lowest priority.|
|recurrence|[plannerTaskRecurrence](../resources/plannertaskrecurrence.md)|Defines active or inactive recurrence for the task. A `null` value indicates that the recurrence was never defined for the task.|
|referenceCount|Int32|Number of external references that exist on the task.|
|specifiedCompletionRequirements|plannerTaskCompletionRequirements|Indicates all the requirements specified on the task. The possible values are: `none`, `checklistCompletion`, `unknownFutureValue`, `formCompletion`, `approvalCompletion`, `completionInHostedApp`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `formCompletion` , `approvalCompletion` , `completionInHostedApp`.|
|startDateTime|DateTimeOffset|The date and time at which the task starts. The date and time information uses ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2021 is `2021-01-01T00:00:00Z`.|
|title|String|Title of the task.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.plannerTaskData"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.plannerTaskData",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "bucketId": "String",
  "isArchived": "Boolean",
  "title": "String",
  "orderHint": "String",
  "percentComplete": "Int32",
  "specifiedCompletionRequirements": "String",
  "priority": "Int32",
  "startDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "dueDateTime": "String (timestamp)",
  "hasDescription": "Boolean",
  "hasChat": "Boolean",
  "previewType": "String",
  "completedDateTime": "String (timestamp)",
  "completedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "referenceCount": "Int32",
  "checklistItemCount": "Int32",
  "activeChecklistItemCount": "Int32",
  "appliedCategories": {
    "@odata.type": "microsoft.graph.plannerAppliedCategories"
  },
  "assignments": {
    "@odata.type": "microsoft.graph.plannerAssignments"
  },
  "conversationThreadId": "String",
  "creationSource": {
    "@odata.type": "microsoft.graph.plannerTaskCreation"
  },
  "recurrence": {
    "@odata.type": "microsoft.graph.plannerTaskRecurrence"
  },
  "archivalInfo": {
    "@odata.type": "microsoft.graph.plannerArchivalInfo"
  },
  "details": {
    "@odata.type": "microsoft.graph.plannerTaskDetailsData"
  }
}
```
