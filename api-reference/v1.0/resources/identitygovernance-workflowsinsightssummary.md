---
title: "workflowsInsightsSummary resource type"
description: "Provides a summary of workflow usage, known as insights, of Lifecycle Workflows in a tenant."
author: "krbain"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# workflowsInsightsSummary resource type

Namespace: microsoft.graph.identityGovernance

Provides a numerical summary of run information for workflows in a tenant, including total, successful, and failed tasks and user processing information. This resource contains information reported in the insights of a Lifecycle workflow tenant. More detailed specific task and workflow insight summaries are included in the [topTasksInsightsSummary](identitygovernance-toptasksinsightssummary.md) and [topWorkflowsInsightsSummary](identitygovernance-topworkflowsinsightssummary.md) resources.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|failedRuns|Int32|Count of failed workflow runs processed in the tenant.|
|failedTasks|Int32|Count of failed tasks processed in the tenant.|
|failedUsers|Int32|Count of failed users processed by workflows in the tenant.|
|successfulRuns|Int32|Count of successful workflow runs processed in the tenant.|
|successfulTasks|Int32|Count of successful tasks processed in the tenant.|
|successfulUsers|Int32|Count of successful users processed by workflows in the tenant.|
|totalRuns|Int32|Count of total workflows processed in the tenant.|
|totalTasks|Int32|Count of total tasks processed by workflows in the tenant.|
|totalUsers|Int32|Count of total users processed by workflows in the tenant.|

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
