---
title: "workflowExecutionConditions resource type"
description: "An abstract type inherited by derived types that define different conditions that trigger execution of a workflow."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 10/21/2024
---

# workflowExecutionConditions resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The derived types of this abstract object are configured in the **executionConditions** property of the [workflow](../resources/identitygovernance-workflow.md), [workflowTemplate](../resources/identitygovernance-workflowtemplate.md), and [workflowVersion](../resources/identitygovernance-workflowversion.md) resources. Execution conditions define when a workflow runs and which users or subjects it targets. The following types are derived from this abstract type:

+ [onDemandExecutionOnly](../resources/identitygovernance-ondemandexecutiononly.md)
+ [triggerAndScopeBasedConditions](../resources/identitygovernance-triggerandscopebasedconditions.md)

## Properties

None.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.workflowExecutionConditions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.workflowExecutionConditions"
}
```
