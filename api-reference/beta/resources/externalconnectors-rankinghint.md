---
title: "rankingHint resource type"
description: "The ranking hint for the property."
author: "emzho"
ms.localizationpriority: normal
ms.prod: "search"
doc_type: resourcePageType
---

# rankingHint resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the schema property's ranking hint.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|importanceScore|microsoft.graph.externalConnectors.importanceScore | Specifies the schema property importance. Possible values are: `low`, `medium`, `high`, `veryHigh`, `unknownFutureValue`. Required. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.externalConnectors.rankingHint"
}
-->
``` json
{
    "importanceScore": "string"
}
```

