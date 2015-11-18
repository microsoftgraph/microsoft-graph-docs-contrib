# reminder resource type



### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.reminder"
}-->

```json
{
  "changeKey": "string",
  "eventEndTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "eventId": "string",
  "eventLocation": {"@odata.type": "microsoft.graph.location"},
  "eventStartTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"},
  "eventSubject": "string",
  "eventWebLink": "string",
  "reminderFireTime": {"@odata.type": "microsoft.graph.dateTimeTimeZone"}
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|changeKey|String||
|eventEndTime|[DateTimeTimeZone](datetimetimezone.md)||
|eventId|String||
|eventLocation|[Location](location.md)||
|eventStartTime|[DateTimeTimeZone](datetimetimezone.md)||
|eventSubject|String||
|eventWebLink|String||
|reminderFireTime|[DateTimeTimeZone](datetimetimezone.md)||

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "reminder resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->