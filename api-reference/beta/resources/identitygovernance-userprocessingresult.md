---
title: "userProcessingResult resource type"
description: "Methods, properties, and relationships of the userProcessingResult resource type*"
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# userProcessingResult resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resource type denoting user processing results for users processed by workflows created using Lifecycle Workflows. Total tasks are shown along with individual results for unprocessed  tasks, and processing status for the results.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List userProcessingResults](../api/identitygovernance-userprocessingresult-list.md)|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md) collection|Get a list of the [userProcessingResult](../resources/identitygovernance-userprocessingresult.md) objects and their properties.|
|[Get userProcessingResult](../api/identitygovernance-userprocessingresult-get.md)|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md)|Read the properties and relationships of a [userProcessingResult](../resources/identitygovernance-userprocessingresult.md) object.|
|[summary](../api/identitygovernance-userprocessingresult-summary.md)|[microsoft.graph.identityGovernance.usersProcessingSummary](../resources/identitygovernance-usersprocessingsummary.md)|Provides a summary of the user processing result object|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|completedDateTime|DateTimeOffset|The date time that the workflow execution for a user completed. Value is null if the workflow hasn't completed. <br><br>Supports `$filter`(`lt`, `gt`) and `$orderby`.|
|failedTasksCount|Int32|The number of tasks that failed in the workflow execution.|
|id|String|Identifier used for individually addressing a specific user processing result. Inherited from [entity](../resources/entity.md).|
|processingStatus|String|The workflow execution status. The possible values are: `queued`, `inProgress`, `completed`, `completedWithErrors`, `canceled`, `failed`, `unknownFutureValue`.|
|scheduledDateTime|DateTimeOffset|The date time that the workflow is scheduled to be executed for a user.|
|startedDateTime|DateTimeOffset|The date time that the workflow execution started. Value is `null` if the workflow execution has not started. <br><br>Supports `$filter`(`lt`, `gt`) and `$orderby`.|
|totalTasksCount|Int32|The total number of tasks that in the workflow execution.|
|totalUnprocessedTasksCount|Int32|The total number of unprocessed tasks for the workflow.|
|workflowExecutionType|String|Describes the execution type of the workflow. The possible values are: `scheduled`, `onDemand`, `unknownFutureValue`. <br><br>Supports `$filter`(`eq`, `ne`).|
|workflowVersion|Int32|The version of the workflow that was executed.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|subject|[user](../resources/user.md)|The unique identifier of the AAD user targeted for the `taskProcessingResult`.|
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
