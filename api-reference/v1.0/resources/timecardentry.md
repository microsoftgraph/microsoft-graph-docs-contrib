---
title: "timeCardEntry resource type"
description: "Represents a specific timecard entry."
author: lemike
ms.date: 01/17/2025
ms.localizationpriority: medium
ms.subservice: teams
doc_type: resourcePageType
---

# timeCardEntry resource type

Namespace: microsoft.graph

Represents a specific [timeCard](timecard.md) entry.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|breaks|[timeCardBreak](../resources/timecardbreak.md) collection|The clock-in event of the **timeCard**.|
|clockInEvent|[timeCardEvent](../resources/timecardevent.md)|The clock-out event of the **timeCard**. |
|clockOutEvent|[timeCardEvent](../resources/timecardevent.md)|The list of breaks associated with the **timeCard**.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.timeCardEntry"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.timeCardEntry",
  "clockInEvent": {
    "@odata.type": "microsoft.graph.timeCardEvent"
  },
  "clockOutEvent": {
    "@odata.type": "microsoft.graph.timeCardEvent"
  },
  "breaks": [
    {
      "@odata.type": "microsoft.graph.timeCardBreak"
    }
  ]
}
```

