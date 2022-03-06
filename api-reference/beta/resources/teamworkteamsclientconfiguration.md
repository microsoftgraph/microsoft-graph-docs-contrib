---
title: "teamworkTeamsClientConfiguration resource type"
description: "Represents configuration details for the Microsoft Teams client running on a Microsoft Teams Rooms device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkTeamsClientConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents configuration details for the Microsoft Teams client running on a Microsoft Teams Rooms [device](../resources/teamworkdevice.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|accountConfiguration|[teamworkAccountConfiguration](../resources/teamworkaccountconfiguration.md)|The configuration of the Microsoft Teams client user account for a device.|
|featuresConfiguration|[teamworkFeaturesConfiguration](../resources/teamworkfeaturesconfiguration.md)|The configuration of Microsoft Teams client features for a device.|


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

