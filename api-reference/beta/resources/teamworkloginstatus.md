---
title: "teamworkLoginStatus resource type"
description: "Represents Microsoft Teams, Skype for Business, and Exchange sign-in status for a Microsoft Teams-enabled device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamworkLoginStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents Microsoft Teams, Skype for Business, and Exchange sign-in status for a Microsoft Teams-enabled [device](../resources/teamworkdevice.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|exchangeConnection|[teamworkConnection](../resources/teamworkconnection.md)|Information about the Exchange connection.|
|skypeConnection|[teamworkConnection](../resources/teamworkconnection.md)|Information about the Skype for Business connection.|
|teamsConnection|[teamworkConnection](../resources/teamworkconnection.md)|Information about the Teams connection.|


## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkLoginStatus"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkLoginStatus",
  "exchangeConnection": {
    "@odata.type": "microsoft.graph.teamworkConnection"
  },
  "teamsConnection": {
    "@odata.type": "microsoft.graph.teamworkConnection"
  },
  "skypeConnection": {
    "@odata.type": "microsoft.graph.teamworkConnection"
  }
}
```

