---
author: swapnil1993
ms.author: swapnil1993
title: HyperlinkOrPictureColumn 
description: "The hyperlinkOrPictureColumn resource indicates that the column contains URL data which can be an achortag or an image that serves as a hyperlink."
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "sharepoint"
---
# HyperlinkOrPictureColumn resource type

Namespace: microsoft.graph

The **hyperlinkOrPictureColumn** on a [columnDefinition](columnDefinition.md) resource indicates that the column contains URL data which can be an achortag or an image that serves as a hyperlink.


## Properties

| Property name      | Type               | Description
|:-------------------|:-------------------|:----------------------------------------------
| isPicture       | Boolean             | Specifies whether the display format used for URL columns is an image or a hyperlink. 


## JSON representation

Here is a JSON representation of a **hyperlinkOrPictureColumn** resource.
<!-- { "blockType": "resource", "@odata.type": "microsoft.graph.hyperlinkOrPictureColumn" } -->

```json
{
  "isPicture": false
}
```