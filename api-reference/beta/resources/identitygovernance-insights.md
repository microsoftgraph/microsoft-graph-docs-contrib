---
title: "Insights resource type"
description: "Represents the insights container that routes users to specific cross workflow functionality views."
author: "krbain"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# Insights resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the insights container for the cross workflow reporting functionalities with lifecycle workflows. This allows workflow history, by tenant, to be viewed through multiple views. As this holds all cross workflow information by tenant, there will only be one insights resource per tenant.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[topWorkflowsProcessedSummary](../api/identitygovernance-insights-topworkflowsprocessedsummary.md)|[microsoft.graph.identityGovernance.topWorkflowsInsightsSummary](../resources/identitygovernance-topworkflowsinsightssummary.md) collection|Summarizes the top runs for workflows for a given data range.|
|[topTasksProcessedSummary](../api/identitygovernance-insights-toptasksprocessedsummary.md)|[microsoft.graph.identityGovernance.topTasksInsightsSummary](../resources/identitygovernance-toptasksinsightssummary.md) collection|Summarizes the top runs for tasks for a given data range.|
|[workflowsProcessedSummary](../api/identitygovernance-insights-workflowsprocessedsummary.md)|[microsoft.graph.identityGovernance.workflowsInsightsSummary](../resources/identitygovernance-workflowsinsightssummary.md)|Summarizes the workflows, users, and tasks processed for a given date range.|
|[workflowsProcessedByCategory](../api/identitygovernance-insights-workflowsprocessedbycategory.md)|[microsoft.graph.identityGovernance.workflowsInsightsByCategory](../resources/identitygovernance-workflowsinsightsbycategory.md)|Summarizes workflow processing for each workflow category for a given date range.|

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
