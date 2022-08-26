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

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resource type denoting the task report of a workflow created using Lifecycle Workflows. This includes every task workflow has run, its successfully and unsuccessfully processed users , its successful and unsuccessful tasks, and its total number of users processed.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List taskReports](../api/identitygovernance-taskreport-list.md)|[microsoft.graph.identityGovernance.taskReport](../resources/identitygovernance-taskreport.md) collection|Get a list of the [taskReport](../resources/identitygovernance-taskreport.md) objects and their properties.|
|[Summary](../api/identitygovernance-taskreport-summary.md)|[microsoft.graph.identityGovernance.taskReport](../resources/identitygovernance-taskreport.md)|Read the properties and relationships of a [taskReport](../resources/identitygovernance-taskreport.md) object.|
|[List taskProcessingResults](../api/identitygovernance-taskreport-list-taskprocessingresult.md)|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) collection|Get the taskProcessingResult resources from the taskProcessingResults navigation property.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|completedDateTime|DateTimeOffset|The date time that the associated run completed. Value is `null` if the run has not completed.|
|failedUsersCount|Int32|The number of users in the run execution for which the associated task failed.|
|id|String|The unique identifier of the task report. Inherited from [entity](../resources/entity.md).|
|lastUpdatedDateTime|DateTimeOffset|The date and time that the task report was last updated.|
|processingStatus|String|The processing status of the associated task based on the number of `successful`, `failed`, and `canceled` taskProcessingResults.|
|runId|String|The unique identifier of the associated [run](../resources/identitygovernance-run).|
|startedDateTime|DateTimeOffset|The date time that the associated run started. Value is `null` if the run has not started.|
|successfulUsersCount|Int32|The number of users in the run execution for which the associated task succeeded.|
|totalUsersCount|Int32|The total number of users in the run execution for which the associated task was scheduled to execute.|
|unprocessedUsersCount|Int32|The number of users in the run execution for which the associated task is `queued`, `in progress`, or `canceled`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|task|[task](../resources/identitygovernance-task.md)|The related taskProcessingResults.|
|taskDefinition|[microsoft.graph.identityGovernance.taskDefinition](../resources/identitygovernance-taskdefinition.md)|The taskDefinition associated with the related task.|
|taskProcessingResults|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) collection|The related taskProcessingResults.|

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
