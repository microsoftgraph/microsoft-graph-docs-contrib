---
title: "insights resource type"
description: "Represents insights into the health and processing of lifecycle workflows across different workflows."
author: "krbain"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 08/19/2024
---

# insights resource type

Namespace: microsoft.graph.identityGovernance

Represents insights into the health and processing of lifecycle workflows across different workflows. The insights include the number of total, successful, and failed workflow executions, tasks processed, and users processed across all workflows for the tenant for a given period.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get top workflows summary](../api/identitygovernance-insights-topworkflowsprocessedsummary.md)|[microsoft.graph.identityGovernance.topWorkflowsInsightsSummary](../resources/identitygovernance-topworkflowsinsightssummary.md) collection|Summarizes the top runs for workflows for a given data range.|
|[Get top tasks summary](../api/identitygovernance-insights-toptasksprocessedsummary.md)|[microsoft.graph.identityGovernance.topTasksInsightsSummary](../resources/identitygovernance-toptasksinsightssummary.md) collection|Summarizes the top runs for tasks for a given data range.|
|[Get workflows processed summary](../api/identitygovernance-insights-workflowsprocessedsummary.md)|[microsoft.graph.identityGovernance.workflowsInsightsSummary](../resources/identitygovernance-workflowsinsightssummary.md)|Summarizes the workflows, users, and tasks processed for a given date range.|
|[Get workflows processed by category](../api/identitygovernance-insights-workflowsprocessedbycategory.md)|[microsoft.graph.identityGovernance.workflowsInsightsByCategory](../resources/identitygovernance-workflowsinsightsbycategory.md)|Summarizes workflow processing for each workflow category for a given date range.|

## Properties

None. 

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.insights",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.insights",
  "id": "String (identifier)"
}
```
