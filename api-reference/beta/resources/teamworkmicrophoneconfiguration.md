---
title: "teamworkMicrophoneConfiguration resource type"
description: "Details of microphone configuration."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkMicrophoneConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Deatil of microphone configuration. Applicable only for Teams Room Devices.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isMicrophoneOptional|Boolean|True if configured microphone is optional. Used to compute health state if speaker is not optional.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|defaultMicrophone|[teamworkPeripheral](../resources/teamworkperipheral.md)|Info for the deafult microphone.|
|microphones|[teamworkPeripheral](../resources/teamworkperipheral.md) collection|List of all microphones.|

## JSON representation
The following is a JSON representation of the resource.
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

