---
title: "workflowsInsightsByCategory resource type"
description: "Represents a summary of workflows ran by category in a tenant"
author: "krbain"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# workflowsInsightsByCategory resource type

Namespace: microsoft.graph.identityGovernance

Represents a summary of the total, successful, and failed workflows run in a tenant by category. The possible categories are *Joiner*, *Mover*, or *Leaver*. For more information about workflows processed in a tenant, see [topWorkflowsInsightsSummary](identitygovernance-topworkflowsinsightssummary.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|failedJoinerRuns|Int32|Failed "*Joiner*" workflows processed in a tenant.|
|failedLeaverRuns|Int32|Failed "*Leaver*" workflows processed in a tenant.|
|failedMoverRuns|Int32|Failed "*Mover*" workflows processed in a tenant.|
|successfulJoinerRuns|Int32|Successful "*Joiner*" workflows processed in a tenant.|
|successfulLeaverRuns|Int32|Successful "*Leaver*" workflows processed in a tenant.|
|successfulMoverRuns|Int32|Successful "*Mover*" workflows processed in a tenant.|
|totalJoinerRuns|Int32|Total "*Joiner*" workflows processed in a tenant.|
|totalLeaverRuns|Int32|Total "*Leaver*" workflows processed in a tenant.|
|totalMoverRuns|Int32|Total "*Mover*" workflows processed in a tenant.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.workflowsInsightsByCategory"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.workflowsInsightsByCategory",
  "totalJoinerRuns": "Integer",
  "successfulJoinerRuns": "Integer",
  "failedJoinerRuns": "Integer",
  "totalMoverRuns": "Integer",
  "successfulMoverRuns": "Integer",
  "failedMoverRuns": "Integer",
  "totalLeaverRuns": "Integer",
  "successfulLeaverRuns": "Integer",
  "failedLeaverRuns": "Integer"
}
```
