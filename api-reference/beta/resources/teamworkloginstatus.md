---
title: "teamworkLoginStatus resource type"
description: "Represents the details about the login status of Microsoft Teams, Skype, and Exchange."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkLoginStatus resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details about the login status of Microsoft Teams, Skype, and Exchange in a [teamworkDevice](../resources/teamworkdevice.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|exchangeConnection|[teamworkConnection](../resources/teamworkconnection.md)|Information about the Exchange connection.|
|skypeConnection|[teamworkConnection](../resources/teamworkconnection.md)|Information about the Skype connection.|
|teamsConnection|[teamworkConnection](../resources/teamworkconnection.md)|Information about the Skype connection.|


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

