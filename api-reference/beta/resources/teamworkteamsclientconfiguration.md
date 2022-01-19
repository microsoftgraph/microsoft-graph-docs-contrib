---
title: "teamworkTeamsClientConfiguration resource type"
description: "Represents the details about the configuration for the Microsoft Teams client of a device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkTeamsClientConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details about the configuration for the Microsoft Teams client of a [teamworkDevice](../resources/teamworkdevice.md). Applicable only for Microsoft Teams Rooms devices.

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

