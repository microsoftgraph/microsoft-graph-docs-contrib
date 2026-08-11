---
title: "syntheticMediaDetectionInfo resource type"
description: "Represents the current synthetic media detection result attached to a participant in a call."
author: "shirleyqin-msft"
ms.date: 06/15/2026
ms.localizationpriority: medium
ms.subservice: "cloud-communications"
doc_type: resourcePageType
---

# syntheticMediaDetectionInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the current synthetic media detection result attached to a [participant](../resources/participant.md) in a call. Detection bots produce this object indirectly by invoking [reportSyntheticMedia](../api/participant-reportsyntheticmedia.md). The service then surfaces it on the participant in roster updates and GET responses so all participants can react to the detection.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|detectionId|Guid|Unique identifier for the detection event. This property correlates with the `id` parameter that the detection bot passed to **reportSyntheticMedia**.|
|detectorBot|String|Identifier of the detection bot that produced this result.|
|isParticipantTrusted|Boolean|Set to `true` if the participant is classified as trusted or reliable (for example, a known internal user); otherwise, `false`.|
|syntheticConfidence|Double|Confidence score (`0.0` to `1.0`) that the participant's media is synthetic.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.syntheticMediaDetectionInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.syntheticMediaDetectionInfo",
  "detectionId": "Guid",
  "syntheticConfidence": "Double",
  "detectorBot": "String",
  "isParticipantTrusted": "Boolean"
}
```
