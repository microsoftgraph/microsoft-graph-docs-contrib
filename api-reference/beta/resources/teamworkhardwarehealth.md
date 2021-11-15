---
title: "teamworkHardwareHealth resource type"
description: "Details of device hardware health."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkHardwareHealth resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details of health related to device hardware.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|computeHealth|[teamworkPeripheralHealth](../resources/teamworkperipheralhealth.md)|Compute peripheral health info.|
|hdmiIngestHealth|[teamworkPeripheralHealth](../resources/teamworkperipheralhealth.md)|HDMI Ingest peripheral health info.|


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

