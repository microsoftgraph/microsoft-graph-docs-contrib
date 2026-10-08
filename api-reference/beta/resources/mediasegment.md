---
title: "mediaSegment resource type"
description: "Represents a contiguous time range of media analyzed by a synthetic media detection model and, for video, specific frames."
author: "shirleyqin-msft"
ms.date: 06/15/2026
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# mediaSegment resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a contiguous time range of media analyzed by a synthetic media detection model and, for video, specific frames. Used by [syntheticMediaDetectionDetail](../resources/syntheticmediadetectiondetail.md).

For real-time analysis of a live stream, **startTimeSec** and **endTimeSec** are measured in seconds from the start of the analyzed stream, which serves as the zero point. For recorded or offline analysis, where a stream-relative time base doesn't apply, set both values to `0`.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|endTimeSec|Int32|End time of the segment, in seconds from the start of the analyzed live stream. Set to `0` for recorded or offline analysis, where a stream-relative time base doesn't apply.|
|frameIndices|Int32 collection|Frame indices that identify the video frames in the segment. Applies only to video analysis; pass an empty array for audio-only segments.|
|startTimeSec|Int32|Start time of the segment, in seconds from the start of the analyzed live stream. Set to `0` for recorded or offline analysis, where a stream-relative time base doesn't apply.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.mediaSegment"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.mediaSegment",
  "startTimeSec": "Int32",
  "endTimeSec": "Int32",
  "frameIndices": [
    "Int32"
  ]
}
```
