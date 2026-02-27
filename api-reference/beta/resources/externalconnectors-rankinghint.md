---
title: "rankingHint resource type"
description: "The ranking hint for the property."
author: "emzho"
ms.localizationpriority: medium
ms.subservice: "search"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# rankingHint resource type

Namespace: microsoft.graph.externalConnectors

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies the schema property's ranking hint.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|importanceScore|microsoft.graph.externalConnectors.importanceScore | Specifies the schema property importance. The possible values are: `low`, `medium`, `high`, `veryHigh`, `unknownFutureValue`. Required. |

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

