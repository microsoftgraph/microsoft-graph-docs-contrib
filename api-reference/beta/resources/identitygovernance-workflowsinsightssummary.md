---
title: "workflowsInsightsSummary resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# workflowsInsightsSummary resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|failedRuns|Int32|**TODO: Add Description**|
|failedTasks|Int32|**TODO: Add Description**|
|failedUsers|Int32|**TODO: Add Description**|
|successfulRuns|Int32|**TODO: Add Description**|
|successfulTasks|Int32|**TODO: Add Description**|
|successfulUsers|Int32|**TODO: Add Description**|
|totalRuns|Int32|**TODO: Add Description**|
|totalTasks|Int32|**TODO: Add Description**|
|totalUsers|Int32|**TODO: Add Description**|

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

