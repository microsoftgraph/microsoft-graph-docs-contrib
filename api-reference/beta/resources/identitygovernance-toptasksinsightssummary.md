---
title: "topTasksInsightsSummary resource type"
description: "Represents a summary of top tasks ran within a tenant."
author: "krbain"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 05/15/2024
---

# topTasksInsightsSummary resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a summary of the top tasks ran within a tenant, including total, failed, and successful tasks and user processing history.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|failedTasks|Int32|Count of failed runs of the task.|
|failedUsers|Int32|Count of failed users who were processed by the task.|
|successfulTasks|Int32|Count of successful runs of the task.|
|successfulUsers|Int32|Count of successful users processed by the task.|
|taskDefinitionDisplayName|String|The name of the task.|
|taskDefinitionId|String|The task ID.|
|totalTasks|Int32|Count of total runs of the task.|
|totalUsers|Int32|Count of total users processed by the task.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.topTasksInsightsSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.topTasksInsightsSummary",
  "taskDefinitionId": "String",
  "taskDefinitionDisplayName": "String",
  "totalTasks": "Integer",
  "successfulTasks": "Integer",
  "failedTasks": "Integer",
  "totalUsers": "Integer",
  "successfulUsers": "Integer",
  "failedUsers": "Integer"
}
```
