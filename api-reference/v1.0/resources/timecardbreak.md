---
title: "timeCardBreak resource type"
description: "Represents a specific timecard break."
author: lemike
ms.date: 01/17/2025
ms.localizationpriority: medium
ms.subservice: teams
doc_type: resourcePageType
---

# timeCardBreak resource type

Namespace: microsoft.graph

Represents a specific [timeCard](timecard.md) break.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|breakId|String|ID of the **timeCardBreak**.|
|end|[timeCardEvent](../resources/timecardevent.md)|The start event of the **timeCardBreak**.|
|notes|[itemBody](../resources/itembody.md)|Notes about the **timeCardBreak**.|
|start|[timeCardEvent](../resources/timecardevent.md)|The start event of the **timeCardBreak**.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.timeCardBreak"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.timeCardBreak",
  "breakId": "String",
  "start": {
    "@odata.type": "microsoft.graph.timeCardEvent"
  },
  "end": {
    "@odata.type": "microsoft.graph.timeCardEvent"
  },
  "notes": {
    "@odata.type": "microsoft.graph.itemBody"
  }
}
```

