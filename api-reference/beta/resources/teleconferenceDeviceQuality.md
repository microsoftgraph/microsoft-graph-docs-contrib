---
author: dongkyun
description: "Video teleconferencing device session level quality data."
ms.date: 02/19/2020
title: File
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
---
# teleconferenceDeviceQuality resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Video teleconferencing device session level quality data.

## Properties

| Property | Type                    | Description                                                                                                                                      |
|:---------|:------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------|
|callChainId                      |Guid     |A unique identifier for all of the participant calls in a conference or a unique identifier for two participant calls in P2P call.  This needs to be copied over from `Microsoft.Graph.Call.CallChainId`.|
|participantId                    |Guid     |A unique identifier for a specific participant in a conference. CVI partner needs to copy over `Call.MyParticipantId` to this property.|
|mediaLegId                       |Guid     |A unique identifier for a specific media leg of a participant in a conference.  One participant can have multiple media leg identifiers if retargeting happens. CVI partner assigns this value.|
|deviceName                       |String   |The user media agent name such as `Cisco SX80`.|
|deviceDescription                |String   |Any additional description such as `VTC Bldg 30/21`.|
|cloudServiceName                 |String   |The Azure deployed cloud service name such as `contoso.cloudapp.net`.|
|cloudServiceInstanceName         |String   |The Azure deployed cloud service instance name such as `FrontEnd_IN_3`.|
|cloudServiceDeploymentId         |String   |A unique deployment identifier assigned by Azure.|
|cloudServiceDeploymentEnvironment|String   |A geo-region where the service is deployed such as `ProdNoam`.|
|mediaQualityList                 |[teleconferenceDeviceMediaQuality](teleconferenceDeviceMediaQuality.md) collection|The list of media qualities in a media session (call) such as audio quality, video quality, and/or screen sharing quality.|

## JSON representation

Here is a JSON representation of the resource.

```json
{
  "callChainId": "GUID",
  "participantId": "GUID",
  "mediaLegId": "GUID",
  "deviceName": "String",
  "deviceDescription": "String",
  "cloudServiceName": "String",
  "cloudServiceInstanceName": "String",
  "cloudServiceDeploymentId": "String",
  "cloudServiceDeploymentEnvironment": "String",
  "mediaQualityList": [{"@odata.type": "#microsoft.graph.teleconferenceDeviceMediaQuality"}]
}
```

<!--
{
  "type": "#page.annotation",
  "description": "Video teleconferencing device session level quality data.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
