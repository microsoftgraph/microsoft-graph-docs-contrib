---
title: "taskProcessingResult resource type"
description: "Methods, properties, and relationships of the taskProcessingResults resource type"
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# taskProcessingResult resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resource type noting the task processing results of tasks processed in workflows created using Lifecycle Workflows.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List taskProcessingResults](../api/identitygovernance-userprocessingresult-list-taskprocessingresults.md)|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) collection|Get a list of the [taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) objects and their properties.|
|[Get taskProcessingResult](../api/identitygovernance-taskprocessingresult-get.md)|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md)|Read the properties and relationships of a [taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) object.|
|[resume](../api/identitygovernance-taskprocessingresult-resume.md)|None|Resume the **taskProcessingResult**.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|completedDateTime|DateTimeOffset|The date time when `taskProcessingResult` execution ended. Value is `null` if task execution has not yet ended.|
|createdDateTime|DateTimeOffset|The date time when the `taskProcessingResult` was created. <br><br>Supports `$filter`(`lt`,`gt`) and `orderby`.|
|failureReason|String|Describes why the `taskProcessingResult` has failed.|
|id|String|Identifier used for individually addressing a specific task processing result. Inherited from [entity](../resources/entity.md).|
|processingStatus|String|Describes the execution status of the `taskProcessingResult`. The possible values are: `queued`, `inProgress`, `completed`, `completedWithErrors`, `canceled`, `failed`, `unknownFutureValue`. <br><br>Supports `$filter`(`eq`).|
|startedDateTime|DateTimeOffset|The date time when `taskProcessingResult` execution started. Value is `null` if task execution not yet started. <br><br>Supports `$filter`(`lt`,`gt`) and `orderby`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|subject|[user](../resources/user.md)|The unique identifier of the AAD user targeted for the `taskProcessingResult`.|
|task|[task](../resources/identitygovernance-task.md)|The related task|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.taskProcessingResult",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.taskProcessingResult",
  "id": "String (identifier)",
  "completedDateTime": "String (timestamp)",
  "createdDateTime": "String (timestamp)",
  "failureReason": "String",
  "processingStatus": "String",
  "startedDateTime": "String (timestamp)"
}
```
