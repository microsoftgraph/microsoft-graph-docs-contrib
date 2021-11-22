---
title: "teamworkAccountConfiguration resource type"
description: "Device Teams client account configuration details"
author: "adsrivastava2"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: resourcePageType
---

# teamworkAccountConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details of account configuration of a teams client for a device.
These details are only available for Teams Room devices.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|onPremisesCalendarSyncConfiguration|[teamworkOnPremisesCalendarSyncConfiguration](../resources/teamworkonpremisescalendarsyncconfiguration.md)|Details of account used to sync calendar.|
|supportedClient|[teamworkSupportedClient](teamworksupportedclient.md)|Supported Teams client. The possible values are: `unknown`, `skypeDefaultAndTeams`, `teamsDefaultAndSkype`, `skypeOnly`, `teamsOnly`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.teamworkAccountConfiguration"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.teamworkAccountConfiguration",
  "onPremisesCalendarSyncConfiguration": {
    "@odata.type": "microsoft.graph.teamworkOnPremisesCalendarSyncConfiguration"
  },
  "supportedClient": "String"
}
```

