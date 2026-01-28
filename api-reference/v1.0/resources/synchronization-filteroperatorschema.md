---
title: "filterOperatorSchema resource type"
description: "Describes an operator that can be used in a filter."
ms.localizationpriority: medium
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.subservice: "entra-applications"
ms.date: 07/22/2024
---

# filterOperatorSchema resource type

Namespace: microsoft.graph

Describes an operator that can be used in a [filter](synchronization-filter.md).

## Properties

| Property                   | Type                      | Description    |
|:---------------------------|:--------------------------|:---------------|
|arity                       |scopeOperatorType          |Arity of the operator. The possible values are: `Binary`, `Unary`. The default is `Binary`.|
|multivaluedComparisonType   |scopeOperatorMultiValuedComparisonType          |The possible values are: `All`, `Any`. Applies only to multivalued attributes. `All` means that all values must satisfy the condition. `Any` means that at least one value has to satisfy the condition. The default is `All`.|
|name                        |String                     |Operator name. |
|supportedAttributeTypes     |attributeType collection         |Attribute types supported by the operator. The possible values are: `Boolean`, `Binary`, `Reference`, `Integer`, `String`.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.filterOperatorSchema"
}-->

```json
{
  "arity": "String",
  "multivaluedComparisonType": "String",
  "name": "String",
  "supportedAttributeTypes": ["String"]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "filterOperatorSchema resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


