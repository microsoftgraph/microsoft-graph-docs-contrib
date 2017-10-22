# workingHours resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

Represents the working hours and days of the week in a specific time zone.


## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
| daysOfWeek | String collection | The days of the week on which the user works. |
| startTime | Edm.TimeOfDay | The time of the day that the user starts working. |
| endTime | Edm.TimeOfDay | The time of the day that the user stops working. |
| timeZone | [timeZoneBase](timezonebase.md) | The time zone to which the working hours apply. |


## JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workingHours"
}-->

```json
{
  "daysOfWeek": ["string"],
  "startTime": "TimeOfDay",
  "endTime": "TimeOfDay",
  "timeZone": {"@odata.type": "microsoft.graph.timeZoneBase"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "workingHours resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->