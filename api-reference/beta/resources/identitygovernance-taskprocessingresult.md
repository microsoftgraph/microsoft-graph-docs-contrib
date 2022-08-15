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
|[Create taskProcessingResult](../api/identitygovernance-userprocessingresult-post-taskprocessingresults.md)|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md)|Create a new [taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) object.|
|[Get taskProcessingResult](../api/identitygovernance-taskprocessingresult-get.md)|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md)|Read the properties and relationships of a [taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) object.|
|[Update taskProcessingResult](../api/identitygovernance-taskprocessingresult-update.md)|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md)|Update the properties of a [taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) object.|
|[Delete taskProcessingResult](../api/identitygovernance-userprocessingresult-delete-taskprocessingresults.md)|None|Deletes a [taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) object.|
|[resume](../api/identitygovernance-taskprocessingresult-resume.md)|None|Resume the **taskProcessingResult**.|
|[List user](../api/invitation-list-inviteduser.md)|[microsoft.graph.user](../resources/user.md) collection|Get the user resources from the subject navigation property.|
|[Add user](../api/identitygovernance-taskprocessingresult-post-subject.md)|[microsoft.graph.user](../resources/user.md)|Add subject by posting to the subject collection.|
|[Remove user](../api/identitygovernance-taskprocessingresult-delete-subject.md)|None|Remove a [user](../resources/user.md) object.|
|[List task](../api/identitygovernance-taskprocessingresult-list-task.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|Get the task resources from the task navigation property.|
|[Add task](../api/identitygovernance-taskprocessingresult-post-task.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md)|Add task by posting to the task collection.|
|[Remove task](../api/identitygovernance-taskprocessingresult-delete-task.md)|None|Remove a [task](../resources/identitygovernance-task.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|completedDateTime|DateTimeOffset|The date and time of when a task is completed.|
|createdDateTime|DateTimeOffset|The date and time of when a task is created.|
|failureReason|String|The reason why a task failed.|
|id|String|Identifier used for individually addressing a specific task processing result. Inherited from [entity](../resources/entity.md).|
|processingStatus|lifecycleWorkflowProcessingStatus|The processing status of a task. The possible values are: `queued`, `inProgress`, `completed`, `completedWithErrors`, `canceled`, `failed`, `unknownFutureValue`.|
|startedDateTime|DateTimeOffset|The date and time when a task is started.|

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
