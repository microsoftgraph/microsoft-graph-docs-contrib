---
title: "workflowExecutionTriggerOperator resource type"
description: "Represents an abstract operator used to evaluate a workflow execution trigger."
author: "jackschedel"
ms.date: 08/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# workflowExecutionTriggerOperator resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract operator used by a [timeBasedAttributeTriggerV2](../resources/identitygovernance-timebasedattributetriggerv2.md) to evaluate a user's date attribute. This type can't be instantiated directly.

Configure this type in the **operator** property of [timeBasedAttributeTriggerV2](../resources/identitygovernance-timebasedattributetriggerv2.md).

The following type is derived from this type:

- [workflowTriggerTimeBasedOperator](../resources/identitygovernance-workflowtriggertimebasedoperator.md)

The type of an operator is differentiated by its `@odata.type` property.

## Properties

None.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.workflowExecutionTriggerOperator"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.identityGovernance.workflowExecutionTriggerOperator"
}
```
