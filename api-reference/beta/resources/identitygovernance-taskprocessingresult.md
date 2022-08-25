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
|[resume](../api/identitygovernance-taskprocessingresult-resume.md)|None|Resumes the **taskProcessingResult** as part of the Azure Logic App integration.|

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
    "completedDateTime": "2022-08-24T23:28:05.3529197Z",
    "createdDateTime": "2022-08-24T23:28:04.5490995Z",
    "id": "05a96d7a-0e00-459c-b6c8-1870099e8275",
    "processingStatus": "completed",
    "startedDateTime": "2022-08-24T23:28:05.1234966Z",
    "failureReason": null,
    "subject": {
        "id": "ea09ac2e-77e3-4134-85f2-25ccf3c33387"
    },
    "task": {
        "category": "joiner,leaver",
        "continueOnError": false,
        "description": "Enable user account in the directory",
        "displayName": "Enable User Account",
        "executionSequence": 1,
        "id": "917e9eab-415d-4e45-b39d-87eb5e30de38",
        "isEnabled": true,
        "taskDefinitionId": "6fc52c9d-398b-4305-9763-15f42c1676fc",
        "arguments": []
    }
}
```
