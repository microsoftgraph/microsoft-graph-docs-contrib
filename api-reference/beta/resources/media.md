---
author: MarcMroz
description: "The media resource contains metadata about the media (audio or video) drive item."
title: media resource type
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: "sharepoint"
ms.date: 03/12/2024
---
# media resource type

Contains metadata about the media (audio or video) drive item.

It is available on the media property of [driveItem][item-resource] resources.


## Properties

| Property                 | Type                  | Description                                                                                                   |
| :----------------------- | :-------------------- | :------------------------------------------------------------------------------------------------------------ 
| **isTranscriptionShown** | Boolean               | If a file has a transcript, this setting controls if the closed captions / transcription for the media file should be shown to people during viewing. Read-Write.                                                    |
| **mediaSource**          | [mediaSource](mediaSource.md)         | Information about the source of media. Read-only.                                                             | 


## Relationships
None.

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

## Related content 

For more information about the facets on a driveItem, see [driveItem](driveitem.md).

[item-resource]: ../resources/driveitem.md
[mediaSource]: mediaSource.md

<!-- {
  "type": "#page.annotation",
  "description": "The media resource type provides information about the media item.",
  "keywords": "mediaItem,client,media info,onedrive",
  "section": "documentation",
  "tocPath": "Facets/Media"
} -->
