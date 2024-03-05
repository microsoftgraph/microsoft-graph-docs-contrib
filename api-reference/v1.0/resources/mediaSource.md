---
author: ZeljkoTodorovic
description: "Contains metadata about the source of the media (audio or video) drive item."
title: mediaSource resource type
ms.localizationpriority: medium
ms.prod: "sites-and-lists"
doc_type: "resourcePageType"
---
# mediaSource resource type

Contains metadata about the source of the media (audio or video) drive item.

It is available on the media property of the [driveItem](driveitem.md) resources.

## Properties

| Property                 | Type                       | Description                                                                                      |
| :----------------------- | :------------------------  | :----------------------------------------------------------------------------------------------- |
| contentCategory          | mediaSourceContentCategory | Enumeration value that indicates the media content category.                                     |

### mediaSourceContentCategory values

| Value               | Description                                         |
|:------------------- |:----------------------------------------------------|
| meeting             | The media is a meeting.                             |
| liveStream          | The media is a live stream.                         |
| presentation        | The media is a presentation.                        |
| screenRecording     | The media is a screen recording.                    |
| story               | The media is a story.                               |
| profile             | The media is a profile.                             |
| chat                | The media is a chat.                                |
| note                | The media is a note.                                |
| comment             | The media is a comment.                             |
| unknownFutureValue  | Marker value for future compatibility.              |

## JSON representation

The following JSON representation shows the resource type.
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

## See also

For more information about the facets on a driveItem, see [driveItem](driveitem.md).

<!-- {
  "type": "#page.annotation",
  "description": "The mediaSource facet provides information about drive item source.",
  "keywords": "mediaSource,client,media info,onedrive",
  "section": "documentation",
  "tocPath": "Facets/MediaSource"
} -->
