---
title: "workflowsInsightsSummary resource type"
description: "The summary of workflow insights of Lifecycle workflows in a tenant."
author: "krbain"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# workflowsInsightsSummary resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides a summary of workflow insights across all workflow runs in a tenant.

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
