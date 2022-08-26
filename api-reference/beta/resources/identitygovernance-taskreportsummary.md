---
title: "taskReportSummary resource type"
description: "description of the task report summary resource type methods, properties, and relationships"
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# taskReportSummary resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resource type denoting the task report summary of a workflow created using Lifecycle Workflows. This includes reports on every task a workflow has run,  its successful and unsuccessful tasks, and its total number of unprocessed tasks.

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
