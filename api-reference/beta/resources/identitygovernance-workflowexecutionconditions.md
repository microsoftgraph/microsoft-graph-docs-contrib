---
title: "workflowExecutionConditions resource type"
description: "An abstract type inherited by derived types that define different conditions that trigger execution of a workflow."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# workflowExecutionConditions resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is an abstract type noting the workflow execution conditions in [workflowTemplate](../resources/identitygovernance-workflowtemplate.md) and [workflowBase](../resources/identitygovernance-workflowbase.md) objects. Execution conditions define when a workflow runs and rules that identify the users that are the target of the workflow. The following types are derived from this abstract type:

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
