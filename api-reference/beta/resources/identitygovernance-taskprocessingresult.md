---
title: "taskProcessingResult resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# taskProcessingResult resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List taskProcessingResults](../api/identitygovernance-userprocessingresult-list-taskprocessingresults.md)|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) collection|Get a list of the [taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) objects and their properties.|
|[Create taskProcessingResult](../api/identitygovernance-userprocessingresult-post-taskprocessingresults.md)|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md)|Create a new [taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) object.|
|[Get taskProcessingResult](../api/identitygovernance-taskprocessingresult-get.md)|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md)|Read the properties and relationships of a [taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) object.|
|[Update taskProcessingResult](../api/identitygovernance-taskprocessingresult-update.md)|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md)|Update the properties of a [taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) object.|
|[Delete taskProcessingResult](../api/identitygovernance-userprocessingresult-delete-taskprocessingresults.md)|None|Deletes a [taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) object.|
|[resume](../api/identitygovernance-taskprocessingresult-resume.md)|None|**TODO: Add Description**|
|[List user](../api/invitation-list-inviteduser.md)|[microsoft.graph.user](../resources/user.md) collection|Get the user resources from the subject navigation property.|
|[Add user](../api/identitygovernance-taskprocessingresult-post-subject.md)|[microsoft.graph.user](../resources/user.md)|Add subject by posting to the subject collection.|
|[Remove user](../api/identitygovernance-taskprocessingresult-delete-subject.md)|None|Remove a [user](../resources/user.md) object.|
|[List task](../api/identitygovernance-taskprocessingresult-list-task.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|Get the task resources from the task navigation property.|
|[Add task](../api/identitygovernance-taskprocessingresult-post-task.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md)|Add task by posting to the task collection.|
|[Remove task](../api/identitygovernance-taskprocessingresult-delete-task.md)|None|Remove a [task](../resources/identitygovernance-task.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|completedDateTime|DateTimeOffset|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|failureReason|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|processingStatus|lifecycleWorkflowProcessingStatus|**TODO: Add Description**.The possible values are: `queued`, `inProgress`, `completed`, `completedWithErrors`, `canceled`, `failed`, `unknownFutureValue`.|
|startedDateTime|DateTimeOffset|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|subject|[user](../resources/user.md)|**TODO: Add Description**|
|task|[task](../resources/identitygovernance-task.md)|**TODO: Add Description**|

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

