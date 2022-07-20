---
title: "run resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# run resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List runs](../api/identitygovernance-workflow-list-runs.md)|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md) collection|Get a list of the [run](../resources/identitygovernance-run.md) objects and their properties.|
|[Create run](../api/identitygovernance-workflow-post-runs.md)|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md)|Create a new [run](../resources/identitygovernance-run.md) object.|
|[Get run](../api/identitygovernance-run-get.md)|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md)|Read the properties and relationships of a [run](../resources/identitygovernance-run.md) object.|
|[Update run](../api/identitygovernance-run-update.md)|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md)|Update the properties of a [run](../resources/identitygovernance-run.md) object.|
|[Delete run](../api/identitygovernance-workflow-delete-runs.md)|None|Deletes a [run](../resources/identitygovernance-run.md) object.|
|[summary](../api/identitygovernance-run-summary.md)|[microsoft.graph.identityGovernance.runSummary](../resources/identitygovernance-runsummary.md)|**TODO: Add Description**|
|[List userProcessingResults](../api/identitygovernance-run-list-userprocessingresults.md)|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md) collection|Get the userProcessingResult resources from the userProcessingResults navigation property.|
|[Create userProcessingResult](../api/identitygovernance-run-post-userprocessingresults.md)|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md)|Create a new userProcessingResult object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|completedDateTime|DateTimeOffset|**TODO: Add Description**|
|failedTasksCount|Int32|**TODO: Add Description**|
|failedUsersCount|Int32|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastUpdatedDateTime|DateTimeOffset|**TODO: Add Description**|
|processingStatus|lifecycleWorkflowProcessingStatus|**TODO: Add Description**.The possible values are: `queued`, `inProgress`, `completed`, `completedWithErrors`, `canceled`, `failed`, `unknownFutureValue`.|
|scheduledDateTime|DateTimeOffset|**TODO: Add Description**|
|startedDateTime|DateTimeOffset|**TODO: Add Description**|
|successfulUsersCount|Int32|**TODO: Add Description**|
|totalUnprocessedTasksCount|Int32|**TODO: Add Description**|
|totalUsersCount|Int32|**TODO: Add Description**|
|workflowExecutionType|workflowExecutionType|**TODO: Add Description**.The possible values are: `scheduled`, `onDemand`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|userProcessingResults|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.run",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.run",
  "id": "String (identifier)",
  "completedDateTime": "String (timestamp)",
  "failedTasksCount": "Integer",
  "failedUsersCount": "Integer",
  "lastUpdatedDateTime": "String (timestamp)",
  "processingStatus": "String",
  "startedDateTime": "String (timestamp)",
  "scheduledDateTime": "String (timestamp)",
  "successfulUsersCount": "Integer",
  "totalUsersCount": "Integer",
  "totalUnprocessedTasksCount": "Integer",
  "workflowExecutionType": "String"
}
```

