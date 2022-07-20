---
title: "userProcessingResult resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# userProcessingResult resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List userProcessingResults](../api/identitygovernance-run-list-userprocessingresults.md)|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md) collection|Get a list of the [userProcessingResult](../resources/identitygovernance-userprocessingresult.md) objects and their properties.|
|[Create userProcessingResult](../api/identitygovernance-run-post-userprocessingresults.md)|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md)|Create a new [userProcessingResult](../resources/identitygovernance-userprocessingresult.md) object.|
|[Get userProcessingResult](../api/identitygovernance-userprocessingresult-get.md)|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md)|Read the properties and relationships of a [userProcessingResult](../resources/identitygovernance-userprocessingresult.md) object.|
|[Update userProcessingResult](../api/identitygovernance-userprocessingresult-update.md)|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md)|Update the properties of a [userProcessingResult](../resources/identitygovernance-userprocessingresult.md) object.|
|[Delete userProcessingResult](../api/identitygovernance-run-delete-userprocessingresults.md)|None|Deletes a [userProcessingResult](../resources/identitygovernance-userprocessingresult.md) object.|
|[summary](../api/identitygovernance-userprocessingresult-summary.md)|[microsoft.graph.identityGovernance.userSummary](../resources/identitygovernance-usersummary.md)|**TODO: Add Description**|
|[usersSummary](../api/identitygovernance-userprocessingresult-userssummary.md)|[microsoft.graph.identityGovernance.usersProcessingSummary](../resources/identitygovernance-usersprocessingsummary.md)|**TODO: Add Description**|
|[List user](../api/invitation-list-inviteduser.md)|[microsoft.graph.user](../resources/user.md) collection|Get the user resources from the subject navigation property.|
|[Add user](../api/identitygovernance-userprocessingresult-post-subject.md)|[microsoft.graph.user](../resources/user.md)|Add subject by posting to the subject collection.|
|[Remove user](../api/identitygovernance-userprocessingresult-delete-subject.md)|None|Remove a [user](../resources/user.md) object.|
|[List taskProcessingResults](../api/identitygovernance-userprocessingresult-list-taskprocessingresults.md)|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) collection|Get the taskProcessingResult resources from the taskProcessingResults navigation property.|
|[Create taskProcessingResult](../api/identitygovernance-userprocessingresult-post-taskprocessingresults.md)|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md)|Create a new taskProcessingResult object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|completedDateTime|DateTimeOffset|**TODO: Add Description**|
|failedTasksCount|Int32|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|processingStatus|lifecycleWorkflowProcessingStatus|**TODO: Add Description**.The possible values are: `queued`, `inProgress`, `completed`, `completedWithErrors`, `canceled`, `failed`, `unknownFutureValue`.|
|scheduledDateTime|DateTimeOffset|**TODO: Add Description**|
|startedDateTime|DateTimeOffset|**TODO: Add Description**|
|totalTasksCount|Int32|**TODO: Add Description**|
|totalUnprocessedTasksCount|Int32|**TODO: Add Description**|
|workflowExecutionType|workflowExecutionType|**TODO: Add Description**.The possible values are: `scheduled`, `onDemand`, `unknownFutureValue`.|
|workflowVersion|Int32|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|subject|[user](../resources/user.md)|**TODO: Add Description**|
|taskProcessingResults|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) collection|**TODO: Add Description**|

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

