---
title: "teamworkSpeakerConfiguration resource type"
description: "Represents the details about the speaker configuration for a Microsoft Teams Rooms device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkSpeakerConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details about the speaker configuration for a Microsoft Teams Rooms [device](../resources/teamworkdevice.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|isCommunicationSpeakerOptional|Boolean|`True` if the communication speaker is optional. Used to compute the health state if the communication speaker is not optional.|
|isSpeakerOptional|Boolean|`True` if the configured speaker is optional. Used to compute the health state if the speaker is not optional.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|defaultCommunicationSpeaker|[teamworkPeripheral](../resources/teamworkperipheral.md)|The default communication speaker used for conference meetings.|
|defaultSpeaker|[teamworkPeripheral](../resources/teamworkperipheral.md)|The default speaker used for all media and notification sounds.|
|speakers|[teamworkPeripheral](../resources/teamworkperipheral.md) collection|The list of connected speakers.|

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

