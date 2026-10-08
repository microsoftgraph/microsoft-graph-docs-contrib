---
title: "shiftActivity resource type"
description: "Represents an activity in a shift."
author: "aaku"
ms.localizationpriority: medium
ms.subservice: "teams"
doc_type: resourcePageType
ms.date: 07/26/2024
---

# shiftActivity resource type

Namespace: microsoft.graph

Represents an activity in a [shift](shift.md).

## Properties

| Property | Type | Description |
|--|--|--|
| code | String | Customer defined code for the `shiftActivity`. Required. |
| displayName | String | The name of the `shiftActivity`. Required. |
| endDateTime | DateTimeOffset | The end date and time for the `shiftActivity`. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Required. |
| isPaid | bool | Indicates whether the `microsoft.graph.user` should be paid for the activity during their `shift`. Required. |
| startDateTime | DateTimeOffset | The start date and time for the `shiftActivity`. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`. Required. |
| theme | scheduleEntityTheme | The color of the activity. The possible values are: `white`, `blue`, `green`, `purple`, `pink`, `yellow`, `gray`, `darkBlue`, `darkGreen`, `darkPurple`, `darkPink`, `darkYellow`, `unknownFutureValue`, `darkRed`, `cranberry`, `darkOrange`, `bronze`, `peach`, `gold`, `lime`, `forest`, `lightGreen`, `jade`, `lightTeal`, `darkTeal`, `steel`, `skyBlue`, `blueGray`, `lavender`, `lilac`, `plum`, `magenta`, `darkBrown`, `beige`, `charcoal`, `silver`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `darkRed`, `cranberry`, `darkOrange`, `bronze`, `peach`, `gold`, `lime`, `forest`, `lightGreen`, `jade`, `lightTeal`, `darkTeal`, `steel`, `skyBlue`, `blueGray`, `lavender`, `lilac`, `plum`, `magenta`, `darkBrown`, `beige`, `charcoal`, `silver`. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.shiftActivity"
}-->
```json
{
  "@odata.type": "#microsoft.graph.shiftActivity",
  "code": "",
  "displayName": "Lunch",
  "endDateTime": "2019-03-11T15:15:00Z",
  "isPaid": true,
  "startDateTime": "2019-03-11T15:00:00Z",
  "theme": "white"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "shiftActivity resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
