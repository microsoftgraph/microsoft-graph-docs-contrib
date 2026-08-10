---
title: "videoMetadata resource type"
description: "Represents video-specific encoding and quality details supplied alongside a synthetic media detection report."
author: "shirleyqin-msft"
ms.date: 06/15/2026
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# videoMetadata resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents video-specific encoding and quality details supplied alongside a synthetic media detection report. Set on [mediaMetadata](../resources/mediametadata.md) when the analyzed content is video or multimodal.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|bitrateKbps|Int32|Video bitrate in kilobits per second.|
|codec|String|The video codec used (for example, `H.264` or `VP9`).|
|frameRate|Double|Frame rate in frames per second.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.videoMetadata"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.videoMetadata",
  "codec": "String",
  "frameRate": "Double",
  "bitrateKbps": "Int32"
}
```
