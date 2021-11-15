---
title: "teamworkPeripheralsHealth resource type"
description: "Details of all peripherals of a device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkPeripheralsHealth resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Health details of all the peripherals attached to a device.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|communicationSpeakerHealth|[teamworkPeripheralHealth](../resources/teamworkperipheralhealth.md)|Communication speaker health details.|
|contentCameraHealth|[teamworkPeripheralHealth](../resources/teamworkperipheralhealth.md)|Content camera health details.|
|displayHealthCollection|[teamworkPeripheralHealth](../resources/teamworkperipheralhealth.md) collection|Displays health details.|
|microphoneHealth|[teamworkPeripheralHealth](../resources/teamworkperipheralhealth.md)|Microphone health details.|
|roomCameraHealth|[teamworkPeripheralHealth](../resources/teamworkperipheralhealth.md)|Roomcamera health details.|
|speakerHealth|[teamworkPeripheralHealth](../resources/teamworkperipheralhealth.md)|Speaker health details.|


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkPeripheralsHealth"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkPeripheralsHealth",
  "roomCameraHealth": {
    "@odata.type": "microsoft.graph.teamworkPeripheralHealth"
  },
  "contentCameraHealth": {
    "@odata.type": "microsoft.graph.teamworkPeripheralHealth"
  },
  "speakerHealth": {
    "@odata.type": "microsoft.graph.teamworkPeripheralHealth"
  },
  "communicationSpeakerHealth": {
    "@odata.type": "microsoft.graph.teamworkPeripheralHealth"
  },
  "displayHealthCollection": [
    {
      "@odata.type": "microsoft.graph.teamworkPeripheralHealth"
    }
  ],
  "microphoneHealth": {
    "@odata.type": "microsoft.graph.teamworkPeripheralHealth"
  }
}
```

