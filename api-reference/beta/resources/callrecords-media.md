---
title: "media resource type"
description: "Represents the media (for example, audio, video, and video-based screen-sharing) used in a call."
ms.localizationpriority: medium
author: "mcm223"
ms.subservice: "cloud-communications"
doc_type: "resourcePageType"
ms.date: 11/08/2024
---

# media resource type

Namespace: microsoft.graph.callRecords

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the media (for example, audio, video, and video-based screen-sharing) used in a call.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|label|String|How the media was identified during media negotiation stage.|
|callerDevice|[microsoft.graph.callRecords.deviceInfo](callrecords-deviceinfo.md)|Device information associated with the caller endpoint of this media.|
|callerNetwork|[microsoft.graph.callRecords.networkInfo](callrecords-networkinfo.md)|Network information associated with the caller endpoint of this media.|
|calleeDevice|[microsoft.graph.callRecords.deviceInfo](callrecords-deviceinfo.md)|Device information associated with the callee endpoint of this media.|
|calleeNetwork|[microsoft.graph.callRecords.networkInfo](callrecords-networkinfo.md)|Network information associated with the callee endpoint of this media.|
|streams|[microsoft.graph.callRecords.mediaStream](callrecords-mediastream.md) collection|Network streams associated with this media.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.callRecords.media",
  "baseType": null
}-->

```json
{
  "label": "String",
  "callerDevice": {"@odata.type": "microsoft.graph.callRecords.deviceInfo"},
  "callerNetwork": {"@odata.type": "microsoft.graph.callRecords.networkInfo"},
  "calleeDevice": {"@odata.type": "microsoft.graph.callRecords.deviceInfo"},
  "calleeNetwork": {"@odata.type": "microsoft.graph.callRecords.networkInfo"},
  "streams": [{"@odata.type": "microsoft.graph.callRecords.mediaStream"}]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "media resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->

