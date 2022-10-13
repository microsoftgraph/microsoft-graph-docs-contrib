---
title: "workflow resource type"
description: "Represents workflows created using Lifecycle Workflows."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# workflow resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents workflows created using Lifecycle Workflows. Workflows, when triggered by execution conditions, automate parts of the lifecycle management process using tasks. These tasks can either be built-in tasks, or a custom task can be called using the custom task extension which integrate with Azure Logic Apps.

You can create up to 50 workflows in a tenant.

Inherits from [workflowBase](../resources/identitygovernance-workflowbase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List workflows](../api/identitygovernance-lifecycleworkflowscontainer-list-workflows.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md) collection|Get a list of the [workflow](../resources/identitygovernance-workflow.md) objects and their properties.|
|[Create workflow](../api/identitygovernance-lifecycleworkflowscontainer-post-workflows.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|Create a new [workflow](../resources/identitygovernance-workflow.md) object.|
|[Get workflow](../api/identitygovernance-workflow-get.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|Read the properties and relationships of a [workflow](../resources/identitygovernance-workflow.md) object.|
|[Update workflow](../api/identitygovernance-workflow-update.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|Update the properties of a [workflow](../resources/identitygovernance-workflow.md) object.|
|[Delete workflow](../api/identitygovernance-workflow-delete.md)|None|Deletes a [workflow](../resources/identitygovernance-workflow.md) object.|
|[Get a deleted workflow](../api/identitygovernance-deleteditemcontainer-get.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|Get a deleted [workflow](../resources/identitygovernance-workflow.md).|
|[Permanently delete a workflow](../api/identitygovernance-deletedItemcontainer-delete.md)|None|Permanently deletes a [workflow](../resources/identitygovernance-workflow.md) object.|
|[List deleted workflows](../api/identitygovernance-lifecycleworkflowscontainer-list-deleteditems.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md) collection|Get a list of deleted [workflow](../resources/identitygovernance-workflow.md) objects and their properties.|
|[activate](../api/identitygovernance-workflow-activate.md)|None|Run a workflow on-demand.|
|[Create workflowVersion](../api/identitygovernance-workflow-createnewversion.md)|[microsoft.graph.identityGovernance.workflowVersion](../resources/identitygovernance-workflowversion.md)|Create a new workflowVersion object.|
|[restore](../api/identitygovernance-workflow-restore.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|Restore a deleted workflow.|
|[List runs](../api/identitygovernance-workflow-list-runs.md)|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md) collection|Get a list of the [runs](../resources/identitygovernance-run.md) for the workflow.|
|[Get task](../api/identitygovernance-task-get.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|Get the properties of a [task](../resources/identitygovernance-task.md) in the workflow.|
|[List tasks](../api/identitygovernance-workflow-list-task.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|Get a list of [tasks](../resources/identitygovernance-task.md) objects in the workflow.|
|[List versions](../api/identitygovernance-workflow-list-versions.md)|[microsoft.graph.identityGovernance.workflowVersion](../resources/identitygovernance-workflowversion.md) collection|Get a list of [workflow versions](../resources/identitygovernance-workflowversion.md) of the workflow.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|category|microsoft.graph.identityGovernance.lifecycleWorkflowCategory|The category of the HR function supported by the workflows created using this template. A workflow can only belong to one category. The possible values are: `joiner`, `leaver`, `unknownFutureValue`. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).<br><br>Supports `$filter`(`eq`,`ne`) and `$orderBy`|
|createdDateTime|DateTimeOffset|When the `workflow` was created. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).<br><br>Supports `$filter`(`lt`,`gt`) and `$orderby`.|
|deletedDateTime|DateTimeOffset|When the workflow was deleted. <br><br>Supports `$filter`(`lt`,`gt`) and `$orderBy`. |
|description|String|The description of the `workflow`. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|displayName|String|The display name of the `workflow`. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).<br><br>Supports `$filter`(`eq`, `ne`), `orderby`, and `$search`.|
|executionConditions|[microsoft.graph.identityGovernance.workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md)|Conditions describing when to execute the workflow and the criteria to identify in-scope subject set. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|id|String|Identifier used for individually addressing a specific workflow. <br><br>Supports `$filter`(`eq`, `ne`).|
|isEnabled|Boolean|Whether the workflow is enabled or disabled. If this setting is `true`, the workflow can be run on demand or on schedule when **isSchedulingEnabled** is `true`. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).<br><br>Supports `$filter`(`eq`, `ne`) and `orderBy`.|
|isSchedulingEnabled|Boolean|If `true`, the Lifecycle Workflow engine executes the workflow based on the schedule defined by [tenant settings](identitygovernance-lifecyclemanagementsettings.md). Cannot be `true` for a disabled workflow (where **isEnabled** is `false`). Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).<br><br>Supports `$filter`(`eq`, `ne`) and `orderBy`.|
|lastModifiedDateTime|DateTimeOffset|The date time when the `workflow` was last modified. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).<br><br>Supports `$filter`(`lt`,`gt`) and `$orderby`.|
|nextScheduleRunDateTime|DateTimeOffset|The date time when the `workflow` is expected to run next based on the schedule interval, if there are any users matching the execution conditions. <br><br>Supports `$filter`(`lt`,`gt`) and `$orderBy`.|
|version|Int32|The current version number of the workflow. Value is 1 when the workflow is first created. <br><br>Supports `$filter`(`eq`, `ne`).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|createdBy|[user](../resources/user.md)|The unique identifier of the Azure AD user that created the [workflow](../resources/identitygovernance-workflow.md) object. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Supports `$expand`.|
|executionScope|[microsoft.graph.user](../resources/user.md) collection|The unique identifier of the Azure AD identity that last modified the [workflow](../resources/identitygovernance-workflow.md) object.|
|lastModifiedBy|[user](../resources/user.md)|The user who last modified the [workflow](../resources/identitygovernance-workflow.md) object. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md). Supports `$expand`.|
|runs|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md) collection|Workflow runs.|
|taskReports|[microsoft.graph.identityGovernance.taskReport](../resources/identitygovernance-taskreport.md) collection|Represents the aggregation of task execution data for tasks within a [workflow](../resources/identitygovernance-workflow.md) object.|
|tasks|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|Represents the configured tasks to execute and their execution sequence within a [workflow](../resources/identitygovernance-workflow.md) object. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md)|
|userProcessingResults|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md) collection|Per-user workflow execution results.|
|versions|[microsoft.graph.identityGovernance.workflowVersion](../resources/identitygovernance-workflowversion.md) collection|The workflow versions that are available.|

## JSON representation

The following is a JSON representation of the resource.
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
