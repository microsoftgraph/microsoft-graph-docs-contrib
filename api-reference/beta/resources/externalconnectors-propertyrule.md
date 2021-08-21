---
title: "propertyRule resource type"
description: "Property rules are a set of matching conditions that dictate when the template should be displayed."
author: "emzho"
localization_priority: Normal
ms.prod: "search"
doc_type: resourcePageType
---

# propertyRule resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Property rules are a set of matching conditions that dictate when the template should be displayed. Rules are in the format of: "property (from the item schema)" + "operation" + "value(s)", with the option of specifying AND/OR in "valuesJoinedBy". For example, a rule could specify that "itemTitle" "contains" "contoso". Therefore, the template will not be displayed unless the item's "itemTitle" contained the value "contoso".

## Properties
|Property|Type|Description|
|:---|:---|:---|
|operation|ruleOperation|This specifies the operations to be performed during evaluation of the rule, where "property" and "values" are the respective operands. Possible values are: `null`, `equals`, `notEquals`, `contains`, `notContains`, `lessThan`, `greaterThan`, `startsWith`, `unknownFutureValue`.|
|property|String|This property from the item schema is the first operand of the entire rule expression.|
|values|String collection|A single value or multiple values that can be designated by the developer to create matching conditions if it fulfils the "property" and "operation".|
|valuesJoinedBy|binaryOperator|When there are multiple rules for a single template, the rules can be evaluated with logical AND (all statements must be true for the template to be displayed) or logical OR (only 1 statement must be true for the template to be displayed). Possible values are: `or`, `and`.|

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

