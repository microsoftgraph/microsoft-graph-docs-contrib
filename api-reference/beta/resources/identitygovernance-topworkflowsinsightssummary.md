---
title: "topWorkflowsInsightsSummary resource type"
description: "Represents a summary of top workflows ran within a tenant."
author: "krbain"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# topWorkflowsInsightsSummary resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The topWorkflowsInsightSummary represents a summary of the top workflows ran within a tenant, and its run history. Total, failed, and successful run and processing history are provided.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|failedRuns|Int32|Failed run count of workflow.|
|failedUsers|Int32|Failed users who were successfully processed.|
|successfulRuns|Int32|Successful run count of the workflow.|
|successfulUsers|Int32|Successful users processed by the workflow.|
|totalRuns|Int32|Total run count of workflow.|
|totalUsers|Int32|Total number of users processed by the workflow.|
|workflowCategory|microsoft.graph.identityGovernance.lifecycleWorkflowCategory|Notes the category of the workflow.The possible values are: `joiner`, `leaver`, `unknownFutureValue`, `mover`. Note that you must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `mover`.|
|workflowDisplayName|String|The name of the workflow.|
|workflowId|String|The workflow ID.|
|workflowVersion|Int32|The version of the workflow that was a top workflow ran.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.topWorkflowsInsightsSummary"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.topWorkflowsInsightsSummary",
  "workflowId": "String",
  "workflowDisplayName": "String",
  "workflowCategory": "String",
  "totalRuns": "Integer",
  "successfulRuns": "Integer",
  "failedRuns": "Integer",
  "totalUsers": "Integer",
  "successfulUsers": "Integer",
  "failedUsers": "Integer",
  "workflowVersion": "Integer"
}
```
