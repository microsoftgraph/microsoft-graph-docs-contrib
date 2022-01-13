---
title: "teamworkTeamsClientConfiguration resource type"
description: "Details of teams client configuration."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkTeamsClientConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Details of Teams client configuration of a [teamworkDevice](../resources/teamworkdevice.md). These details are applicable only for Microsoft Teams Rooms devices. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accountConfiguration|[teamworkAccountConfiguration](../resources/teamworkaccountconfiguration.md)|Account details used to sync.|
|featuresConfiguration|[teamworkFeaturesConfiguration](../resources/teamworkfeaturesconfiguration.md)|Teams client feature config details.|


## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkTeamsClientConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkTeamsClientConfiguration",
  "accountConfiguration": {
    "@odata.type": "microsoft.graph.teamworkAccountConfiguration"
  },
  "featuresConfiguration": {
    "@odata.type": "microsoft.graph.teamworkFeaturesConfiguration"
  }
}
```

