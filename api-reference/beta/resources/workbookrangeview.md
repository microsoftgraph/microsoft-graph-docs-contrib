# workbookRangeView resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get workbookRangeView](../api/workbookrangeview_get.md) | [workbookRangeView](workbookrangeview.md) |Read properties and relationships of workbookRangeView object.|
|[Create workbookRangeView](../api/workbookrangeview_post_rows.md) |[workbookRangeView](workbookrangeview.md)| Create a new workbookRangeView by posting to the rows collection.|
|[List rows](../api/workbookrangeview_list_rows.md) |[workbookRangeView](workbookrangeview.md) collection| Get a workbookRangeView object collection.|
|[Update](../api/workbookrangeview_update.md) | [workbookRangeView](workbookrangeview.md)	|Update workbookRangeView object. |
|[Delete](../api/workbookrangeview_delete.md) | None |Delete workbookRangeView object. |
|[Itemat](../api/workbookrangeview_itemat.md)|[workbookRangeView](workbookrangeview.md)||
|[Range](../api/workbookrangeview_range.md)|[workbookRange](workbookrange.md)||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|cellAddresses|Json||
|columnCount|Int32||
|formulas|Json||
|formulasLocal|Json||
|formulasR1C1|Json||
|id|String| Read-only.|
|index|Int32||
|numberFormat|Json||
|rowCount|Int32||
|text|Json||
|valueTypes|Json||
|values|Json||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|rows|[workbookRangeView](workbookrangeview.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookRangeView"
}-->

```json
{
  "cellAddresses": "Json",
  "columnCount": 1024,
  "formulas": "Json",
  "formulasLocal": "Json",
  "formulasR1C1": "Json",
  "id": "String (identifier)",
  "index": 1024,
  "numberFormat": "Json",
  "rowCount": 1024,
  "text": "Json",
  "valueTypes": "Json",
  "values": "Json"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "workbookRangeView resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->