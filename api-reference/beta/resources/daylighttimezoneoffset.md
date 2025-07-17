---
title: "daylightTimeZoneOffset resource type"
description: "Specifies when a time zone switches from standard time to daylight saving time."
ms.localizationpriority: medium
doc_type: resourcePageType
ms.subservice: calendar
author: "SuryaLashmiS"
ms.date: 03/21/2024
---

# daylightTimeZoneOffset resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Specifies when a time zone switches from standard time to daylight saving time.

For example, if a time zone is specified with the following properties:

- **bias** is 300
- **daylightBias** is -100
- **dayOccurrence** is 4
- **dayOfWeek** is "sunday"
- **month** is 5
- **time** is 02:00:00
_ **year** is 0
That means the time during daylight saving time is +300-100=200 minutes ahead of UTC. The time zone transition from
daylight saving time to standard occurs at 2 AM on the fourth Sunday of May, every year.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| daylightBias | Edm.Int32 | The time offset from Coordinated Universal Time (UTC) for daylight saving time. This value is in minutes.  |
| dayOccurrence | Edm.Int32 | Represents the nth occurrence of the day of week that the transition from standard time to daylight saving time occurs. |
| dayOfWeek | string | Represents the day of the week when the transition from standard time to daylight saving time occurs. |
| month | Edm.Int32 | Represents the month of the year when the transition from standard time to daylight saving time occurs. |
| time | Edm.TimeOfDay | Represents the time of day when the transition from standard time to daylight saving time occurs. |
| year | Edm.Int32 | Represents how frequently in terms of years the change from standard time to daylight saving time occurs. For example, a value of 0 means every year.|


## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.daylightTimeZoneOffset"
}-->

```json
{
  "daylightBias": "Int32",
  "dayOccurrence": "Int32",
  "dayOfWeek": "string",
  "month": "Int32",
  "time": "TimeOfDay",
  "year": "Int32"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "daylightTimeZoneOffset resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->


