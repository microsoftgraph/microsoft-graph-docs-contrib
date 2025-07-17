---
author: swapnil1993
title: hyperlinkOrPictureColumn resource type
description: The hyperlinkOrPictureColumn resource indicates that the column contains URL data that can be an achortag or an image that serves as a hyperlink.
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: sharepoint
ms.date: 03/06/2024
---

# hyperlinkOrPictureColumn resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Indicates that the column contains URL data that can be an achortag or an image that serves as a hyperlink.

## Properties

| Property  | Type    | Description                                                                           |
| :-------- | :------ | :------------------------------------------------------------------------------------ |
| isPicture | Boolean | Specifies whether the display format used for URL columns is an image or a hyperlink. |

## Relationships
None.

## JSON representation

Here's a JSON representation of a **hyperlinkOrPictureColumn** resource.

<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.hyperlinkOrPictureColumn" } -->

```json
{
  "isPicture": false
}
```
