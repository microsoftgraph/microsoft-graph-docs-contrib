---
title: "teamworkMicrophoneConfiguration resource type"
description: "Represents the details about the microphone configuration for a Microsoft Teams Rooms device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamworkMicrophoneConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details about the microphone configuration for a Microsoft Teams Rooms [device](../resources/teamworkdevice.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isMicrophoneOptional|Boolean|`True` if the configured microphone is optional. `False` if the microphone is not optional and the health state of the device should be computed.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|defaultMicrophone|[teamworkPeripheral](../resources/teamworkperipheral.md)|Information about the default microphone.|
|microphones|[teamworkPeripheral](../resources/teamworkperipheral.md) collection|A collection of microphones.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkMicrophoneConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkMicrophoneConfiguration",
  "isMicrophoneOptional": "Boolean"
}
```

