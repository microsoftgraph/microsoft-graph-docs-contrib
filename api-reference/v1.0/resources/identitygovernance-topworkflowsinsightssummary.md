---
title: "topWorkflowsInsightsSummary resource type"
description: "Represents a summary of the workflows processed the most within a tenant."
author: "krbain"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# topWorkflowsInsightsSummary resource type

Namespace: microsoft.graph.identityGovernance

Represents a summary of the workflows that are processed the most, or the _top workflows_, within a tenant, including workflow details and the total, failed, and successful run and processing history for the workflow.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|failedRuns|Int32|Count of failed runs for workflow.|
|failedUsers|Int32|Count of failed users who were processed.|
|successfulRuns|Int32|Count of successful runs of the workflow.|
|successfulUsers|Int32|Count of successful users processed by the workflow.|
|totalRuns|Int32|Count of total runs of workflow.|
|totalUsers|Int32|Total number of users processed by the workflow.|
|workflowCategory|microsoft.graph.identityGovernance.lifecycleWorkflowCategory|The category of the workflow. The possible values are: `joiner`, `leaver`, `unknownFutureValue`, `mover`. Use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `mover`.|
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
