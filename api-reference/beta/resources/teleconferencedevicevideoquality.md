---
title: "teleconferenceDeviceVideoQuality resource type"
description: "Represents video teleconferencing device video quality data."
localization_priority: Normal
author: "dongkyun"
ms.prod: "cloud-communications"
doc_type: "resourcePageType"
---

# teleconferenceDeviceVideoQuality resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents video teleconferencing device video quality data.

## Properties

The **teleconferenceDeviceVideoQuality** resource inherits the properties from [teleconferenceDeviceMediaQuality](teleconferencedevicemediaquality.md), and includes the following additional properties.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|averageInboundBitRate|Double|The average inbound stream video bit rate per second.|
|averageInboundFrameRate|Double|The average inbound stream video frame rate per second.|
|averageOutboundBitRate|Double|The average outbound stream video bit rate per second.|
|averageOutboundFrameRate|Double|The average outbound stream video frame rate per second.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.teleconferenceDeviceVideoQuality",
  "baseType": "microsoft.graph.teleconferenceDeviceMediaQuality"
}-->

```json
{
  "averageInboundBitRate": 1024,
  "averageInboundFrameRate": 1024,
  "averageOutboundBitRate": 1024,
  "averageOutboundFrameRate": 1024
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "teleconferenceDeviceVideoQuality resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
