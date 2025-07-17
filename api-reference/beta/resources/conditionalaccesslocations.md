---
title: "conditionalAccessLocations resource type"
description: "Represents locations included in and excluded from the scope of a conditional access policy."
ms.localizationpriority: medium
author: "lisaychuang"
ms.reviewer: conditionalaccesspm
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# conditionalAccessLocations resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents locations included in and excluded from the scope of a [conditional access policy](../resources/conditionalaccesspolicy.md). Locations can be [countries and regions](../resources/countrynamedlocation.md) or [IP addresses](../resources/ipnamedlocation.md).

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
| includeLocations | String collection | Location IDs in scope of policy unless explicitly excluded, `All`, or `AllTrusted`. |
| excludeLocations | String collection | Location IDs excluded from scope of policy. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "includeLocations",
    "excludeLocations"
  ],
  "@odata.type": "microsoft.graph.conditionalAccessLocations",
  "baseType": null
}-->

```json
{
  "excludeLocations": ["String"],
  "includeLocations": ["String"]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conditionalAccessLocations resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

