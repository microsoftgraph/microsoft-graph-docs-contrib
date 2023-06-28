---
title: "taskReport resource type"
description: "Reports on the results of processing tasks in a lifecycle workflow which are aggregated on task and run level"
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# taskReport resource type

Namespace: microsoft.graph.identityGovernance

An aggregation of [task processing results](../resources/identitygovernance-taskprocessingresult.md) for a specific [workflow task](../resources/identitygovernance-task.md) within a [workflow run](../resources/identitygovernance-run.md). With this report, the health status of a workflow task within a workflow run can be easily determined and thus the source of error can be identified more quickly should a workflow run not have been completed successfully.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List taskReports](../api/identitygovernance-workflow-list-taskreports.md)|[microsoft.graph.identityGovernance.taskReport](../resources/identitygovernance-taskreport.md) collection|Get a list of the [taskReport](../resources/identitygovernance-taskreport.md) objects and their properties.|
|[Summary](../api/identitygovernance-taskreport-summary.md)|[microsoft.graph.identityGovernance.taskReportSummary](../resources/identitygovernance-taskreportsummary.md)|Read the properties and relationships of a [taskReport](../resources/identitygovernance-taskreport.md) object.|
|[List taskProcessingResults](../api/identitygovernance-taskreport-list-taskprocessingresults.md)|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) collection|Get the taskProcessingResult resources for a task report.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|completedDateTime|DateTimeOffset|The date time that the associated run completed. Value is `null` if the run has not completed.<br><br>Supports `$filter`(`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderby`.|
|failedUsersCount|Int32|The number of users in the run execution for which the associated task failed.<br><br>Supports `$filter`(`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderby`.|
|id|String|The unique identifier of the task report. Inherited from [entity](../resources/entity.md).<br><br>Supports `$filter`(`eq`, `ne`) and `$orderby`.|
|lastUpdatedDateTime|DateTimeOffset|The date and time that the task report was last updated.|
|processingStatus|[microsoft.graph.identityGovernance.lifecycleWorkflowProcessingStatus](../resources/identitygovernance-taskprocessingresult.md)|The processing status of the associated task based on the taskProcessingResults. The possible values are based on the number of `queued`, `inProgress`, `completed`, `completedWithErrors`, `canceled`, `failed`, and `unknownFutureValue`.<br><br>Supports `$filter`(`eq`, `ne`) and `$orderby`.|
|runId|String|The unique identifier of the associated [run](../resources/identitygovernance-run.md).|
|startedDateTime|DateTimeOffset|The date time that the associated run started. Value is `null` if the run has not started.|
|successfulUsersCount|Int32|The number of users in the run execution for which the associated task succeeded.<br><br>Supports `$filter`(`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderby`.|
|totalUsersCount|Int32|The total number of users in the run execution for which the associated task was scheduled to execute.<br><br>Supports `$filter`(`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderby`.|
|unprocessedUsersCount|Int32|The number of users in the run execution for which the associated task is `queued`, `in progress`, or `canceled`.<br><br>Supports `$filter`(`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderby`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|task|[microsoft.graph.identityGovernance.taskDefinition](../resources/identitygovernance-task.md)|The related lifecycle workflow task.<br><br>Supports `$filter`(`eq`, `ne`) and `$expand`.|
|taskDefinition|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-taskdefinition.md)|The taskDefinition associated with the related lifecycle workflow task.<br><br>Supports `$filter`(`eq`, `ne`) and `$expand`.|
|taskProcessingResults|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) collection|The related lifecycle workflow taskProcessingResults.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.taskReport",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.taskReport",
  "id": "String (identifier)",
  "runId": "String",
  "processingStatus": "String",
  "successfulUsersCount": "Integer",
  "failedUsersCount": "Integer",
  "unprocessedUsersCount": "Integer",
  "totalUsersCount": "Integer",
  "startedDateTime": "String (timestamp)",
  "completedDateTime": "String (timestamp)",
  "lastUpdatedDateTime": "String (timestamp)"
}
```
