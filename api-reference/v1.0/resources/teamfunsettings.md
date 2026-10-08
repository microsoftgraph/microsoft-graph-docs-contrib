---
title: "teamFunSettings resource type"
description: "Settings to configure use of Giphy, memes, and stickers in the team."
ms.localizationpriority: medium
author: "MSFTRickyCastaneda"
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 08/19/2024
---

# teamFunSettings resource type

Namespace: microsoft.graph



Settings to configure use of Giphy, memes, and stickers in the [team](team.md).

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|allowCustomMemes|Boolean|If set to true, enables users to include custom memes.|
|allowGiphy|Boolean|If set to true, enables Giphy use.|
|allowStickersAndMemes|Boolean|If set to true, enables users to include stickers and memes.|
|giphyContentRating|String (enum)|Giphy content rating. The possible values are: `moderate`, `strict`.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamFunSettings"
}-->

```json
{
  "allowGiphy": true,
  "giphyContentRating": "strict",
  "allowStickersAndMemes": true,
  "allowCustomMemes": true
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "team's funSettings resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

