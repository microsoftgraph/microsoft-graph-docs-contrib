---
title: "media resource type"
description: "The media type"
localization_priority: Normal
author: "stjust"
ms.prod: "microsoft-ic3"
doc_type: "resourcePageType"
---

# media resource type

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The media type. Represents the media (audio, video, video-based screen-sharing, etc.) used in a call.

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|label|String|How the media was identified during media negation stage.|
|callerDevice|[deviceInfo](callrecords-deviceinfo.md)|Device information associated with the caller endpoint of this media.|
|callerNetwork|[networkInfo](callrecords-networkinfo.md)|Network information associated with the caller endpoint of this media.|
|calleeDevice|[deviceInfo](callrecords-deviceinfo.md)|Device information associated with the callee endpoint of this media.|
|calleeNetwork|[networkInfo](callrecords-networkinfo.md)|Network information associated with the callee endpoint of this media.|
|streams|[mediaStream](callrecords-mediastream.md) collection||

|`label`|`Edm.String`|How the media was identified during media negation stage.|No|Yes|
|`callerNetwork`|`microsoft.graph.callRecords.networkInfo`|Network information associated with the caller endpoint of this media.|No|Yes|
|`calleeNetwork`|`microsoft.graph.callRecords.networkInfo`|Network information associated with the callee endpoint of this media.|No|Yes|
|`callerDevice`|`microsoft.graph.callRecords.deviceInfo`|Device information associated with the caller endpoint of this media.|No|Yes|
|`calleeDevice`|`microsoft.graph.callRecords.deviceInfo`|Device information associated with the callee endpoint of this media.|No|Yes|
|`streams`|`Collection(microsoft.graph.callRecords.mediaStream)`|Network streams associated with this media.|No|Yes|



## JSON representation

The following is a JSON representation of the resource.

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