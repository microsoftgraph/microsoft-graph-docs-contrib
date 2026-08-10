---
title: "syntheticMediaDetectionDetail resource type"
description: "Represents one individual detection result produced by a synthetic media detection model for a single time segment of media."
author: "shirleyqin-msft"
ms.date: 06/15/2026
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# syntheticMediaDetectionDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents one individual detection result produced by a synthetic media detection model for a single time segment of media. A [reportSyntheticMedia](../api/participant-reportsyntheticmedia.md) request can contain a collection of these details (for example, one per model or per segment).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|confidence|Double|Confidence score for this specific detection, expressed as a value between `0.0` and `1.0`.|
|modality|contentModality|Type of media to be analyzed. The possible values are: `audio`, `video`, `image`, `text`, `multimodal`, `unknownFutureValue`.|
|modelName|String|Name of the detection model used (for example, `DeepfakeDetector-v2`, `VoiceAuthenticator-v1`).|
|modelTasks|String collection|Detection tasks that the model performed. This value is free-form text. The bot can specify any task names that describe its analysis. Common examples include `faceSwap`, `lipSync`, and `voiceClone`.|
|segment|[mediaSegment](../resources/mediasegment.md)|Time segment of the media that was analyzed.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.syntheticMediaDetectionDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.syntheticMediaDetectionDetail",
  "modelName": "String",
  "modality": "String",
  "modelTasks": [
    "String"
  ],
  "segment": {
    "@odata.type": "microsoft.graph.mediaSegment"
  },
  "confidence": "Double"
}
```
