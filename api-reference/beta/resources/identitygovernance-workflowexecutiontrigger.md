---
title: "workflowExecutionTrigger resource type"
description: "An abstract type that represents the workflow execution trigger when the workflow runs on schedule."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# workflowExecutionTrigger resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents the workflow execution trigger when the [workflow runs on schedule](../resources/identitygovernance-triggerandscopebasedconditions.md). Inherited by the following derived types:
+ [timeBasedAttributeTrigger](../resources/identitygovernance-timebasedattributetrigger.md)
+ [attributeChangeTrigger](../resources/identitygovernance-attributechangetrigger.md)
+ [membershipChangeTrigger](../resources/identitygovernance-membershipchangetrigger.md)

## Properties

None.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.workflowExecutionTrigger"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.workflowExecutionTrigger"
}
```
