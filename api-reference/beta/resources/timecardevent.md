---
title: "timeCardEvent resource type"
description: "Represents a specific timecard event."
author: "akumar39"
ms.date: 07/25/2024
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
---

# timeCardEvent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a specific [timeCard](timecard.md) event.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|dateTime|DateTimeOffset|The time the entry is recorded.|
|isAtApprovedLocation|Boolean|Indicate whether this action happens at an approved location.|
|notes|[itemBody](itembody.md)|Notes about the **timeCardEvent**.|
|atApprovedLocation (deprecated)|Boolean|Indicate whether this action happens at an approved location. This property will be removed by November 20, 2027. Use `isAtApprovedLocation` instead. `atApprovedLocation` and `isAtApprovedLocation` always have the same value, so setting one automatically sets the value for the other. If both are included in the request with different values, the value for `isAtApprovedLocation` takes precedence.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.timeCardEvent"
}-->
```json
{
  "@odata.type": "#microsoft.graph.timeCardEvent",
  "dateTime": "String (timestamp)",
  "atApprovedLocation": "Boolean",
  "isAtApprovedLocation": "Boolean",
  "notes": {
    "@odata.type": "microsoft.graph.itemBody"
  }
}
```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "timeCardEvent resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
