# attendee resource type

An event attendee.
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|status|[ResponseStatus](responsestatus.md)|The response (none, accepted, declined, etc.) and time.|
|type|String|The attendee type: `Required`, `Optional`, `Resource`.|


### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.attendee"
}-->

```json
{
  "status": {"@odata.type": "microsoft.graph.responseStatus"},
  "type": "String"
}

```


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "attendee resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->