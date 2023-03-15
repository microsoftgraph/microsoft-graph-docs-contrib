---
title: "teamworkHardwareDetail resource type"
description: "Represents the details about the hardware properties of a Microsoft Teams-enabled device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkHardwareDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details about the hardware properties of a Microsoft Teams-enabled [device](../resources/teamworkdevice.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|macAddresses|String collection|MAC address.|
|manufacturer|String|Device manufacturer.|
|model|String|Devie model.|
|serialNumber|String|Device serial number.|
|uniqueId|String|The unique identifier for the device.|


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkHardwareDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkHardwareDetail",
  "macAddresses": [
    "String"
  ],
  "manufacturer": "String",
  "model": "String",
  "serialNumber": "String",
  "uniqueId": "String"
}
```

