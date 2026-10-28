---
title: "slaPolicyCriteriaBlock resource type"
description: "Represents a group of conditions used to evaluate an SLA policy or timer."
author: "msklotz"
ms.date: 09/06/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# slaPolicyCriteriaBlock resource type

Namespace: microsoft.graph.security.caseManagement

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a group of conditions combined by a logical operator in the **setCriteria**, **exitCriteria**, or **pauseCriteria** property of an [slaPolicyDefinition](../resources/security-casemanagement-slapolicydefinition.md), or the **filters** property of an [slaPolicyTimer](../resources/security-casemanagement-slapolicytimer.md).

A block can also appear in the **conditions** property of another block. The maximum nesting depth is two.

Inherits from [slaPolicyConditionBase](../resources/security-casemanagement-slapolicyconditionbase.md).

For request bodies, set `@odata.type` to `#microsoft.graph.security.caseManagement.slaPolicyCriteriaBlock` when supplying a group. Each nested condition uses `@odata.type` to identify either an [slaPolicyCondition](../resources/security-casemanagement-slapolicycondition.md) or another **slaPolicyCriteriaBlock**. Response payloads can omit `@odata.type` on the criteria block itself.

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|conditions|[microsoft.graph.security.caseManagement.slaPolicyConditionBase](../resources/security-casemanagement-slapolicyconditionbase.md) collection|The leaf conditions or nested groups evaluated by this block. The maximum nesting depth is two.|
|logicalOperator|[microsoft.graph.security.caseManagement.slaPolicyLogicalOperator](../resources/enums-security-casemanagement.md#slapolicylogicaloperator-values)|The logical operator that combines the conditions. The possible values are: `and`, `or`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.caseManagement.slaPolicyCriteriaBlock",
  "baseType": "microsoft.graph.security.caseManagement.slaPolicyConditionBase"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.caseManagement.slaPolicyCriteriaBlock",
  "logicalOperator": "String",
  "conditions": [
    {
      "@odata.type": "#microsoft.graph.security.caseManagement.slaPolicyCondition"
    }
  ]
}
```
