---
title: "businessScenarioTask resource type"
description: "Represents a plannerTask that is associated with a businessScenario and contains additional scenario data."
author: "TarkanSevilmis"
ms.localizationpriority: medium
ms.prod: "business-scenarios"
doc_type: resourcePageType
---

# businessScenarioTask resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a [plannerTask](../resources/plannertask.md) that is associated with a [businessScenario](../resources/businessscenario.md) and contains additional scenario data.

Inherits from [plannerTask](../resources/plannertask.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List businessScenarioTasks](../api/businessscenarioplanner-list-tasks.md)|[businessScenarioTask](../resources/businessscenariotask.md) collection|Get a list of the [businessScenarioTask](../resources/businessscenariotask.md) objects and their properties.|
|[Create businessScenarioTask](../api/businessscenarioplanner-post-tasks.md)|[businessScenarioTask](../resources/businessscenariotask.md)|Create a new [businessScenarioTask](../resources/businessscenariotask.md) object.|
|[Get businessScenarioTask](../api/businessscenariotask-get.md)|[businessScenarioTask](../resources/businessscenariotask.md)|Read the properties and relationships of a [businessScenarioTask](../resources/businessscenariotask.md) object.|
|[Update businessScenarioTask](../api/businessscenariotask-update.md)|[businessScenarioTask](../resources/businessscenariotask.md)|Update the properties of a [businessScenarioTask](../resources/businessscenariotask.md) object.|
|[Delete businessScenarioTask](../api/businessscenarioplanner-delete-tasks.md)|None|Delete a [businessScenarioTask](../resources/businessscenariotask.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|activeChecklistItemCount|Int32|Number of checklist items with value set to `false`, representing incomplete items. Inherited from [plannerTask](../resources/plannertask.md).|
|appliedCategories|[plannerAppliedCategories](../resources/plannerappliedcategories.md)|The categories to which the task has been applied. For possible values, see [plannerAppliedCategories](plannerappliedcategories.md). Inherited from [plannerTask](../resources/plannertask.md).|
|assigneePriority|String|Hint used to order items of this type in a list view. For details about the supported format, see [Using order hints in Planner](planner-order-hint-format.md). Inherited from [plannerTask](../resources/plannertask.md).|
|assignments|[plannerAssignments](../resources/plannerassignments.md)|The set of assignees the task is assigned to. Inherited from [plannerTask](../resources/plannertask.md).|
|bucketId|String|Bucket ID to which the task belongs. Inherited from [plannerTask](../resources/plannertask.md).|
|businessScenarioProperties|[businessScenarioProperties](../resources/businessscenarioproperties.md)|Scenario-specific properties of the task. **externalObjectId** and **externalBucketId** properties must be specified when creating a task.|
|checklistItemCount|Int32|Number of checklist items that are present on the task. Inherited from [plannerTask](../resources/plannertask.md).|
|completedBy|[identitySet](../resources/identityset.md)|Identity of the user who completed the task. Inherited from [plannerTask](../resources/plannertask.md). Read-Only.|
|completedDateTime|DateTimeOffset|Date and time at which the **percentComplete** of the task is set to `100`. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [plannerTask](../resources/plannertask.md). Read-only.|
|conversationThreadId|String|Thread ID of the conversation on the task. This is the ID of the conversation thread object created in the **group**. Inherited from [plannerTask](../resources/plannertask.md).|
|createdBy|[identitySet](../resources/identityset.md)|Identity of the user who created the task. Inherited from [plannerTask](../resources/plannertask.md). Read-Only.|
|createdDateTime|DateTimeOffset|Date and time at which the task is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z` Inherited from [plannerTask](../resources/plannertask.md). Read-only.|
|creationSource|[plannerTaskCreation](../resources/plannertaskcreation.md)|Contains information about the origin of the task. Inherited from [plannerTask](../resources/plannertask.md).|
|dueDateTime|DateTimeOffset|Date and time at which the task is due. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [plannerTask](../resources/plannertask.md).|
|hasDescription|Boolean|`True` indicates that the details object of the task has a non-empty description; otherwise, `false`. Inherited from [plannerTask](../resources/plannertask.md). Read-only.|
|id|String|The unique identifier for the task. Inherited from [entity](../resources/entity.md). Read-only.|
|orderHint|String|Hint used to order items of this type in a list view. For details about the supported format, see [Using order hints in Planner](planner-order-hint-format.md). Inherited from [plannerTask](../resources/plannertask.md).|
|percentComplete|Int32|Percentage of task completion. When set to `100`, the task is considered completed. Inherited from [plannerTask](../resources/plannertask.md).|
|planId|String|Identifier of the plan to which the task belongs. Inherited from [plannerTask](../resources/plannertask.md).|
|previewType|plannerPreviewType|This sets the type of preview that shows up on the task. Possible values are: `automatic`, `noPreview`, `checklist`, `description`, `reference`. Inherited from [plannerTask](../resources/plannertask.md).|
|priority|Int32|Priority of the task. Valid range of values is between `0` and `10` (inclusive), with increasing value being lower priority (`0` has the highest priority and `10` has the lowest priority).  Currently, Planner interprets values `0` and `1` as "urgent", `2`, `3`, and `4` as "important", `5`, `6`, and `7` as "medium", and `8`, `9`, and `10` as "low".  Currently, Planner sets the value `1` for "urgent", `3` for "important", `5` for "medium", and `9` for "low". Inherited from [plannerTask](../resources/plannertask.md).|
|referenceCount|Int32|Number of external references that exist on the task. Inherited from [plannerTask](../resources/plannertask.md).|
|startDateTime|DateTimeOffset|Date and time at which the task starts. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Inherited from [plannerTask](../resources/plannertask.md).|
|target|[businessScenarioTaskTargetBase](../resources/businessscenariotasktargetbase.md)|Target of the task that specifies where the task should be placed. Must be specified when creating a task.|
|title|String|Title of the task. Inherited from [plannerTask](../resources/plannertask.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|assignedToTaskBoardFormat|[plannerAssignedToTaskBoardTaskFormat](../resources/plannerassignedtotaskboardtaskformat.md)|Used to render the task correctly in the task board view when grouped by **assignedTo**. Inherited from [plannerTask](../resources/plannertask.md).|
|bucketTaskBoardFormat|[plannerBucketTaskBoardTaskFormat](../resources/plannerbuckettaskboardtaskformat.md)|Used to render the task correctly in the task board view when grouped by **bucket**. Inherited from [plannerTask](../resources/plannertask.md).|
|details|[plannerTaskDetails](../resources/plannertaskdetails.md)|Additional details about the task. Inherited from [plannerTask](../resources/plannertask.md).|
|progressTaskBoardFormat|[plannerProgressTaskBoardTaskFormat](../resources/plannerprogresstaskboardtaskformat.md)|Used to render the task correctly in the task board view when grouped by **progress**. Inherited from [plannerTask](../resources/plannertask.md).|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.businessScenarioTask",
  "baseType": "microsoft.graph.plannerTask",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.businessScenarioTask",
  "activeChecklistItemCount": "Int32",
  "appliedCategories": {"@odata.type": "microsoft.graph.plannerAppliedCategories"},
  "assigneePriority": "String",
  "assignments": {"@odata.type": "microsoft.graph.plannerAssignments"},
  "bucketId": "String",
  "businessScenarioProperties": {"@odata.type": "microsoft.graph.businessScenarioProperties"},
  "checklistItemCount": "Int32",
  "completedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "completedDateTime": "String (timestamp)",
  "conversationThreadId": "String",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "creationSource": {"@odata.type": "microsoft.graph.plannerTaskCreation"},
  "dueDateTime": "String (timestamp)",
  "hasDescription": "Boolean",
  "id": "String (identifier)",
  "orderHint": "String",
  "percentComplete": "Int32",
  "planId": "String",
  "previewType": "String",
  "priority": "Int32",
  "referenceCount": "Int32",
  "startDateTime": "String (timestamp)",
  "target": {"@odata.type": "microsoft.graph.businessScenarioTaskTargetBase"},
  "title": "String"
}
```
