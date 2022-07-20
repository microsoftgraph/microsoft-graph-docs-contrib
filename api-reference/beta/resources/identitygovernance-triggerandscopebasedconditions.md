---
title: "triggerAndScopeBasedConditions resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# triggerAndScopeBasedConditions resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|scope|[microsoft.graph.subjectSet](../resources/subjectset.md)|**TODO: Add Description**|
|trigger|[microsoft.graph.identityGovernance.workflowExecutionTrigger](../resources/identitygovernance-workflowexecutiontrigger.md)|**TODO: Add Description**|

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

