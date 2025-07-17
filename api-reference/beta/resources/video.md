---
author: spgraph-docs-team
description: Groups video-related data items into a single structure.
ms.date: 09/10/2017
title: Video
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: onedrive
---

# Video resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Groups video-related data items into a single structure.

If a [**DriveItem**](driveitem.md) has a non-null **video** facet, the item represents a video file.
The properties of the **Video** resource are populated by extracting metadata from the file.

## Properties

| Property                  | Type   | Description                                     |
| :------------------------ | :----- | :---------------------------------------------- |
| audioBitsPerSample    | Int32  | Number of audio bits per sample.                |
| audioChannels         | Int32  | Number of audio channels.                       |
| audioFormat           | string | Name of the audio format (AAC, MP3, etc.).      |
| audioSamplesPerSecond | Int32  | Number of audio samples per second.             |
| bitrate               | Int32  | Bit rate of the video in bits per second.       |
| duration              | Int64  | Duration of the file in milliseconds.           |
| fourCC                | string | "Four character code" name of the video format. |
| framerate             | double | Frame rate of the video.                        |
| height                | Int32  | Height of the video, in pixels.                 |
| width                 | Int32  | Width of the video, in pixels.                  |

[item-resource]: ../resources/driveitem.md

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [  ],
  "@odata.type": "microsoft.graph.video"
}-->

```json
{
  "audioBitsPerSample": 16,
  "audioChannels": 1,
  "audioFormat": "AAC",
  "audioSamplesPerSecond": 44100,
  "bitrate": 39101896,
  "duration": 8053,
  "fourCC": "H264",
  "height": 1280,
  "width": 720,
  "framerate": 2.75
}
```

## Remarks

For more information, see [DriveItem](driveitem.md).

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->

<!--
{
  "type": "#page.annotation",
  "description": "The video facet provides information about the properties of a video file.",
  "keywords": "bitrate,duration,size,video",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
