---
title: "run resource type"
description: "Represents the runs of a lifecycle workflow."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# run resource type

Namespace: microsoft.graph.identityGovernance

Represents the result of a [lifecycle workflow](../resources/identitygovernance-workflow.md) that ran for a collection of users because they fulfilled the [conditions](../resources/identitygovernance-workflowexecutionconditions.md) of the lifecycle workflow. The result is an aggregation of all [user processing results](../resources/identitygovernance-userprocessingresult.md) of the users that were either processed within an [interval](../resources/identitygovernance-lifecyclemanagementsettings.md#properties) or were part of an [on-demand execution](../api/identitygovernance-workflow-activate.md).

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List runs](../api/identitygovernance-workflow-list-runs.md)|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md) collection|Get a list of the [run](../resources/identitygovernance-run.md) objects and their properties.|
|[Get runs](../api/identitygovernance-run-get.md)|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md)|Read the properties and relationships of a [run](../resources/identitygovernance-run.md) object.|
|[Get summary](../api/identitygovernance-run-summary.md)|[microsoft.graph.identityGovernance.runSummary](../resources/identitygovernance-runsummary.md)|Get a summary of workflows runs.|
|[List task processing results](../api/identitygovernance-run-list-taskprocessingresults.md)|[microsoft.graph.identityGovernance.taskReportSummary](../resources/identitygovernance-taskprocessingresult.md)|List task processing results from a run.|
|[List reprocessedRuns](../api/identitygovernance-run-list-reprocessedruns.md)|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md) collection|Get a list of the workflow's reprocessed runs.|
|[Remove reprocessedRuns](../api/identitygovernance-run-delete-reprocessedruns.md)|None|Delete a reprocessed run object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|activatedOnScope|[microsoft.graph.identityGovernance.activationScope](../resources/identitygovernance-activationscope.md)|The scope for which the workflow runs.|
|completedDateTime|DateTimeOffset|The date time that the run completed. Value is `null` if the workflow hasn't completed.<br><br>Supports `$filter`(`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderby`.|
|failedTasksCount|Int32|The number of tasks that failed in the run execution.|
|failedUsersCount|Int32|The number of users that failed in the run execution.|
|id|String|A unique identifier for the workflow run.|
|lastUpdatedDateTime|DateTimeOffset|The datetime that the run was last updated.<br><br>Supports `$filter`(`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderby`.|
|processingStatus|microsoft.graph.identityGovernance.lifecycleWorkflowProcessingStatus|The run execution status. The possible values are: `queued`, `inProgress`, `completed`, `completedWithErrors`, `canceled`, `failed`, `unknownFutureValue`.<br><br>Supports `$filter`(`eq`, `ne`) and `$orderby`.|
|scheduledDateTime|DateTimeOffset|The date time that the run is scheduled to be executed for a workflow.<br><br>Supports `$filter`(`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderby`.|
|startedDateTime|DateTimeOffset|The date time that the run execution started.<br><br>Supports `$filter`(`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderby`.|
|successfulUsersCount|Int32|The number of successfully completed users in the run.|
|totalUsersCount|Int32|The total number of users in the workflow execution.|
|totalTasksCounts|Int32|The total number of tasks in the run execution.|
|totalUnprocessedTasksCount|Int32|The total number of unprocessed tasks in the run execution.|
|workflowExecutionType|microsoft.graph.identityGovernance.workflowExecutionType|The execution type of the workflows associated with the run. The possible values are: `scheduled`, `onDemand`, `unknownFutureValue`, `activatedWithScope`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `activatedWithScope`.<br><br>Supports `$filter`(`eq`, `ne`) and `$orderby`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|reprocessedRuns|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md) collection|The related reprocessed workflow run.|
|userProcessingResults|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md) collection|The associated individual user execution.|
|taskProcessingResults|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) collection|The related taskProcessingResults.|
|taskReports|[microsoft.graph.identityGovernance.taskReport](../resources/identitygovernance-taskreport.md) collection|The related taskProcessingReports.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.run",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.run",
  "id": "String (identifier)",
  "completedDateTime": "String (timestamp)",
  "failedTasksCount": "Integer",
  "failedUsersCount": "Integer",
  "lastUpdatedDateTime": "String (timestamp)",
  "processingStatus": "String",
  "startedDateTime": "String (timestamp)",
  "scheduledDateTime": "String (timestamp)",
  "successfulUsersCount": "Integer",
  "totalTasksCounts": "Integer",
  "totalUsersCount": "Integer",
  "totalUnprocessedTasksCount": "Integer",
  "workflowExecutionType": "String"
}
```
