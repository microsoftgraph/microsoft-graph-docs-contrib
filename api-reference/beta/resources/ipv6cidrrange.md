---
title: "iPv6CidrRange resource type"
description: "Represents an IPv6 range using the CIDR notation."
ms.localizationpriority: medium
author: "lisaychuang"
ms.reviewer: conditionalaccesspm
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 03/21/2024
---

# iPv6CidrRange resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an IPv6 range using the Classless Inter-Domain Routing (CIDR) notation.

Inherits from [ipRange](../resources/iprange.md)

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|cidrAddress|String|IPv6 address in CIDR notation. Not nullable.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.iPv6CidrRange",
  "baseType": "microsoft.graph.ipRange"
}-->

```json
{
  "@odata.type": "#microsoft.graph.iPv6CidrRange", 
  "cidrAddress": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "iPv6CidrRange resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

