---
title: "triggerAndScopeBasedConditions resource type"
description: "Represents a lifecycle workflow running by schedule, who it runs for, and what triggers the workflow to run."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# triggerAndScopeBasedConditions resource type

Namespace: microsoft.graph.identityGovernance

Represents a lifecycle workflow running by schedule, who it runs for, and what triggers the workflow to run.

Inherits from [workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|scope|[microsoft.graph.subjectSet](../resources/subjectset.md)|Defines who the workflow runs for.|
|trigger|[microsoft.graph.identityGovernance.workflowExecutionTrigger](../resources/identitygovernance-workflowexecutiontrigger.md)|What triggers a workflow to run.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.triggerAndScopeBasedConditions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
  "scope": {
    "@odata.type": "microsoft.graph.subjectSet"
  },
  "trigger": {
    "@odata.type": "microsoft.graph.identityGovernance.workflowExecutionTrigger"
  }
}
```
