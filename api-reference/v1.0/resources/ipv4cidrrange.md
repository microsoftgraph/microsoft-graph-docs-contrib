---
title: "iPv4CidrRange resource type"
description: "Represents an IPv4 range using the CIDR notation."
ms.localizationpriority: medium
author: "lisaychuang"
ms.reviewer: conditionalaccesspm
ms.subservice: "entra-directory-management"
doc_type: resourcePageType
ms.date: 04/03/2024
---

# iPv4CidrRange resource type

Namespace: microsoft.graph

Represents an IPv4 range using the Classless inter-domain routing (CIDR) notation.

Inherits from [ipRange](../resources/iprange.md)

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|cidrAddress|String|IPv4 address in CIDR notation. Not nullable.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.iPv4CidrRange",
  "baseType": "microsoft.graph.ipRange"
}-->

```json
{
  "@odata.type": "#microsoft.graph.iPv4CidrRange",  
  "cidrAddress": "String"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "iPv4CidrRange resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
