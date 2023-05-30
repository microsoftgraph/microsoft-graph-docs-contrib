---
title: "taskProcessingResult resource type"
description: "Reports on the results of processing tasks in a lifecycle workflow."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# taskProcessingResult resource type

Namespace: microsoft.graph.identityGovernance

Result of a [workflow task](../resources/identitygovernance-task.md) that was executed for a specific user because the workflow task was part of the [lifecycle workflow](../resources/identitygovernance-workflow.md) for which the user fulfilled the [execution conditions](../resources/identitygovernance-workflowexecutionconditions.md).

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[resume](../api/identitygovernance-taskprocessingresult-resume.md)|None|Resumes the **taskProcessingResult** as part of the Azure Logic App integration.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|completedDateTime|DateTimeOffset|The date time when taskProcessingResult execution ended. Value is `null` if task execution is still in progress.<br><br>Supports `$filter`(`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderby`.|
|createdDateTime|DateTimeOffset|The date time when the taskProcessingResult was created.<br><br>Supports `$filter`(`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderby`.|
|failureReason|String|Describes why the taskProcessingResult has failed.|
|id|String|Identifier used for individually addressing a specific task processing result. Inherited from [entity](../resources/entity.md).<br><br>Supports `$filter`(`eq`, `ne`) and `$orderby`.|
|processingStatus|[microsoft.graph.identityGovernance.lifecycleWorkflowProcessingStatus](../resources/identitygovernance-taskprocessingresult.md)|Describes the execution status of the `taskProcessingResult`. The possible values are: `queued`, `inProgress`, `completed`, `completedWithErrors`, `canceled`, `failed`, `unknownFutureValue`.<br><br>Supports `$filter`(`eq`, `ne`) and `$orderby`.|
|startedDateTime|DateTimeOffset|The date time when taskProcessingResult execution started. Value is `null` if task execution has not yet started.<br><br>Supports `$filter`(`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderby`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|subject|[user](../resources/user.md)|The unique identifier of the Azure AD user targeted for the task execution.<br><br>Supports `$filter`(`eq`, `ne`) and `$expand`.|
|task|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md)|The related workflow task|

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
