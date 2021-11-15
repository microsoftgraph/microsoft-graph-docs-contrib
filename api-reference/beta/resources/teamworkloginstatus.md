---
title: "teamworkLoginStatus resource type"
description: "Login status of teams, skype and exchange."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkLoginStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details of Login status of Teams, Skype and Exchange.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|exchangeConnection|[teamworkConnection](../resources/teamworkconnection.md)|Exchange connection status info.|
|skypeConnection|[teamworkConnection](../resources/teamworkconnection.md)|Skype connection status info.|
|teamsConnection|[teamworkConnection](../resources/teamworkconnection.md)|Teams connection status info.|


## JSON representation
The following is a JSON representation of the resource.
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

