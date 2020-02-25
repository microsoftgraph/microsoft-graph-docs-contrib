---
author: dongkyun
description: "Video teleconferencing device video quality data."
ms.date: 02/19/2020
title: File
localization_priority: Normal
doc_type: resourcePageType
ms.prod: ""
---
# teleconferenceDeviceVideoQuality resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Video teleconferencing device video quality data.

## Properties

teleconferenceDeviceVideoQuality inherits the properties from [teleconferenceDeviceMediaQuality](teleconferenceDeviceMediaQuality.md).  The following list is the additional properties.

| Property | Type                    | Description                                                                                                                                      |
|:---------|:------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------|
|averageInboundFrameRatePerSecond  |Double |The average inbound stream video frame rate per second.|
|averageOutboundFrameRatePerSecond |Double |The average outbound stream video frame rate per second.|
|averageInboundBitRatePerSecond    |Double |The average inbound stream video bit rate per second.|
|averageOutboundBitRatePerSecond   |Double |The average outbound stream video bit rate per second.|

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
  "maximumOutboundJitter": "String (ISO 8601 duration)",
  "averageInboundFrameRatePerSecond": "String (ISO 8601 duration)",
  "averageOutboundFrameRatePerSecond": "String (ISO 8601 duration)",
  "averageInboundBitRatePerSecond": "String (ISO 8601 duration)",
  "averageOutboundBitRatePerSecond": "String (ISO 8601 duration)"
}
```

<!--
{
  "type": "#page.annotation",
  "description": "Video teleconferencing device video quality data.",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
