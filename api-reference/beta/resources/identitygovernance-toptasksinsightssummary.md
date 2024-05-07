---
title: "topTasksInsightsSummary resource type"
description: "Represents a summary of top tasks ran within a tenant."
author: "krbain"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# topTasksInsightsSummary resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The topTasksInsightSummary represents a summary of the top tasks ran within a tenant. Total, failed, and successful tasks and user processing processing history are provided.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|failedTasks|Int32|Failed run count of the task.|
|failedUsers|Int32| Failed users processed by the task.|
|successfulTasks|Int32|Successful run count of task.|
|successfulUsers|Int32|Successful users processed by the task.|
|taskDefinitionDisplayName|String|Name of task.|
|taskDefinitionId|String|The task definition ID.|
|totalTasks|Int32|Total run count of task.|
|totalUsers|Int32|Total users processed by the task.|

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
