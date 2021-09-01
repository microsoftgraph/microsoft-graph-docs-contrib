---
title: "userSimulationEventInfo resource type"
description: "Represents simulation event of a user in a tenant in an attack simulation and training campaign."
author: "gopkr"
localization_priority: Normal
ms.prod: "security"
doc_type: resourcePageType
---

# userSimulationEventInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents simulation event of a user in a tenant in an attack simulation and training campaign.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|browser|String|Browser of the user for the simulation event.|
|eventDateTime|DateTimeOffset|Date and time of the simulation event.|
|eventName|String|Name of the simulation event.|
|ipAddress|String|IP address of the user for the simulation event.|
|osPlatformDeviceDetails|String|OS, platform and device details of the user for the simulation event.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userSimulationEventInfo"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.userSimulationEventInfo",
  "eventName": "String",
  "eventDateTime": "String (timestamp)",
  "ipAddress": "String",
  "osPlatformDeviceDetails": "String",
  "browser": "String"
}
```

