---
title: "workflowTriggerTimeBasedOperator resource type"
description: "Represents an abstract time-based operator used to evaluate a user's date attribute."
author: "jackschedel"
ms.date: 08/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# workflowTriggerTimeBasedOperator resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract [workflowExecutionTriggerOperator](../resources/identitygovernance-workflowexecutiontriggeroperator.md) that evaluates a user's date attribute relative to the current date. This type can't be instantiated directly.

Configure this type in the **operator** property of [timeBasedAttributeTriggerV2](../resources/identitygovernance-timebasedattributetriggerv2.md).

The following types are derived from this type:

- [operatorBetween](../resources/identitygovernance-operatorbetween.md)
- [operatorEqualTo](../resources/identitygovernance-operatorequalto.md)
- [operatorLessThanEqualTo](../resources/identitygovernance-operatorlessthanequalto.md)

The type of an operator is differentiated by its `@odata.type` property.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|eventTiming|microsoft.graph.identityGovernance.workflowTriggerOperatorEventTiming|Specifies whether the operator evaluates dates before, after, or on the date in the user attribute. The possible values are: `before`, `after`, `on`, `unknownFutureValue`. Each derived type defines the values it supports.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.workflowTriggerTimeBasedOperator",
  "baseType": "microsoft.graph.identityGovernance.workflowExecutionTriggerOperator"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.identityGovernance.workflowTriggerTimeBasedOperator",
  "eventTiming": "String"
}
```
