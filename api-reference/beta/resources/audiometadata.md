---
title: "audioMetadata resource type"
description: "Represents audio-specific encoding details supplied alongside a synthetic media detection report."
author: "shirleyqin-msft"
ms.date: 06/15/2026
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# audioMetadata resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents audio-specific encoding details supplied alongside a synthetic media detection report. Set on [mediaMetadata](../resources/mediametadata.md) when the analyzed content is audio or multimodal.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|bitDepth|Int32|Bit depth of the audio samples (for example, `16`, `24`).|
|channels|Int32|Number of audio channels (for example, `1` for mono, `2` for stereo).|
|sampleRateHz|Int32|Sample rate in Hertz (for example, `16000`, `48000`).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.audioMetadata"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.audioMetadata",
  "sampleRateHz": "Int32",
  "bitDepth": "Int32",
  "channels": "Int32"
}
```
