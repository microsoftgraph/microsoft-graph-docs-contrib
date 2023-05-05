---
title: "propertyRule resource type"
description: "Defines the set of conditions to display a displayTemplate"
author: "emzho"
ms.localizationpriority: normal
ms.prod: "search"
doc_type: resourcePageType
---

# propertyRule resource type

Namespace: microsoft.graph.externalConnectors

Defines the set of conditions to display a [displayTemplate](../resources/externalconnectors-displaytemplate.md). Rules use the format: (property from the item schema) + (operation) + (value). For example, a **propertyRule** can specify that "itemTitle" "contains" "contoso". Therefore, the **displayTemplate** will not be displayed unless itemTitle contains the value "contoso".

## Properties
|Property|Type|Description|
|:---|:---|:---|
|operation|microsoft.graph.externalConnectors.ruleOperation|Specifies the operations to be performed during evaluation of a single **propertyRule**, where `property` and a string from the `values` collection are the respective operands. Possible values are: `null`, `equals`, `notEquals`, `contains`, `notContains`, `lessThan`, `greaterThan`, `startsWith`. Required.|
|property|String|The property from the [externalItem](../resources/externalconnectors-externalitem.md) schema. Required.|
|values|String collection|A collection with one or many strings. The specified string(s) will be matched with the specified property using the specified operation. Required.|
|valuesJoinedBy|binaryOperator|The join operator for evaluating multiple **propertyRules**. For example, if `and` is specified, then all **propertyRules** must be true for the **propertyRule** to be true. Possible values are: `or`, `and`. Required.|

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
  "operation": "String",
  "property": "String",
  "values": [
    "String"
  ],
  "valuesJoinedBy": "String"
}
```

