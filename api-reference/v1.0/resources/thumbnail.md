---
author: JeremyKelley
ms.date: 09/10/2017
title: Thumbnail
ms.localizationpriority: medium
description: "The thumbnail resource type represents a thumbnail for an image, video, document, or any item that has a bitmap representation."
ms.prod: sites-and-lists
doc_type: resourcePageType
---

# Thumbnail resource type

Namespace: microsoft.graph

The **thumbnail** resource type represents a thumbnail for an image, video, document, or any item that has a bitmap representation.

## Properties

| Property     | Type   | Description|
| :----------- | :----- | :----------------------------------------------------|
| content      | Stream | The content stream for the thumbnail.|
| height       | Int32  | The height of the thumbnail, in pixels.|
| sourceItemId | String | The unique identifier of the item that provided the thumbnail. This is only available when a folder thumbnail is requested.|
| url          | String | The URL used to fetch the thumbnail content.|
| width        | Int32  | The width of the thumbnail, in pixels.|


## JSON representation

Here is a JSON representation of the **thumbnail** resource.

<!--{
  "blockType": "resource",
  "optionalProperties": [
    "content",
    "height",
    "width",
    "sourceItemId"
  ],
  "@odata.type": "microsoft.graph.thumbnail"
}-->

```json
{
  "height": "Int32",
  "sourceItemId": "String",
  "url": "String",
  "width": "Int32",
  "content": "Stream"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Thumbnail resource represents a single thumbnail for an item.",
  "section": "documentation",
  "tocPath": "Resources/Thumbnail"
} -->

