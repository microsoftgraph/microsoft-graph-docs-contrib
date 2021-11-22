---
title: "teamworkConnection resource type"
description: "Connection status infromation."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkConnection resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details of the connection status of a device and its peripherals.
This is helpful in calculating device health.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|connectionStatus|[teamworkConnectionStatus](teamworkconnectionstatus.md)|Enum indicating whether component/peripheral is connected/disconnected or its state is unknown. The possible values are: `unknown`, `connected`, `disconnected`, `unknownFutureValue`.|
|lastModifiedDateTime|DateTimeOffset|Time at which the state was last changed. i.e. Indicates connected since when state is connected and disconnected since when state is disconnected.|


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkConnection"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkConnection",
  "connectionStatus": "String",
  "lastModifiedDateTime": "String (timestamp)"
}
```

