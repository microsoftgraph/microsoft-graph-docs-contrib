---
title: "propertyRule resource type"
description: "Property rules are a set of conditions that dictate when the template should be displayed."
author: "emzho"
localization_priority: Normal
ms.prod: "search"
doc_type: resourcePageType
---

# propertyRule resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Property rules are a set of conditions that dictate when the template should be displayed. Rules are in the format of: "property (from the item schema)" + "operation" + "value(s)", with the option of specifying AND/OR in "valuesJoinedBy". For example, a rule could specify that "itemTitle" "contains" "contoso". Therefore, the template will not be displayed unless the item's "itemTitle" contained the value "contoso".

## Properties
|Property|Type|Description|
|:---|:---|:---|
|operation|ruleOperation|This specifies the operations to be performed during evaluation of a single rule, where `property` and a string from the `values` collection are the respective operands. Possible values are: `null`, `equals`, `notEquals`, `contains`, `notContains`, `lessThan`, `greaterThan`, `startsWith`, `unknownFutureValue`. Required.|
|property|String|The property from the [externalItem](../resources/externalconnectors-externalitem.md) schema. Required.|
|values|String collection|A collection with one or many strings. The specified string(s) will be matched with the specified property using the specified operation. Required.|
|valuesJoinedBy|binaryOperator|The join operator for evaluating multiple rules. For example, if `and` is specified, then all rules must be true for the property rule to be true. Possible values are: `or`, `and`. Required.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.externalConnectors.propertyRule"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.externalConnectors.propertyRule",
  "property": "String",
  "operation": "String",
  "valuesJoinedBy": "String",
  "values": [
    "String"
  ]
}
```

