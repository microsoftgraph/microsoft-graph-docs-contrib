---
author: MarcMroz
description: "The media resource contains metadata about the media (audio or video) drive item."
ms.author: brcrowne
ms.date: 07/15/2020
title: Media
localization_priority: Normal
doc_type: resourcePageType
ms.prod: "sharepoint"
---
# Media resouce type

The **Media** resource contains metadata about the media (audio or video) drive item.

It is available on the media property of [driveItem][item-resource] resources.

## JSON representation

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.media"
}-->

```json
{
  "isTranscriptionShown" : true,
  "mediaSource": { "@odata.type": "microsoft.graph.mediaSource" }
}
```

## Properties

| Property                 | Type                  | Description                                                                                                   |
| :----------------------- | :-------------------- | :------------------------------------------------------------------------------------------------------------ 
| **isTranscriptionShown** | boolean               | If a file has a transcript, this setting controls if the closed captions / transcription for the media file should be shown to people during viewing. Read-Write.                                                    |
| **mediaSource**          | [mediaSource](mediaSource.md)         | Information about the source of media. Read-only.                                                             | 

## Remarks

For more information about the facets on a DriveItem, see [DriveItem](driveitem.md).

[item-resource]: ../resources/driveitem.md
[mediaSource]: mediaSource.md

<!-- {
  "type": "#page.annotation",
  "description": "The media resource type provides information about the media item.",
  "keywords": "mediaItem,client,media info,onedrive",
  "section": "documentation",
  "tocPath": "Facets/Media"
} -->
