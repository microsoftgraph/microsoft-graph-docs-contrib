---
author: dongkyun
description: "Video teleconferencing device media quality data."
ms.date: 02/19/2020
title: File
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
---
# teleconferenceDeviceMediaQuality resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Video teleconferencing device media quality data.

## Properties

| Property | Type                    | Description                                                                                                                                      |
|:---------|:------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------|
|channelIndex                              |Int64    |The channel index of media. Indexing begins with 1.  If a media session contains 3 video modalities, channel indexes will be 1, 2, and 3.|
|mediaDuration                             |Duration |The total modality duration. If the media enabled and disabled multiple times, MediaDuration will the summation of all of the durations.|
|networkLinkSpeedInBytes                   |Int64    |the network link speed in bytes.|
|localIPAddress                            |String   |the local IP address for the media session.|
|localPort                                 |Int64    |The local media port.|
|remoteIPAddress                           |String   |The remote IP address for the media session.|
|remotePort                                |Int64    |The remote media port.|
|inboundPackets                            |Int64    |The total number of the inbound packets.|
|outboundPackets                           |Int64    |The total number of the outbound packets.|
|averageInboundPacketLossRateInPercentage  |Double   |The average inbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.|
|averageOutboundPacketLossRateInPercentage |Double   |The average outbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.|
|maximumInboundPacketLossRateInPercentage  |Double   |The maximum inbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.|
|maximumOutboundPacketLossRateInPercentage |Double   |The maximum outbound stream packet loss rate in percentage (0-100). For example, 0.01 means 0.01%.|
|averageInboundRoundTripDelay              |Duration |The average inbound stream network round trip delay.|
|averageOutboundRoundTripDelay             |Duration |The average outbound stream network round trip delay.|
|maximumInboundRoundTripDelay              |Duration |The maximum inbound stream network round trip delay.|
|maximumOutboundRoundTripDelay             |Duration |The maximum outbound stream network round trip delay.|
|averageInboundJitter                      |Duration |The average inbound stream network jitter.|
|averageOutboundJitter                     |Duration |The average outbound stream network jitter.|
|maximumInboundJitter                      |Duration |The maximum inbound stream network jitter.|
|maximumOutboundJitter                     |Duration |The maximum outbound stream network jitter.|

## JSON representation

Here is a JSON representation of the resource.

```json
{
  "channelIndex": "Int64",
  "mediaDuration": "String (ISO 8601 duration)",
  "networkLinkSpeedInBytes": "Int64",
  "localIPAddress": "String",
  "localPort": "Int64",
  "remoteIPAddress": "String",
  "remotePort": "Int64",
  "inboundPackets": "Int64",
  "outboundPackets": "Int64",
  "averageInboundPacketLossRateInPercentage": "Double",
  "averageOutboundPacketLossRateInPercentage": "Double",
  "maximumInboundPacketLossRateInPercentage": "Double",
  "maximumOutboundPacketLossRateInPercentage": "Double",
  "averageInboundRoundTripDelay": "String (ISO 8601 duration)",
  "averageOutboundRoundTripDelay": "String (ISO 8601 duration)",
  "maximumInboundRoundTripDelay": "String (ISO 8601 duration)",
  "maximumOutboundRoundTripDelay": "String (ISO 8601 duration)",
  "averageInboundJitter": "String (ISO 8601 duration)",
  "averageOutboundJitter": "String (ISO 8601 duration)",
  "maximumInboundJitter": "String (ISO 8601 duration)",
  "maximumOutboundJitter": "String (ISO 8601 duration)"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "Video teleconferencing device media quality data.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
