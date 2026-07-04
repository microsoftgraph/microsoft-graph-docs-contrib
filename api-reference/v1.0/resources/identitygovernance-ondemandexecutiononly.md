---
title: "onDemandExecutionOnly resource type"
description: "Represents the setting for a workflow running on-demand only."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# onDemandExecutionOnly resource type

Namespace: microsoft.graph.identityGovernance

Represents the execution condition for a lifecycle workflow that runs on-demand only instead of by schedule. This object is configured in the **executionConditions** property of the [workflow](../resources/identitygovernance-workflow.md), [workflowVersion](../resources/identitygovernance-workflowversion.md), and [workflowTemplate](../resources/identitygovernance-workflowtemplate.md) resources.

Inherits from [workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md).

## Properties

None.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.onDemandExecutionOnly",
  "baseType": "microsoft.graph.identityGovernance.workflowExecutionConditions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.onDemandExecutionOnly"
}
```
