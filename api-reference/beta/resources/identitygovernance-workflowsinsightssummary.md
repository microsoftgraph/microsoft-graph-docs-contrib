---
title: "workflowsInsightsSummary resource type"
description: "The summary of workflow usage, known as insights, of Lifecycle workflows in a tenant."
author: "krbain"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# workflowsInsightsSummary resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The workflow insights summary provides a numerical summary of run information for workflows in a tenant. Total, successful, and failed values are provided for workflow, task, and user processing by a workflow. The information here is general information about information reported in the insights of a Lifecycle workflow tenant. More detailed specific task and workflow insight summaries can be found in [topTasksInsightsSummary](//api-reference/beta/resources/identitygovernance-toptasksinsightssummary.md) and [topWorkflowsInsightsSummary](//api-reference/beta/resources/identitygovernance-topworkflowsinsightssummary.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|failedRuns|Int32|Failed workflows runs processed in the tenant.|
|failedTasks|Int32|Failed tasks processed in the tenant.|
|failedUsers|Int32|Failed users processed by workflows in the tenant.|
|successfulRuns|Int32|Successful workflow runs processed in the tenant.|
|successfulTasks|Int32|Successful tasks processed in the tenant.|
|successfulUsers|Int32|Successful users processed by workflows in the tenant.|
|totalRuns|Int32|Total workflows processed in the tenant.|
|totalTasks|Int32|Total tasks processed by workflows in the tenant.|
|totalUsers|Int32|Total users processed  by workflows in the tenant.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.workflowsInsightsSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.workflowsInsightsSummary",
  "totalRuns": "Integer",
  "successfulRuns": "Integer",
  "failedRuns": "Integer",
  "totalUsers": "Integer",
  "successfulUsers": "Integer",
  "failedUsers": "Integer",
  "totalTasks": "Integer",
  "successfulTasks": "Integer",
  "failedTasks": "Integer"
}
```
