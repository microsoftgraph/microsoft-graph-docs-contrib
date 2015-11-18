# timeStamp resource type

Date and time information.

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.timestamp"
}-->

```json
{
  "date": "String (timestamp)",
  "time": "String (timestamp)",
  "timeZone": "string"
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|date|Date|The date portion of the timestamp.|
|time|TimeOfDay|The time portion of the timestamp.|
|timeZone|String|The timezone portion of the timestamp.|

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "timeStamp resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->