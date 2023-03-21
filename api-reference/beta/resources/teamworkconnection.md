---
title: "teamworkConnection resource type"
description: "Represents the details about the connection status of a Microsoft Teams-enabled device and its peripherals."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkConnection resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details about the connection status of a Microsoft Teams-enabled [device](../resources/teamworkdevice.md) and its peripherals.
The connection status is useful when you calculate the device health as when the required peripheral is not connected properly the device health changes to critical state.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|connectionStatus|teamworkConnectionStatus|Indicates whether a component/peripheral is connected/disconnected or its state is unknown. The possible values are: `unknown`, `connected`, `disconnected`, `unknownFutureValue`.|
|lastModifiedDateTime|DateTimeOffset|Time at which the state was last changed. For example, indicates _connected since_ when the state is `connected` and _disconnected since_ when the state is `disconnected`.|


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

