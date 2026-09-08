---
title: "attributeCondition resource type"
description: "Defines a condition evaluated against a user attribute in a progressive profiling rule."
author: "Gyanendersinghgithub"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 09/08/2026
---

# attributeCondition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines a condition evaluated against a user attribute in a progressive profiling attribute collection rule.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|attributeId|String|Required. The identifier of the user attribute to evaluate.|
|operator|conditionOperator|Required. The comparison operator. The possible values are: `equals`, `notEquals`, `contains`, `notContains`, `startsWith`, `endsWith`, `greaterThan`, `lessThan`, `greaterThanOrEquals`, `lessThanOrEquals`, `isEmpty`, `isNotEmpty`, and `unknownFutureValue`.|
|value|String|The value to compare with the user attribute. This property isn't required for the `isEmpty` and `isNotEmpty` operators.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.attributeCondition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.attributeCondition",
  "attributeId": "String",
  "operator": "String",
  "value": "String"
}
```
