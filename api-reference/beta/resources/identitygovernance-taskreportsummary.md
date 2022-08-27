---
title: "taskReportSummary resource type"
description: "Represents the integer count of successful, failed, unprocessed, and total tasks in a lifecycle workflow audit report."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# taskReportSummary resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the integer count of successful, failed, unprocessed, and total tasks in a lifecycle workflow audit report.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|failedTasks|Int32|The number of failed tasks in a report.|
|successfulTasks|Int32|The total number of successful tasks in a report.|
|totalTasks|Int32|The total number of tasks in a report.|
|unprocessedTasks|Int32|The number of unprocessed tasks in a report.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.taskReportSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.taskReportSummary",
  "successfulTasks": "Integer",
  "failedTasks": "Integer",
  "unprocessedTasks": "Integer",
  "totalTasks": "Integer"
}
```
