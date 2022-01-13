---
title: "teamworkSpeakerConfiguration resource type"
description: "Details of speaker configuration of a device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkSpeakerConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details of speaker configuration of a [teamworkDevice](../resources/teamworkdevice.md). These details are applicable only for Microsoft Teams Rooms devices.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isCommunicationSpeakerOptional|Boolean|True if Communication Speaker is optional. Used to compute health state in case not optional|
|isSpeakerOptional|Boolean|True if configured speaker is optional. Used to compute health state if speaker is not optional.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|defaultCommunicationSpeaker|[teamworkPeripheral](../resources/teamworkperipheral.md)|Info for the deafult communication speaker. This speaker is used for calls.|
|defaultSpeaker|[teamworkPeripheral](../resources/teamworkperipheral.md)|Info for the default speaker which is used for all media and notification sounds.|
|speakers|[teamworkPeripheral](../resources/teamworkperipheral.md) collection|List of connected speakers.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkSpeakerConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkSpeakerConfiguration",
  "isCommunicationSpeakerOptional": "Boolean",
  "isSpeakerOptional": "Boolean"
}
```

