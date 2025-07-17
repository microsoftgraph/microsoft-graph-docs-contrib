---
title: "teamworkAccountConfiguration resource type"
description: "Represents the details about the account configuration for a Microsoft Teams Rooms device."
author: "adsrivastava2"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# teamworkAccountConfiguration resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the details about the account configuration for a Microsoft Teams Rooms [device](../resources/teamworkdevice.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|onPremisesCalendarSyncConfiguration|[teamworkOnPremisesCalendarSyncConfiguration](../resources/teamworkonpremisescalendarsyncconfiguration.md)|The account used to sync the calendar.|
|supportedClient|teamworkSupportedClient|The supported client for Teams Rooms devices. The possible values are: `unknown`, `skypeDefaultAndTeams`, `teamsDefaultAndSkype`, `skypeOnly`, `teamsOnly`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
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

