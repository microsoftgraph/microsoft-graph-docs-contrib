---
title: "attributeMappingSource resource type"
description: "Defines how a value should be extracted (or transformed) from the source object."
ms.localizationpriority: medium
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.subservice: "entra-applications"
ms.date: 03/21/2024
---

# attributeMappingSource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines how a value should be extracted (or transformed) from the source object. For example, it can be a value taken from a given attribute on the source object, or it can be a more complex expression of string concatenation/extraction/replacement based on several source attributes.

## Properties

| Property              | Type                      | Description               |
|:----------------------|:--------------------------|:--------------------------|
|expression             |String                     |Equivalent expression representation of this **attributeMappingSource** object.|
|name                   |String                     |Name parameter of the mapping source. Depending on the **type** property value, this can be the name of the function, the name of the source attribute, or a constant value to be used. |
|parameters             |[stringKeyAttributeMappingSourceValuePair](synchronization-stringkeyattributemappingsourcevaluepair.md) collection | If this object represents a function, lists function parameters. Parameters consist of **attributeMappingSource** objects themselves, allowing for complex expressions. If **type** isn't `Function`, this property is null/empty array. |
|type                   | attributeMappingSourceType                    |The type of this attribute mapping source. Possible values are: `Attribute`, `Constant`, `Function`. Default is `Attribute`.|

### Sample syntaxes

Simple attribute to attribute mapping.

<!-- { "blockType": "ignored" } -->
```json
{
    "expression": "[mail]",
    "name": "mail",
    "type": "Attribute"
}
```

Expression extracting first eight characters from the source attribute.

<!-- { "blockType": "ignored" } -->
```json
 {
    "expression": "Mid([userPrincipalName], 1, 8)",
    "name": "Mid",
    "parameters": [
        {
            "key": "source",
            "value": {
                "expression": "[userPrincipalName]",
                "name": "userPrincipalName",
                "parameters": [],
                "type": "Attribute"
            }
        },
        {
            "key": "start",
            "value": {
                "expression": "\"1\"",
                "name": "1",
                "parameters": [],
                "type": "Constant"
            }
        },
        {
            "key": "length",
            "value": {
                "expression": "\"8\"",
                "name": "8",
                "parameters": [],
                "type": "Constant"
            }
        }
    ],
    "type": "Function"
}
```

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.attributeMappingSource"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.attributeMappingSource",
  "expression": "String",
  "name": "String",
  "parameters": [
    {
      "@odata.type": "microsoft.graph.stringKeyAttributeMappingSourceValuePair"
    }
  ],
  "type": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "attributeMappingSource resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
