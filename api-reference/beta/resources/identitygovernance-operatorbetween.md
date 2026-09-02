---
title: "operatorBetween resource type"
description: "Represents a time-based operator that matches a user's date attribute within a bounded range from the current date."
author: "jackschedel"
ms.date: 08/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# operatorBetween resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a [workflowTriggerTimeBasedOperator](../resources/identitygovernance-workflowtriggertimebasedoperator.md) that matches users whose date attribute falls between two offsets from the current date.

Inherits from [workflowTriggerTimeBasedOperator](../resources/identitygovernance-workflowtriggertimebasedoperator.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|eventTiming|microsoft.graph.identityGovernance.workflowTriggerOperatorEventTiming|Specifies whether the operator evaluates dates before or after the date in the user attribute. The possible values are: `before`, `after`, `unknownFutureValue`. Inherited from [workflowTriggerTimeBasedOperator](../resources/identitygovernance-workflowtriggertimebasedoperator.md).|
|greaterThanOffsetInDays|Int32|The exclusive lower bound of the date range, in days. The value must be a nonnegative integer and less than **lessThanOffsetInDays**.|
|lessThanOffsetInDays|Int32|The exclusive upper bound of the date range, in days. The value must be a nonnegative integer and greater than **greaterThanOffsetInDays**. The difference between the upper and lower bounds can't exceed 180 days.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.operatorBetween",
  "baseType": "microsoft.graph.identityGovernance.workflowTriggerTimeBasedOperator"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.identityGovernance.operatorBetween",
  "eventTiming": "String",
  "greaterThanOffsetInDays": "Integer",
  "lessThanOffsetInDays": "Integer"
}
```
