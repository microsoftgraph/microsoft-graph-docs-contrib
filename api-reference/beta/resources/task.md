---
title: "task resource type"
description: "A task in the Planner Unified plans Graph API. `planId` routes the task back to its parent plan. Unlike the **plannerTask**/**plannerTaskDetails** split in the Planner Basic plans Graph API, a task in the Planner Unified plans Graph API has no separate details object - description, notes, checklist, assignments, and links are properties and sub-collections directly on the task."
author: "EshaSugla"
ms.date: 09/10/2026
ms.localizationpriority: medium
ms.subservice: "planner"
doc_type: resourcePageType
---

# task resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A task in the Planner Unified plans Graph API. `planId` routes the task back to its parent [plan](../resources/plan.md). Unlike the **plannerTask**/**plannerTaskDetails** split in the Planner Basic plans Graph API, a task in the Planner Unified plans Graph API has no separate details object - description, notes, checklist, assignments, and links are properties and sub-collections directly on the task.


Inherits from [plannerDelta](../resources/plannerdelta.md).

Use the listed methods to create, read, update, and delete tasks. You can create supported related objects in the same request as a task by using a [deep insert](../api/planner-post-tasks_v2.md). This doesn't imply standalone CRUD support for every related type, or that sending an array in a PATCH request replaces the collection.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/plan-list-tasks.md)|[task](../resources/task.md) collection|Get a list of the task objects and their properties.|
|[Create](../api/planner-post-tasks_v2.md)|[task](../resources/task.md)|Create a new task object.|
|[Get](../api/task-get.md)|[task](../resources/task.md)|Read the properties and relationships of [task](../resources/task.md) object.|
|[Update](../api/task-update.md)|[task](../resources/task.md)|Update the properties of a task object.|
|[Delete](../api/plan-delete-tasks.md)|None|Delete a task object.|
|[List checklist](../api/task-list-checklist.md)|[checklistItemV4](../resources/checklistitemv4.md) collection|Get a list of the checklistItemV4 objects and their properties.|
|[List customFieldValues](../api/task-list-customfieldvalues.md)|[customFieldValue](../resources/customfieldvalue.md) collection|Get a list of the customFieldValue objects and their properties.|
|[List links](../api/task-list-links.md)|[contentLink](../resources/contentlink.md) collection|Get a list of the contentLink objects and their properties.|
|[List messages](../api/task-list-messages.md)|[plannerChatMessage](../resources/plannerchatmessage.md) collection|Get a list of the plannerChatMessage objects and their properties.|
|[List userAssignments](../api/task-list-userassignments.md)|[userAssignment](../resources/userassignment.md) collection|Get a list of the userAssignment objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|archivalInfo|[plannerArchivalInfo](../resources/plannerarchivalinfo.md)|Service-populated information about whether the entity is archived, and when it was archived. Read-only.|
|bucketId|String|ID of the bucket that the task belongs to.|
|capabilities|[taskCapability](../resources/taskcapability.md)|Server-computed, read-only capability flags indicating which optional features are enabled for the entity.|
|completedBy|[identitySet](../resources/identityset.md)|Identity of the user who marked the task complete. Read-only.|
|completedDateTime|DateTimeOffset|Date and time the task was completed. Read-only.|
|creationInfo|[creationInfo](../resources/creationinfo.md)|Read-only creation metadata for the entity.|
|displayName|String|Title of the task.|
|dueDateTime|[dateWithOptionalTime](../resources/datewithoptionaltime.md)|Date and, optionally, time the task is due.|
|extensions|[extensionFieldCollection](../resources/extensionfieldcollection.md)|Custom extension field values set on the entity. Supports $select.|
|finishDateTime|[dateWithOptionalTime](../resources/datewithoptionaltime.md)|Date and, optionally, time the task was finished.|
|goalIds|String collection|IDs of the goals that the task is associated with.|
|hasChat|Boolean|Indicates whether the task has an associated chat. Read-only.|
|hasChildren|Boolean|Indicates whether the task has subtasks. Read-only.|
|id|String|The unique identifier of the entity. Read-only. Inherited from [entity](../resources/entity.md)|
|isCritical|Boolean|Indicates whether the task is on the critical path, as computed from its dependencies. Read-only.|
|lastModifiedBy|[identitySet](../resources/identityset.md)|Identity of the user (or application) who last modified the entity. Read-only.|
|lastModifiedDateTime|DateTimeOffset|Date and time the entity was last modified. The value is represented in ISO 8601 format and is always in UTC time. Read-only.|
|notes|[itemBody](../resources/itembody.md)|Additional details or notes about the task.|
|parentTaskId|String|ID of the parent task, if this task is a subtask.|
|percentComplete|Int32|Percentage of the task's completion, ranging from 0 to 100.|
|personalView|[taskPersonalView](../resources/taskpersonalview.md)|Per-user personal view settings for the task, such as My Day membership.|
|planId|String|ID of the plan that contains the task. Immutable after creation.|
|planView|[taskPlanView](../resources/taskplanview.md)|Task view settings scoped to the plan, such as applied category IDs.|
|priority|Int32|Priority of the task. Supported values range from 0 (urgent) to 10 (low).|
|recurrence|[plannerTaskRecurrence](../resources/plannertaskrecurrence.md)|Recurrence pattern for the task, if it repeats.|
|startDateTime|[dateWithOptionalTime](../resources/datewithoptionaltime.md)|Date and, optionally, time the task is scheduled to start.|
|status|plannerTaskStatus|Indicates progress on the task. The possible values are: `notStarted`, `inProgress`, `completed`, `blocked`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|checklist|[checklistItemV4](../resources/checklistitemv4.md) collection|Checklist items on the task. Can be supplied when creating a task by using a deep insert. Nullable.|
|customFieldValues|[customFieldValue](../resources/customfieldvalue.md) collection|The collection of custom field values set on the task. Read-only. Nullable.|
|links|[contentLink](../resources/contentlink.md) collection|Content links attached to the task. Can be supplied when creating a task by using a deep insert. Nullable.|
|messages|[plannerChatMessage](../resources/plannerchatmessage.md) collection|The collection of chat messages associated with the task. Read-only. Nullable.|
|userAssignments|[userAssignment](../resources/userassignment.md) collection|User assignments on the task. Can be supplied when creating a task by using a deep insert. Nullable.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.task",
  "baseType": "microsoft.graph.plannerDelta",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.task",
  "id": "String (identifier)",
  "displayName": "String",
  "planId": "String",
  "bucketId": "String",
  "goalIds": [
    "String"
  ],
  "status": "String",
  "priority": "Int32",
  "percentComplete": "Int32",
  "startDateTime": {
    "@odata.type": "microsoft.graph.dateWithOptionalTime"
  },
  "dueDateTime": {
    "@odata.type": "microsoft.graph.dateWithOptionalTime"
  },
  "finishDateTime": {
    "@odata.type": "microsoft.graph.dateWithOptionalTime"
  },
  "notes": {
    "@odata.type": "microsoft.graph.itemBody"
  },
  "creationInfo": {
    "@odata.type": "microsoft.graph.creationInfo"
  },
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "completedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "completedDateTime": "String (timestamp)",
  "recurrence": {
    "@odata.type": "microsoft.graph.plannerTaskRecurrence"
  },
  "archivalInfo": {
    "@odata.type": "microsoft.graph.plannerArchivalInfo"
  },
  "planView": {
    "@odata.type": "microsoft.graph.taskPlanView"
  },
  "personalView": {
    "@odata.type": "microsoft.graph.taskPersonalView"
  },
  "parentTaskId": "String",
  "hasChildren": "Boolean",
  "isCritical": "Boolean",
  "hasChat": "Boolean",
  "capabilities": {
    "@odata.type": "microsoft.graph.taskCapability"
  },
  "extensions": {
    "@odata.type": "microsoft.graph.extensionFieldCollection"
  }
}
```
