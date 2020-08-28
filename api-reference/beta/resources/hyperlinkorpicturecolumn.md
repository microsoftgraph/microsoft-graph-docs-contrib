---
author: swshriva
ms.author: swshriva
ms.date: 11/08/2019
title: HyperlinkOrPictureColumn - OneDrive API
---
# HyperlinkOrPictureColumn resource type

The **hyperlinkOrPictureColumn** on a [columnDefinition](columnDefinition.md) resource indicates that the column contains URL data which can be
an achortag or an image that serves as a hyperlink.

## JSON representation

Here is a JSON representation of a **hyperlinkOrPictureColumn** resource.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.hyperlinkOrPictureColumn" } -->

```json
{
  "format": "image | hyperlink",
}
```

## Properties

| Property name      | Type               | Description
|:-------------------|:-------------------|:----------------------------------------------
| **format**         | string             | Specifies the display format used for URL columns.

## Format

| Value          | Description
|:---------------|:--------------------------------------------------------------
| **image**      | Represents a usual anchor tag.
| **hyperlink**  | Represents an image that serves as a hyperlink.

## Properties

The **hyperlinkOrPictureColumn** resource contains no properties.

<!-- {
  "type": "#page.annotation",
  "description": "",
  "keywords": "",
  "section": "documentation",
  "suppressions": [
    "Warning: /api-reference/v1.0/resources/hyperlinkorpicturecolumn.md:
      Found potential enums in resource example that weren't defined in a table:(image,hyperlink) are in resource, but () are in table"
  ],
  "tocPath": "Resources/HyperlinkOrPictureColumn"
} -->
