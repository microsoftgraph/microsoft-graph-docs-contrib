---
title: "teamworkHardwareDetail resource type"
description: "Details of device hardware."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkHardwareDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details of device hardware related properties.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|macAddresses|String collection|MAC address.|
|manufacturer|String|Device manufacturer.|
|model|String|Devie model.|
|serialNumber|String|Device serial number.|
|uniqueId|String|Device unique Id.|


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
  "serialNumber": "String",
  "uniqueId": "String",
  "macAddresses": [
    "String"
  ],
  "manufacturer": "String",
  "model": "String"
}
```

