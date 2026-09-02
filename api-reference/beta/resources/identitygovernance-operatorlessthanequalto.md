---
title: "operatorLessThanEqualTo resource type"
description: "Represents a time-based operator that matches a user's date attribute within an offset from the current date."
author: "jackschedel"
ms.date: 08/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# operatorLessThanEqualTo resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a [workflowTriggerTimeBasedOperator](../resources/identitygovernance-workflowtriggertimebasedoperator.md) that matches users whose date attribute is within **offsetInDays** days of the current date.

Inherits from [workflowTriggerTimeBasedOperator](../resources/identitygovernance-workflowtriggertimebasedoperator.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|eventTiming|microsoft.graph.identityGovernance.workflowTriggerOperatorEventTiming|Specifies whether the operator evaluates dates before, after, or on the date in the user attribute. The possible values are: `before`, `after`, `on`, `unknownFutureValue`. When **offsetInDays** is `0`, this value must be `on`; otherwise, use `before` or `after`. Inherited from [workflowTriggerTimeBasedOperator](../resources/identitygovernance-workflowtriggertimebasedoperator.md).|
|offsetInDays|Int32|The maximum number of days between the current date and the date in the user attribute. The value must be a nonnegative integer.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.operatorLessThanEqualTo",
  "baseType": "microsoft.graph.identityGovernance.workflowTriggerTimeBasedOperator"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.identityGovernance.operatorLessThanEqualTo",
  "eventTiming": "String",
  "offsetInDays": "Integer"
}
```
