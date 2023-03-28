---
title: "userProcessingResult resource type"
description: "Results of lifecycle workflow tasks scoped to the user for whom the tasks were run. Total tasks are shown along with individual results for unprocessed tasks, and processing status for the results"
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# userProcessingResult resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Result of a [lifecycle workflow](../resources/identitygovernance-workflow.md) that was executed for a specific user because the user fulfilled the [execution conditions](../resources/identitygovernance-workflowexecutionconditions.md) of the lifecycle workflow. The result is an aggregation of all [task processing results](../resources/identitygovernance-taskprocessingresult.md) of the [workflow tasks](../resources/identitygovernance-task.md) that were part of the lifecycle workflow and executed for the specific user.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List userProcessingResults](../api/identitygovernance-workflow-list-userprocessingresults.md)|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md) collection|Get a list of the [userProcessingResult](../resources/identitygovernance-userprocessingresult.md) objects and their properties.|
|[Get userProcessingResult](../api/identitygovernance-userprocessingresult-get.md)|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md)|Get a user processing result.|
|[summary](../api/identitygovernance-userprocessingresult-summary.md)|[microsoft.graph.identityGovernance.userSummary](../resources/identitygovernance-usersummary.md)|Provides a summary of user processing results for a specified time period.|
|[List taskProcessingResults for a userProcessingResult](../api/identitygovernance-userprocessingresult-list-taskprocessingresults.md)|[microsoft.graph.identityGovernance.taskReport](../resources/identitygovernance-taskprocessingresult.md) collection|Get a list of the [taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) objects and their properties.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|completedDateTime|DateTimeOffset|The date time that the workflow execution for a user completed. Value is null if the workflow hasn't completed.<br><br>Supports `$filter`(`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderby`.|
|failedTasksCount|Int32|The number of tasks that failed in the workflow execution.|
|id|String|Identifier used for individually addressing a specific user processing result.Inherited from [entity](../resources/entity.md).<br><br>Supports `$filter`(`eq`, `ne`) and `$orderby`.|
|processingStatus|microsoft.graph.identityGovernance.lifecycleWorkflowProcessingStatus|The workflow execution status. The possible values are: `queued`, `inProgress`, `completed`, `completedWithErrors`, `canceled`, `failed`, `unknownFutureValue`.<br><br>Supports `$filter`(`eq`, `ne`) and `$orderby`.|
|scheduledDateTime|DateTimeOffset|The date time that the workflow is scheduled to be executed for a user.<br><br>Supports `$filter`(`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderby`.|
|startedDateTime|DateTimeOffset|The date time that the workflow execution started. Value is `null` if the workflow execution has not started.<br><br>Supports `$filter`(`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderby`.|
|totalTasksCount|Int32|The total number of tasks that in the workflow execution.|
|totalUnprocessedTasksCount|Int32|The total number of unprocessed tasks for the workflow.|
|workflowExecutionType|microsoft.graph.identityGovernance.workflowExecutionType|Describes the execution type of the workflow. The possible values are: `scheduled`, `onDemand`, `unknownFutureValue`.<br><br>Supports `$filter`(`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderby`.|
|workflowVersion|Int32|The version of the workflow that was executed.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|subject|[user](../resources/user.md)|The unique identifier of the AAD user targeted for the `taskProcessingResult`.<br><br>Supports `$filter`(`eq`, `ne`) and `$expand`.|
|taskProcessingResults|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) collection|The associated individual task execution.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.userProcessingResult",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.userProcessingResult",
  "id": "String (identifier)",
  "completedDateTime": "String (timestamp)",
  "failedTasksCount": "Integer",
  "processingStatus": "String",
  "scheduledDateTime": "String (timestamp)",
  "startedDateTime": "String (timestamp)",
  "totalTasksCount": "Integer",
  "totalUnprocessedTasksCount": "Integer",
  "workflowExecutionType": "String",
  "workflowVersion": "Integer"
}
```
