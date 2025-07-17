---
title: "attributeMappingFunctionSchema resource type"
description: "Describes a function that can be used in an attribute mapping to transform values during synchronization."
ms.localizationpriority: medium
doc_type: resourcePageType
author: "ArvindHarinder1"
ms.subservice: "entra-applications"
ms.date: 07/22/2024
---

# attributeMappingFunctionSchema resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Describes a function that can be used in an [attribute mapping](synchronization-attributemapping.md) to transform values during synchronization.

## Methods

| Method           | Return Type    |Description|
|:---------------|:--------|:----------|
|[Get schema functions](../api/synchronization-synchronizationschema-functions.md) | [attributeMappingFunctionSchema](../resources/synchronization-attributemappingfunctionschema.md) collection|List supported attribute mapping functions.|

## Properties

| Property                   | Type                      | Description    |
|:---------------------------|:-------------------------|:---------------|
|id                        |String                    |Key. Read-only. |
|parameters                  |[attributeMappingParameterSchema](../resources/synchronization-attributemappingparameterschema.md) collection  |Collection of function parameters.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.attributeMappingFunctionSchema"
}-->

```json
{
  "id": "String (identifier)",
  "parameters": [
    {
      "@odata.type": "microsoft.graph.attributeMappingParameterSchema"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "attributeMappingFunctionSchema resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


