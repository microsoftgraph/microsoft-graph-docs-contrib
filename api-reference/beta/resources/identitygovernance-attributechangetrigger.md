---
title: "attributeChangeTrigger resource type"
description: "An abstract type that represents what user's attribute change triggers a workflow's execution conditions for a user."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# attributeChangeTrigger resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is an abstract type that defines what attribute change happens to a user that will trigger the execution conditions of a workflow.

Inherits from [microsoft.graph.identityGovernance.workflowExecutionTrigger](../resources/identitygovernance-workflowexecutiontrigger.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|triggerAttributes|[microsoft.graph.identityGovernance.triggerAttribute](../resources/identitygovernance-triggerattribute.md) collection|The trigger attribute being changed that triggers the workflowexecutiontrigger of a workflow.)|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.attributeChangeTrigger"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.attributeChangeTrigger",
  "triggerAttributes": [
    {
      "@odata.type": "microsoft.graph.identityGovernance.triggerAttribute"
    }
  ]
}
```

