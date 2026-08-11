---
title: "streamingMetadata resource type"
description: "Represents network and real-time streaming quality metrics that accompany a synthetic media detection report."
author: "shirleyqin-msft"
ms.date: 06/15/2026
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# streamingMetadata resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents network and real-time streaming quality metrics that accompany a synthetic media detection report. Used by [mediaMetadata](../resources/mediametadata.md) when the analyzed content was streamed in real time.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|frameDropRate|Double|Percentage of frames dropped during streaming, expressed as a value between `0.0` and `1.0`.|
|latencyMs|Int32|Network latency in milliseconds.|
|networkJitterMs|Int32|Network jitter in milliseconds.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.streamingMetadata"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.streamingMetadata",
  "latencyMs": "Int32",
  "frameDropRate": "Double",
  "networkJitterMs": "Int32"
}
```
