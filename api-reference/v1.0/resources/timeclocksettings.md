---
title: "timeClockSettings resource type"
description: "Represents timeclock settings for a schedule."
author: lemike
ms.date: 01/17/2025
ms.localizationpriority: medium
ms.subservice: teams
doc_type: resourcePageType
---

# timeClockSettings resource type

Namespace: microsoft.graph

Represents timeclock settings for a [schedule](schedule.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|approvedLocation|[geoCoordinates](../resources/geocoordinates.md)|The approved location of the **timeClock**.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.timeClockSettings"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.timeClockSettings",
  "approvedLocation": {
    "@odata.type": "microsoft.graph.geoCoordinates"
  }
}
```

