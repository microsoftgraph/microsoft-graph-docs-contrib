---
title: "workflow resource type"
description: "Represents workflows created using Lifecycle Workflows."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# workflow resource type

Namespace: microsoft.graph.identityGovernance

Represents workflows created using Lifecycle Workflows. Workflows, when triggered by execution conditions, automate parts of the lifecycle management process using tasks. These tasks can either be built-in tasks, or a custom task can be called using the custom task extension which integrate with Azure Logic Apps.

You can create up to 100 workflows in a tenant.

Inherits from [workflowBase](../resources/identitygovernance-workflowbase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/identitygovernance-lifecycleworkflowscontainer-list-workflows.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md) collection|Get a list of the [workflow](../resources/identitygovernance-workflow.md) objects and their properties.|
|[Create](../api/identitygovernance-lifecycleworkflowscontainer-post-workflows.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|Create a new [workflow](../resources/identitygovernance-workflow.md) object.|
|[Get](../api/identitygovernance-workflow-get.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|Read the properties and relationships of a [workflow](../resources/identitygovernance-workflow.md) object.|
|[Update](../api/identitygovernance-workflow-update.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|Update the properties of a [workflow](../resources/identitygovernance-workflow.md) object.|
|[Delete](../api/identitygovernance-workflow-delete.md)|None|Deletes a [workflow](../resources/identitygovernance-workflow.md) object.|
|[Activate](../api/identitygovernance-workflow-activate.md)|None|Run a workflow on-demand.|
|[Activate with scope](../api/identitygovernance-workflow-activatewithscope.md)|None|Run a workflow on-demand with a specific scope.|
|[List users in scope](../api/workflow-list-executionscope.md)|[microsoft.graph.user](../resources/user.md) collection|Get a list of users who are in the scope of the execution conditions of a [workflow](../resources/identitygovernance-workflow.md) object.|
|**Deleted workflows**|:---|:---|
|[List](../api/identitygovernance-lifecycleworkflowscontainer-list-deleteditems.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md) collection|Get a list of deleted [workflow](../resources/identitygovernance-workflow.md) objects and their properties.|
|[Get](../api/identitygovernance-deleteditemcontainer-get.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|Get a deleted [workflow](../resources/identitygovernance-workflow.md).|
|[Restore](../api/identitygovernance-workflow-restore.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|Restore a deleted workflow.|
|[Permanently delete](../api/identitygovernance-deleteditemcontainer-delete.md)|None|Permanently delete a [workflow](../resources/identitygovernance-workflow.md) object from the deleted items container.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|category|microsoft.graph.identityGovernance.lifecycleWorkflowCategory|The category of the HR function supported by the workflows created using this template. A workflow can only belong to one category. The possible values are: `joiner`, `leaver`, `mover`, `unknownFutureValue`. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Required.<br><br>Supports `$filter`(`eq`,`ne`) and `$orderby`|
|createdDateTime|DateTimeOffset|When the `workflow` was created. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).<br><br>Supports `$filter`(`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderby`.|
|deletedDateTime|DateTimeOffset|When the workflow was deleted.<br><br>Supports `$filter`(`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderby`.|
|description|String|The description of the `workflow`. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Optional.|
|displayName|String|The display name of the `workflow`. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Required.<br><br>Supports `$filter`(`eq`, `ne`) and `orderby`.|
|executionConditions|[microsoft.graph.identityGovernance.workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md)|Conditions describing when to execute the workflow and the criteria to identify in-scope subject set. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Required.|
|id|String|Identifier used for individually addressing a specific workflow.<br><br>Supports `$filter`(`eq`, `ne`) and `$orderby`.|
|isEnabled|Boolean|Whether the workflow is enabled or disabled. If this setting is `true`, the workflow can be run on demand or on schedule when **isSchedulingEnabled** is `true`. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Optional. Defaults to `true`.<br><br>Supports `$filter`(`eq`, `ne`) and `orderBy`.|
|isSchedulingEnabled|Boolean|If `true`, the Lifecycle Workflow engine executes the workflow based on the schedule defined by [tenant settings](identitygovernance-lifecyclemanagementsettings.md). Cannot be `true` for a disabled workflow (where **isEnabled** is `false`). Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Optional. Defaults to `false`.<br><br>Supports `$filter`(`eq`, `ne`) and `orderBy`.|
|lastModifiedDateTime|DateTimeOffset|The date time when the `workflow` was last modified. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).<br><br>Supports `$filter`(`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderby`.|
|nextScheduleRunDateTime|DateTimeOffset|The date time when the `workflow` is expected to run next based on the schedule interval, if there are any users matching the execution conditions. <br><br>Supports `$filter`(`lt`,`gt`) and `$orderby`.|
|version|Int32|The current version number of the workflow. Value is 1 when the workflow is first created.<br><br>Supports `$filter`(`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderby`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|createdBy|[user](../resources/user.md)|The unique identifier of the Microsoft Entra user that created the [workflow](../resources/identitygovernance-workflow.md) object. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).<br><br>Supports `$filter`(`eq`, `ne`) and `$expand`.|
|executionScope|[microsoft.graph.user](../resources/user.md) collection|The list of users that meet the [workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md) of a workflow.|
|lastModifiedBy|[user](../resources/user.md)|The user who last modified the [workflow](../resources/identitygovernance-workflow.md) object. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).<br><br>Supports `$filter`(`eq`, `ne`) and `$expand`.|
|runs|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md) collection|Workflow runs.|
|taskReports|[microsoft.graph.identityGovernance.taskReport](../resources/identitygovernance-taskreport.md) collection|Represents the aggregation of task execution data for tasks within a [workflow](../resources/identitygovernance-workflow.md) object.|
|tasks|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|Represents the configured tasks to execute and their execution sequence within a [workflow](../resources/identitygovernance-workflow.md) object. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Required.|
|userProcessingResults|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md) collection|Per-user workflow execution results.|
|versions|[microsoft.graph.identityGovernance.workflowVersion](../resources/identitygovernance-workflowversion.md) collection|The workflow versions that are available.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.workflow",
  "baseType": "microsoft.graph.identityGovernance.workflowBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.workflow",
  "category": "String",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "executionConditions": {
    "@odata.type": "microsoft.graph.identityGovernance.workflowExecutionConditions"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "deletedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "isEnabled": "Boolean",
  "isSchedulingEnabled": "Boolean",
  "nextScheduleRunDateTime": "String (timestamp)",
  "version": "Integer"
}
```
