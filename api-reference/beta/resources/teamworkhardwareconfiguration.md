---
title: "teamworkHardwareConfiguration resource type"
description: "Represents the details about the hardware configuration for a Microsoft Teams-enabled device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkHardwareConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details about the hardware configuration for a Microsoft Teams-enabled [device](../resources/teamworkdevice.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|processorModel|String|The CPU model on the device.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|compute|[teamworkPeripheral](../resources/teamworkperipheral.md)|The system details for a [teamworkDevice](../resources/teamworkdevice.md).|
|hdmiIngest|[teamworkPeripheral](../resources/teamworkperipheral.md)|The product details about the HDMI ingest of a device.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkHardwareConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkHardwareConfiguration",
  "processorModel": "String"
}
```

