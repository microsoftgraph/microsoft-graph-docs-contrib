---
title: "itemBody resource type"
description: "Represents properties of the body of an item, such as a message, event or group post."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "excel"
author: "grangeryy"
ms.date: 07/23/2024
---

# itemBody resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents properties of the body of an item, such as a message, event or group post.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|content|String|The content of the item.|
|contentType|bodyType|The type of the content. Possible values are `text` and `html`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.itemBody"
}-->

```json
{
  "content": "string",
  "contentType": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "itemBody resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


