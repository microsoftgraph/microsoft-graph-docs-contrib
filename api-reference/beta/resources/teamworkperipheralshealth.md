---
title: "teamworkPeripheralsHealth resource type"
description: "Represents health details for all peripheral devices attached to a Microsoft Teams-enabled device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamworkPeripheralsHealth resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents health details for all peripheral devices attached to a Microsoft Teams-enabled [device](../resources/teamworkdevice.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|communicationSpeakerHealth|[teamworkPeripheralHealth](../resources/teamworkperipheralhealth.md)|The health details about the communication speaker.|
|contentCameraHealth|[teamworkPeripheralHealth](../resources/teamworkperipheralhealth.md)|The health details about the content camera.|
|displayHealthCollection|[teamworkPeripheralHealth](../resources/teamworkperipheralhealth.md) collection|The health details about displays.|
|microphoneHealth|[teamworkPeripheralHealth](../resources/teamworkperipheralhealth.md)|The health details about the microphone.|
|roomCameraHealth|[teamworkPeripheralHealth](../resources/teamworkperipheralhealth.md)|The health details about the room camera.|
|speakerHealth|[teamworkPeripheralHealth](../resources/teamworkperipheralhealth.md)|The health details about the speaker.|


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkPeripheralsHealth"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkPeripheralsHealth",
  "communicationSpeakerHealth": {
    "@odata.type": "microsoft.graph.teamworkPeripheralHealth"
  },
  "contentCameraHealth": {
    "@odata.type": "microsoft.graph.teamworkPeripheralHealth"
  },
  "displayHealthCollection": [
    {
      "@odata.type": "microsoft.graph.teamworkPeripheralHealth"
    }
  ],
  "microphoneHealth": {
    "@odata.type": "microsoft.graph.teamworkPeripheralHealth"
  },
  "roomCameraHealth": {
    "@odata.type": "microsoft.graph.teamworkPeripheralHealth"
  },
  "speakerHealth": {
    "@odata.type": "microsoft.graph.teamworkPeripheralHealth"
  }
}
```

