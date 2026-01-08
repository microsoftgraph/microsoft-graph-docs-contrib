---
title: "callMediaState resource type"
description: "Represents the media state for a call."
author: "ananmishr"
ms.subservice: "cloud-communications"
ms.localizationpriority: medium
doc_type: resourcePageType
ms.date: 07/22/2024
---

# callMediaState resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the media state for a [call](call.md).

## Properties

| Property            | Type    | Description                                                                    |
|:--------------------|:--------|:-------------------------------------------------------------------------------|
| audio           | mediaState  | The audio media state. The possible values are: `active`, `inactive`, `unknownFutureValue`. |

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.callMediaState"
}-->
```json
{
  "audio": "active | inactive",
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "callMediaState resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


