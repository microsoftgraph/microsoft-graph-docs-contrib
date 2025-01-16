---
title: 'reactionsFacet resource type'
description: Provides counts of user reactions (likes, comments, and shares).
author: sangle7
ms.localizationpriority: medium
ms.subservice: sharepoint
doc_type: resourcePageType
ms.date: 07/22/2024
---

# reactionsFacet resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides counts of user reactions (likes, comments, and shares).

## Properties

| Property     | Type  | Description        |
| :----------- | :---- | :----------------- |
| commentCount | Int32 | Count of comments. |
| likeCount    | Int32 | Count of likes.    |
| shareCount   | Int32 | Count of shares.   |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.reactionsFacet"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.reactionsFacet",
  "likeCount": "Integer",
  "commentCount": "Integer",
  "shareCount": "Integer"
}
```
