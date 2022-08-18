---
title: "workflow resource type"
description: "Methods, properties, and relationships of the workflow resource type"
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# workflow resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resource type noting workflows created using Lifecycle Workflows. Workflows, when triggered by execution conditions, automate parts of the lifecycle management process using tasks. These tasks can either be built-in tasks, or a custom task can be called using the custom task extension.

Inherits from [workflowBase](../resources/identitygovernance-workflowbase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List workflows](../api/deleteditemcontainer-list-workflows.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md) collection|Get a list of the [workflow](../resources/identitygovernance-workflow.md) objects and their properties.|
|[Create workflow](../api/deleteditemcontainer-post-workflows.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|Create a new [workflow](../resources/identitygovernance-workflow.md) object.|
|[Get workflow](../api/identitygovernance-workflow-get.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|Read the properties and relationships of a [workflow](../resources/identitygovernance-workflow.md) object.|
|[Update workflow](../api/identitygovernance-workflow-update.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|Update the properties of a [workflow](../resources/identitygovernance-workflow.md) object.|
|[Delete workflow](../api/deleteditemcontainer-delete-workflows.md)|None|Deletes a [workflow](../resources/identitygovernance-workflow.md) object.|
|[activate](../api/identitygovernance-workflow-activate.md)|None|Activate the workflow object.|
|[Create workflowVersion](../api/identitygovernance-workflow-post-versions.md)|[microsoft.graph.identityGovernance.workflowVersion](../resources/identitygovernance-workflowversion.md)|Create a new workflowVersion object.|
|[restore](../api/identitygovernance-workflow-restore.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|Restore the workflow object.|
|[List runs](../api/identitygovernance-workflow-list-runs.md)|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md) collection|Get the run resources from the runs navigation property.|
|[List tasks](../api/identitygovernance-taskprocessingresult-list-task.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|Get the task resources from the tasks navigation property.|
|[List versions](../api/identitygovernance-workflow-list-versions.md)|[microsoft.graph.identityGovernance.workflowVersion](../resources/identitygovernance-workflowversion.md) collection|Get the workflowVersion resources from the versions navigation property.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|category|String|The category of the workflow. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).The possible values are: `joiner`, `leaver`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|The time and date the workflow was created. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|deletedDateTime|DateTimeOffset|The time and date a workflow is deleted.|
|description|String|A string that describes the purpose of the workflow for administrative use. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|displayName|String|A unique string that identifies the workflow. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|executionConditions|[microsoft.graph.identityGovernance.workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md)|Defines for who and when a workflow will run.  Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|id|String|Identifier used for individually addressing a specific workflow.|
|isEnabled|Boolean|A boolean value that denotes whether the workflow is set to run or not.|
|isSchedulingEnabled|Boolean|A Boolean value that denotes whether scheduling is enabled or not. |
|lastModifiedDateTime|DateTimeOffset|The time and date a workflow was last modified. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|nextScheduleRunDateTime|DateTimeOffset|The next scheduled run date and time for a workflow. |
|version|Int32|The version of the workflow.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|createdBy|[user](../resources/user.md)|The user who created the workflow. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md)|
|executionScope|[microsoft.graph.user](../resources/user.md) collection|The scope defining who the workflow runs for.|
|lastModifiedBy|[user](../resources/user.md)|The user who last modified the workflow. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md)|
|runs|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md) collection|A history of every time a workflow ran. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md)|
|taskReports|[microsoft.graph.identityGovernance.taskReport](../resources/identitygovernance-taskreport.md) collection|The task report of tasks within a workflow.|
|tasks|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|The tasks in the workflow. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md)|
|userProcessingResults|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md) collection|The results of a user processed by the workflow. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md)|
|versions|[microsoft.graph.identityGovernance.workflowVersion](../resources/identitygovernance-workflowversion.md) collection|The workflow version.|

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
