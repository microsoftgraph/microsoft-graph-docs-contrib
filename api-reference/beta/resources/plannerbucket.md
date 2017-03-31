# plannerBucket resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get plannerBucket](../api/plannerbucket_get.md) | [plannerBucket](plannerbucket.md) |Read properties and relationships of plannerBucket object.|
|[Create plannerTask](../api/plannerbucket_post_tasks.md) |[plannerTask](plannertask.md)| Create a new plannerTask by posting to the tasks collection.|
|[List tasks](../api/plannerbucket_list_tasks.md) |[plannerTask](plannertask.md) collection| Get a plannerTask object collection.|
|[Update](../api/plannerbucket_update.md) | [plannerBucket](plannerbucket.md)	|Update plannerBucket object. |
|[Delete](../api/plannerbucket_delete.md) | None |Delete plannerBucket object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only.|
|name|String||
|orderHint|String||
|planId|String||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|tasks|[plannerTask](plannertask.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerBucket"
}-->

```json
{
  "id": "String (identifier)",
  "name": "String",
  "orderHint": "String",
  "planId": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plannerBucket resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->