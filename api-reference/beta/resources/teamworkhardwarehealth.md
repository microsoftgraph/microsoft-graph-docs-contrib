---
title: "teamworkHardwareHealth resource type"
description: "Represents the details about the hardware health of a Microsoft Teams-enabled device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
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
The following JSON representation shows the resource type.
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

