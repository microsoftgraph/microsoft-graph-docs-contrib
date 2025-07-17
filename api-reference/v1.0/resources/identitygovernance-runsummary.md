---
title: "runSummary resource type"
description: "A summary of runs for a specified time period. This summary allows the administrator to get a quick overview based on counts."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# runSummary resource type

Namespace: microsoft.graph.identityGovernance

A summary of runs for a specified time period. This summary allows the administrator to get a quick overview based on counts.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|failedRuns|Int32|The number of failed workflow runs.|
|failedTasks|Int32|The number of failed tasks of a workflow.|
|successfulRuns|Int32|The number of successful workflow runs.|
|totalRuns|Int32|The total number of runs for a workflow.|
|totalTasks|Int32|The total number of tasks processed by a workflow.|
|totalUsers|Int32|The total number of users processed by a workflow.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.runSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.runSummary",
  "failedRuns": "Integer",
  "failedTasks": "Integer",
  "successfulRuns": "Integer",
  "totalRuns": "Integer",
  "totalTasks": "Integer",
  "totalUsers": "Integer"
}
```
