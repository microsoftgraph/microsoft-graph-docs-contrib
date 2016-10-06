# workbookPivotTable resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get workbookPivotTable](../api/workbookpivottable_get.md) | [workbookPivotTable](workbookpivottable.md) |Read properties and relationships of workbookPivotTable object.|
|[Update](../api/workbookpivottable_update.md) | [workbookPivotTable](workbookpivottable.md)	|Update workbookPivotTable object. |
|[Delete](../api/workbookpivottable_delete.md) | None |Delete workbookPivotTable object. |
|[Refresh](../api/workbookpivottable_refresh.md)|None||
|[Refreshall](../api/workbookpivottable_refreshall.md)|None||

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only.|
|name|String||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|worksheet|[workbookWorksheet](workbookworksheet.md)| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookPivotTable"
}-->

```json
{
  "id": "String (identifier)",
  "name": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "workbookPivotTable resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->