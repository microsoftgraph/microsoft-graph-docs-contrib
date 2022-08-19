---
title: "taskReport resource type"
description: "description of the task report resource type methods, properties, and relationships"
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
|[List taskReports](../api/identitygovernance-workflow-list-taskreports.md)|[microsoft.graph.identityGovernance.taskReport](../resources/identitygovernance-taskreport.md) collection|Get a list of the [taskReport](../resources/identitygovernance-taskreport.md) objects and their properties.|
|[Get taskReport](../api/identitygovernance-taskreport-get.md)|[microsoft.graph.identityGovernance.taskReport](../resources/identitygovernance-taskreport.md)|Read the properties and relationships of a [taskReport](../resources/identitygovernance-taskreport.md) object.|
|[List taskProcessingResults](../api/identitygovernance-task-list-taskprocessingresults.md)|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) collection|Get the taskProcessingResult resources from the taskProcessingResults navigation property.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|completedDateTime|DateTimeOffset|The date time that the task report completed completed.|
|failedUsersCount|Int32|The number of tasks that failed for users.|
|id|String|A unique identifier for the task report. Inherited from [entity](../resources/entity.md).|
|lastUpdatedDateTime|DateTimeOffset|The date and time that the task report was last updated.|
|processingStatus|String|The task report execution status.The possible values are: `queued`, `inProgress`, `completed`, `completedWithErrors`, `canceled`, `failed`, `unknownFutureValue`.|
|runId|String|The run id of the task report.|
|startedDateTime|DateTimeOffset|The date and time that the task report execution started.|
|successfulUsersCount|Int32|The number of successfully completed users in the task report.|
|totalUsersCount|Int32|The total number of users in the task report.|
|unprocessedUsersCount|Int32|The unprocessed user count of the task report.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|task|[task](../resources/identitygovernance-task.md)|The tasks in the report.|
|taskDefinition|[microsoft.graph.identityGovernance.taskDefinition](../resources/identitygovernance-taskdefinition.md)|The task definition of tasks in the report.|
|taskProcessingResults|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) collection|The task processing results of the tasks in the report.|

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
