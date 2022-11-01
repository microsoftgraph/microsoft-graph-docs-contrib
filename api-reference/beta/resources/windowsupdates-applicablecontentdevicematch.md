---
title: "applicableContentDeviceMatch resource type"
description: "Collection of devices and recommendations for applicable catalog content."
author: "ryan-k-williams"
ms.localizationpriority: medium
ms.prod: "w10"
doc_type: resourcePageType
---

# catalogContent resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Collection of devices and recommendations for applicable catalog content.


## Properties
|Property|Type|Description|
|:---|:---|:---|
|recommendedBy|Collection(String)|Collection of vendors recommending the content.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|device|[microsoft.graph.device](../resources/device.md)|Represents a device registered in the directory.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsUpdates.catalogContent"
}
-->
``` json
{
  "@odata.type": "microsoft.graph.windowsUpdates.applicableContentDeviceMatch",
  "device": {
    "@odata.type": "microsoft.graph.device"
  },
  "recommendedBy": ["String"]
}
```

