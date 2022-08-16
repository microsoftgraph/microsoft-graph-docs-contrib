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
|[List userProcessingResults](../api/identitygovernance-run-list-userprocessingresults.md)|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md) collection|Get a list of the [userProcessingResult](../resources/identitygovernance-userprocessingresult.md) objects and their properties.|
|[Create userProcessingResult](../api/identitygovernance-run-post-userprocessingresults.md)|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md)|Create a new [userProcessingResult](../resources/identitygovernance-userprocessingresult.md) object.|
|[Get userProcessingResult](../api/identitygovernance-userprocessingresult-get.md)|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md)|Read the properties and relationships of a [userProcessingResult](../resources/identitygovernance-userprocessingresult.md) object.|
|[Update userProcessingResult](../api/identitygovernance-userprocessingresult-update.md)|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md)|Update the properties of a [userProcessingResult](../resources/identitygovernance-userprocessingresult.md) object.|
|[Delete userProcessingResult](../api/identitygovernance-run-delete-userprocessingresults.md)|None|Deletes a [userProcessingResult](../resources/identitygovernance-userprocessingresult.md) object.|
|[summary](../api/identitygovernance-userprocessingresult-summary.md)|[microsoft.graph.identityGovernance.userSummary](../resources/identitygovernance-usersummary.md)|Provides a summary of the user processing result object|
|[usersSummary](../api/identitygovernance-userprocessingresult-userssummary.md)|[microsoft.graph.identityGovernance.usersProcessingSummary](../resources/identitygovernance-usersprocessingsummary.md)|user processing summary object of a user summary.|
|[List user](../api/invitation-list-inviteduser.md)|[microsoft.graph.user](../resources/user.md) collection|Get the user resources from the subject navigation property.|
|[Add user](../api/identitygovernance-userprocessingresult-post-subject.md)|[microsoft.graph.user](../resources/user.md)|Add subject by posting to the subject collection.|
|[Remove user](../api/identitygovernance-userprocessingresult-delete-subject.md)|None|Remove a [user](../resources/user.md) object.|
|[List taskProcessingResults](../api/identitygovernance-userprocessingresult-list-taskprocessingresults.md)|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) collection|Get the taskProcessingResult resources from the taskProcessingResults navigation property.|
|[Create taskProcessingResult](../api/identitygovernance-userprocessingresult-post-taskprocessingresults.md)|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md)|Create a new taskProcessingResult object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|completedDateTime|DateTimeOffset|The date and time of a completed user processing result.|
|failedTasksCount|Int32|Numerical count of failed tasks for users processed.|
|id|String|Identifier used for individually addressing a specific user processing result. Inherited from [entity](../resources/entity.md).|
|processingStatus|String|The processing status of a .The possible values are: `queued`, `inProgress`, `completed`, `completedWithErrors`, `canceled`, `failed`, `unknownFutureValue`.|
|scheduledDateTime|DateTimeOffset|The time and date of a scheduled workflow to be processed for a user.|
|startedDateTime|DateTimeOffset|The date and time when a user processing result was started.|
|totalTasksCount|Int32|Numerical count of total tasks.|
|totalUnprocessedTasksCount|Int32|Numerical count of unprocessed tasks for a user.|
|workflowExecutionType|String|The workflow execution type of a workflow. The possible values are: `scheduled`, `onDemand`, `unknownFutureValue`.|
|workflowVersion|Int32|The workflow version.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|subject|[user](../resources/user.md)|User the processing result is being run for|
|taskProcessingResults|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) collection|task processing information that is ran for a user being returned in the results.|

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
