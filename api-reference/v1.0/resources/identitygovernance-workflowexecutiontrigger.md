---
title: "workflowExecutionTrigger resource type"
description: "An abstract type that represents the workflow execution trigger when the workflow runs on schedule."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 10/26/2026
---

# workflowExecutionTrigger resource type

Namespace: microsoft.graph.identityGovernance

The derived types of this abstract object are configured in the **trigger** property of the [triggerAndScopeBasedConditions](../resources/identitygovernance-triggerandscopebasedconditions.md) resource when a lifecycle workflow runs on schedule. Inherited by the following derived types:

+ [timeBasedAttributeTrigger](../resources/identitygovernance-timebasedattributetrigger.md)
+ [timeBasedAttributeTriggerV2](../resources/identitygovernance-timebasedattributetriggerv2.md)
+ [attributeChangeTrigger](../resources/identitygovernance-attributechangetrigger.md)

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
