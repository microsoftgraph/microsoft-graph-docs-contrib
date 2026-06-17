---
title: "subjectProcessingResult resource type"
description: "Represents the processing results for a single subject in a lifecycle workflow run."
author: "masonwolff"
ms.date: 05/26/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# subjectProcessingResult resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the processing results for a single subject (for example, a provisioning object) in a lifecycle workflow run. This resource mirrors [userProcessingResult](../resources/identitygovernance-userprocessingresult.md) but uses a [workflowSubject](../resources/identitygovernance-workflowsubject.md)-typed **subject** property to support non-user subjects.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List (from run)](../api/identitygovernance-run-list-subjectprocessingresults.md)|[microsoft.graph.identityGovernance.subjectProcessingResult](../resources/identitygovernance-subjectprocessingresult.md) collection|Get a list of the subjectProcessingResult objects and their properties from a run.|
|[List (from taskReport)](../api/identitygovernance-taskreport-list-subjectprocessingresults.md)|[microsoft.graph.identityGovernance.subjectProcessingResult](../resources/identitygovernance-subjectprocessingresult.md) collection|Get a list of the subjectProcessingResult objects and their properties from a taskReport.|
|[Get](../api/identitygovernance-subjectprocessingresult-get.md)|[microsoft.graph.identityGovernance.subjectProcessingResult](../resources/identitygovernance-subjectprocessingresult.md)|Read the properties and relationships of a subjectProcessingResult object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|completedDateTime|DateTimeOffset|The date and time when the subject processing completed. Read-only.|
|failedTasksCount|Int32|The count of tasks that failed for the subject. Read-only.|
|id|String|The unique identifier for the subject processing result. Inherited from [entity](../resources/entity.md). Read-only.|
|processingStatus|[microsoft.graph.identityGovernance.lifecycleWorkflowProcessingStatus](../resources/enums-identitygovernance-lifecycleworkflowprocessingstatus.md)|The overall processing status for the subject. Read-only. Supports `$filter` (`eq`, `ne`).|
|scheduledDateTime|DateTimeOffset|The date and time when processing was scheduled. Read-only.|
|startedDateTime|DateTimeOffset|The date and time when processing started. Read-only.|
|subject|[microsoft.graph.identityGovernance.workflowSubject](../resources/identitygovernance-workflowsubject.md)|The subject for which tasks were processed. Read-only.|
|totalTasksCount|Int32|The total number of tasks in the workflow. Read-only.|
|totalUnprocessedTasksCount|Int32|The count of tasks that have not yet been processed. Read-only.|
|workflowExecutionType|microsoft.graph.identityGovernance.workflowExecutionType|The workflow execution type. The possible values are: `scheduled`, `onDemand`, `unknownFutureValue`, `activatedWithScope`, `extensibilityOnDemand`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `activatedWithScope`, `extensibilityOnDemand`. Read-only. Supports `$filter` (`eq`, `ne`).|
|workflowVersion|Int32|The version of the workflow at the time of execution. Read-only.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|reprocessedRuns|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md) collection|The reprocessed runs associated with this subject processing result.|
|taskProcessingResults|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) collection|The task-level processing results for this subject. Read-only.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.subjectProcessingResult",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.subjectProcessingResult",
  "id": "String (identifier)",
  "completedDateTime": "String (timestamp)",
  "failedTasksCount": "Integer",
  "processingStatus": "String",
  "scheduledDateTime": "String (timestamp)",
  "startedDateTime": "String (timestamp)",
  "totalTasksCount": "Integer",
  "totalUnprocessedTasksCount": "Integer",
  "workflowExecutionType": "String",
  "workflowVersion": "Integer",
  "subject": {
    "@odata.type": "microsoft.graph.identityGovernance.workflowSubject"
  }
}
```
