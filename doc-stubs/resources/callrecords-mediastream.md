---
title: "mediaStream resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# mediaStream resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Properties
|Property|Type|Description|
|:---|:---|:---|
|averageAudioDegradation|Single|**TODO: Add Description**|
|averageAudioNetworkJitter|Duration|**TODO: Add Description**|
|averageBandwidthEstimate|Int64|**TODO: Add Description**|
|averageJitter|Duration|**TODO: Add Description**|
|averagePacketLossRate|Single|**TODO: Add Description**|
|averageRatioOfConcealedSamples|Single|**TODO: Add Description**|
|averageReceivedFrameRate|Single|**TODO: Add Description**|
|averageRoundTripTime|Duration|**TODO: Add Description**|
|averageVideoFrameLossPercentage|Single|**TODO: Add Description**|
|averageVideoFrameRate|Single|**TODO: Add Description**|
|averageVideoPacketLossRate|Single|**TODO: Add Description**|
|endDateTime|DateTimeOffset|**TODO: Add Description**|
|lowFrameRateRatio|Single|**TODO: Add Description**|
|lowVideoProcessingCapabilityRatio|Single|**TODO: Add Description**|
|maxAudioNetworkJitter|Duration|**TODO: Add Description**|
|maxJitter|Duration|**TODO: Add Description**|
|maxPacketLossRate|Single|**TODO: Add Description**|
|maxRatioOfConcealedSamples|Single|**TODO: Add Description**|
|maxRoundTripTime|Duration|**TODO: Add Description**|
|packetUtilization|Int64|**TODO: Add Description**|
|postForwardErrorCorrectionPacketLossRate|Single|**TODO: Add Description**|
|startDateTime|DateTimeOffset|**TODO: Add Description**|
|streamDirection|mediaStreamDirection|**TODO: Add Description**. The possible values are: `callerToCallee`, `calleeToCaller`.|
|streamId|String|**TODO: Add Description**|
|wasMediaBypassed|Boolean|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.callRecords.mediaStream"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.callRecords.mediaStream",
  "averageAudioDegradation": "Single",
  "averageAudioNetworkJitter": "String (duration)",
  "averageBandwidthEstimate": "Integer",
  "averageJitter": "String (duration)",
  "averagePacketLossRate": "Single",
  "averageRatioOfConcealedSamples": "Single",
  "averageReceivedFrameRate": "Single",
  "averageRoundTripTime": "String (duration)",
  "averageVideoFrameLossPercentage": "Single",
  "averageVideoFrameRate": "Single",
  "averageVideoPacketLossRate": "Single",
  "endDateTime": "String (timestamp)",
  "lowFrameRateRatio": "Single",
  "lowVideoProcessingCapabilityRatio": "Single",
  "maxAudioNetworkJitter": "String (duration)",
  "maxJitter": "String (duration)",
  "maxPacketLossRate": "Single",
  "maxRatioOfConcealedSamples": "Single",
  "maxRoundTripTime": "String (duration)",
  "packetUtilization": "Integer",
  "postForwardErrorCorrectionPacketLossRate": "Single",
  "startDateTime": "String (timestamp)",
  "streamDirection": "String",
  "streamId": "String",
  "wasMediaBypassed": "Boolean"
}
```

