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
|completedDateTime|DateTimeOffset|The date and time of when a task is completed.|
|createdDateTime|DateTimeOffset|The date and time of when a task is created. <br><br>Supports `$filter`(`lt`,`gt`) and `orderby`.|
|failureReason|String|The reason why a task failed.|
|id|String|Identifier used for individually addressing a specific task processing result. Inherited from [entity](../resources/entity.md).|
|processingStatus|String|The processing status of a task. The possible values are: `queued`, `inProgress`, `completed`, `completedWithErrors`, `canceled`, `failed`, `unknownFutureValue`. <br><br>Supports `$filter`(`eq`).|
|startedDateTime|DateTimeOffset|The date and time when a task is started. <br><br>Supports `$filter`(`lt`,`gt`) and `orderby`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|subject|[user](../resources/user.md)|The subject of the taskProcessingResult.|
|task|[task](../resources/identitygovernance-task.md)|The task having processing results generated.|

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
