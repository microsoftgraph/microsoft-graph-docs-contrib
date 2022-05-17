---
title: "teamworkHardwareHealth resource type"
description: "Represents the details about the hardware health of a Microsoft Teams-enabled device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkHardwareHealth resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details about the hardware health of a Microsoft Teams-enabled [device](../resources/teamworkdevice.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|computeHealth|[teamworkPeripheralHealth](../resources/teamworkperipheralhealth.md)|The system health details for a [teamworkDevice](../resources/teamworkdevice.md).|
|hdmiIngestHealth|[teamworkPeripheralHealth](../resources/teamworkperipheralhealth.md)|The health details about the HDMI ingest of a device.|


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkHardwareHealth"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkHardwareHealth",
  "computeHealth": {
    "@odata.type": "microsoft.graph.teamworkPeripheralHealth"
  },
  "hdmiIngestHealth": {
    "@odata.type": "microsoft.graph.teamworkPeripheralHealth"
  }
}
```

