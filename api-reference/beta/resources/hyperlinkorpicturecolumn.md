---
author: swapnil1993
ms.author: swapnil1993
ms.date: 08/28/2020
title: HyperlinkOrPictureColumn 
---
# HyperlinkOrPictureColumn resource type

The **hyperlinkOrPictureColumn** on a [columnDefinition](columnDefinition.md) resource indicates that the column contains URL data which can be
an achortag or an image that serves as a hyperlink.

## JSON representation

Here is a JSON representation of a **hyperlinkOrPictureColumn** resource.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.hyperlinkOrPictureColumn" } -->

```json
{
  "isPicture": false
}
```

## Properties

| Property name      | Type               | Description
|:-------------------|:-------------------|:----------------------------------------------
| isPicture       | boolean             | Specifies whether the display format used for URL columns is an image or a hyperlink. 


