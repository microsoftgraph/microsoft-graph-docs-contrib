---
title: "timeCardEvent resource type"
description: "Represents a specific timecard event."
author: lemike
ms.date: 01/17/2025
ms.localizationpriority: medium
ms.subservice: teams
doc_type: resourcePageType
---

# timeCardEvent resource type

Namespace: microsoft.graph

Represents a specific [timeCard](timecard.md) event.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|dateTime|DateTimeOffset|The time the entry is recorded.|
|isAtApprovedLocation|Boolean|Indicates whether this action happens at an approved location.|
|notes|[itemBody](../resources/itembody.md)|Notes about the **timeCardEvent**.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.timeCardEvent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.timeCardEvent",
  "dateTime": "String (timestamp)",
  "isAtApprovedLocation": "Boolean",
  "notes": {
    "@odata.type": "microsoft.graph.itemBody"
  }
}
```

