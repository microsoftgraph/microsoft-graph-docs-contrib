---
title: "runSummary resource type"
description: "A description of the runSummary resource type"
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# runSummary resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resource type denoting a summary of workflow runs, which is every time a workflow runs. Successful, unsuccessful, and total workflow runs and tasks are noted.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|failedRuns|Int32|The number of failed workflow runs.|
|failedTasks|Int32|The number of failed tasks of a workflow.|
|successfulRuns|Int32|The number of successful workflow runs.|
|totalRuns|Int32|The total number of runs for a workflow.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
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
  "totalRuns": "Integer"
}
```
