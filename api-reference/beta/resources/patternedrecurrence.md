# patternedRecurrence resource type

> **Important:** APIs under the /beta version in Microsoft Graph are in preview and are subject to change. Use of these APIs in production applications is not supported.

The recurrence pattern and range.  

**Note:** If you have multiple instances with the same daily pattern, and you update a single instance of a recurrence to change the `Start` and `End` properties, it might result in an `ErrorOccurrenceCrossingBoundary` error and the following error message: `Modified occurrence is crossing or overlapping adjacent occurrence`. For example, you can't have two event instances for a daily recurrence pattern on the same day.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|pattern|[RecurrencePattern](recurrencepattern.md)|The frequency of an event.|
|range|[RecurrenceRange](recurrencerange.md)|The duration of an event.|

## JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.patternedRecurrence"
}-->

```json
{
  "pattern": {"@odata.type": "microsoft.graph.recurrencePattern"},
  "range": {"@odata.type": "microsoft.graph.recurrenceRange"}
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "patternedRecurrence resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
