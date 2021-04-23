---
author: Elmaz Khussainov
description: "The mediaSource resource contains metadata about source of the media (audio or video) drive item."
ms.author: elkhussa
ms.date: 07/15/2020
title: MediaSource
localization_priority: Normal
ms.prod: "sharepoint"
doc_type: "resourcePageType"
---
# MediaSource facet

The **MediaSource** resource contains metadata about the source of media (audio or video) drive item.

It is available on the media property of [driveItem][item-resource] resources.

## Properties

| Property                 | Type                       | Description                                                                                      |
| :----------------------- | :------------------------  | :----------------------------------------------------------------------------------------------- |
| **contentCategory**      | mediaSourceContentCategory | Enumeration value that indicates the media content category.                                     |

## JSON representation

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "contentCategory"
  ],
  "@odata.type": "microsoft.graph.mediaSource"
}-->

```json
{
  "contentCategory" : "string"
}
```

### mediaSourceContentCategory values

| Value               | Description                                         |
|:------------------- |:----------------------------------------------------|
| meeting             | The media is a meeting.                             |
| liveStream          | The media is a live stream.                         |
| presentation        | The media is a presentation.                        |
| screenRecording     | The media is a screen recording.                    |
| unknownFutureValue  | Marker value for future compatibility.              |

## Remarks

For more information about the facets on a DriveItem, see [DriveItem](driveitem.md).

[item-resource]: ../resources/driveitem.md

<!-- {
  "type": "#page.annotation",
  "description": "The mediaSource facet provides information about drive item source.",
  "keywords": "mediaSource,client,media info,onedrive",
  "section": "documentation",
  "tocPath": "Facets/MediaSource"
} -->
