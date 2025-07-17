---
author: spgraph-docs-team
title: video resource type
ms.localizationpriority: medium
description: "The video resource groups video-related data items into a single structure."
ms.subservice: onedrive
doc_type: resourcePageType
ms.date: 07/22/2024
---

# video resource type

Namespace: microsoft.graph

The **video** resource groups video-related data items into a single structure.

If a [**driveItem**](driveitem.md) has a non-null **video** facet, the item represents a video file.
The properties of the **video** resource are populated by extracting metadata from the file.

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
  "frameRate": 239.877,
  "height": 1280,
  "width": 720
}
```

## Properties

| Property name             | Type   | Description
|:--------------------------|:-------|:----------------------------------------
| **audioBitsPerSample**    | Int32  | Number of audio bits per sample.
| **audioChannels**         | Int32  | Number of audio channels.
| **audioFormat**           | string | Name of the audio format (AAC, MP3, etc.).
| **audioSamplesPerSecond** | Int32  | Number of audio samples per second.
| **bitrate**               | Int32  | Bit rate of the video in bits per second.
| **duration**              | Int64  | Duration of the file in milliseconds.
| **fourCC**                | string | "Four character code" name of the video format.
| **frameRate**             | double | Frame rate of the video.
| **height**                | Int32  | Height of the video, in pixels.
| **width**                 | Int32  | Width of the video, in pixels.

[item-resource]: ../resources/driveitem.md

## Remarks

For more information about the facets on a driveItem, see [driveItem](driveitem.md).

<!-- {
  "type": "#page.annotation",
  "description": "The video facet provides information about the properties of a video file.",
  "keywords": "bitrate,duration,size,video",
  "section": "documentation",
  "tocPath": "Facets/Video"
} -->

