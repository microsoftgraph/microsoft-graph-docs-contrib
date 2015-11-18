# recurrenceRange resource type

The duration of an event.

### Properties

| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|endDate|Date|The end date of the series.|
|numberOfOccurrences|Int32|How many times to repeat the event.|
|startDate|Date|The start date of the series.|
|type|[recurrenceRangeType](recurrenceRangeType.md)|The recurrence range type.|


### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.recurrencerange"
}-->

```json
{
  "endDate": "String (timestamp)",
  "numberOfOccurrences": 1024,
  "recurrenceTimeZone": "string",
  "startDate": "String (timestamp)",
  "type": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "recurrenceRange resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
