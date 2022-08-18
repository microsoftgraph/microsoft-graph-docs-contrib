---
title: "workflowBase resource type"
description: "Methods, properties, and relationships of the workflowBase resource type"
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# workflowBase resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resource type noting workflowBase created using Lifecycle Workflows. Workflows, when triggered by execution conditions, automate parts of the lifecycle management process using tasks. These tasks can either be built-in tasks, or a custom task can be called using the custom task extension.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List workflowBases](../api/identitygovernance-workflowbase-list.md)|[microsoft.graph.identityGovernance.workflowBase](../resources/identitygovernance-workflowbase.md) collection|Get a list of the [workflowBase](../resources/identitygovernance-workflowbase.md) objects and their properties.|
|[Get workflowBase](../api/identitygovernance-workflowbase-get.md)|[microsoft.graph.identityGovernance.workflowBase](../resources/identitygovernance-workflowbase.md)|Read the properties and relationships of a [workflowBase](../resources/identitygovernance-workflowbase.md) object.|
|[Update workflowBase](../api/identitygovernance-workflowbase-update.md)|[microsoft.graph.identityGovernance.workflowBase](../resources/identitygovernance-workflowbase.md)|Update the properties of a [workflowBase](../resources/identitygovernance-workflowbase.md) object.|
|[Delete workflowBase](../api/identitygovernance-workflowbase-delete.md)|None|Deletes a [workflowBase](../resources/identitygovernance-workflowbase.md) object.|
|[List runs](../api/identitygovernance-workflow-list-runs.md)|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md) collection|Get the run resources from the runs navigation property.|
|[List tasks](../api/identitygovernance-taskprocessingresult-list-task.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|Get the task resources from the tasks navigation property.|
|[Create task](../api/identitygovernance-workflowbase-post-tasks.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md)|Create a new task object.|
|[List userProcessingResults](../api/identitygovernance-run-list-userprocessingresults.md)|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md) collection|Get the userProcessingResult resources from the userProcessingResults navigation property.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|category|String|The category of the workflow. The possible values are: `joiner`, `leaver`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|The date and time a workflow was created.|
|description|String|A string that describes the purpose of the workflow.|
|displayName|String|A string to identify the workflow. |
|executionConditions|[microsoft.graph.identityGovernance.workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md)|Defines when and for who the workflow will run.|
|lastModifiedDateTime|DateTimeOffset|The last time the workflow was modified.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|createdBy|[user](../resources/user.md)|The user who created the workflow.|
|lastModifiedBy|[user](../resources/user.md)|The user who last modified the workflow.|
|runs|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md) collection|A history of every time a workflow ran|
|tasks|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|The tasks in the workflow.|
|userProcessingResults|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md) collection|The results of a user processed by the workflow.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.workflowBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.workflowBase",
  "category": "String",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "executionConditions": {
    "@odata.type": "microsoft.graph.identityGovernance.workflowExecutionConditions"
  },
  "lastModifiedDateTime": "String (timestamp)"
}
```
