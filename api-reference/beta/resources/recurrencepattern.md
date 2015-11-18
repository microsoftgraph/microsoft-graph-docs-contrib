# recurrencePattern resource type

The frequency of an event.

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.recurrencepattern"
}-->

```json
{
  "dayOfMonth": 1024,
  "daysOfWeek": ["String"],
  "firstDayOfWeek": "String",
  "index": "String",
  "interval": 1024,
  "month": 1024,
  "type": "String"
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|dayOfMonth|Int32|The day of month that the item occurs on.|
|daysOfWeek|String collection|A collection of days of the week: Sunday = 0, Monday = 1, Tuesday = 2, Wednesday = 3, Thursday = 4, Friday = 5, Saturday = 6. Possible values are: `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`.|
|firstDayOfWeek|String|The day of the week: Sunday = 0, Monday = 1, Tuesday = 2, Wednesday = 3, Thursday = 4, Friday = 5, Saturday = 6. Possible values are: `Sunday`, `Monday`, `Tuesday`, `Wednesday`, `Thursday`, `Friday`, `Saturday`.|
|index|String|The week index: First = 0, Second = 1, Third = 2, Fourth = 3, Last = 4. Possible values are: `First`, `Second`, `Third`, `Fourth`, `Last`.|
|interval|Int32|The number of units of a given recurrence type between occurrences.|
|month|Int32|The month that the item occurs on.  This is a number from 1 to 12.|
|type|String|The recurrence pattern type: Daily = 0, Weekly = 1, AbsoluteMonthly = 2, RelativeMonthly = 3, AbsoluteYearly = 4, RelativeYearly = 5. Possible values are: `Daily`, `Weekly`, `AbsoluteMonthly`, `RelativeMonthly`, `AbsoluteYearly`, `RelativeYearly`.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "recurrencePattern resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->