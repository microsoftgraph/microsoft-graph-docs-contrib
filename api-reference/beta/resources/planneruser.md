# plannerUser resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get plannerUser](../api/planneruser_get.md) | [plannerUser](planneruser.md) |Read properties and relationships of plannerUser object.|
|[Create plannerPlan](../api/planneruser_post_plans.md) |[plannerPlan](plannerplan.md)| Create a new plannerPlan by posting to the plans collection.|
|[List plans](../api/planneruser_list_plans.md) |[plannerPlan](plannerplan.md) collection| Get a plannerPlan object collection.|
|[Create plannerTask](../api/planneruser_post_tasks.md) |[plannerTask](plannertask.md)| Create a new plannerTask by posting to the tasks collection.|
|[List tasks](../api/planneruser_list_tasks.md) |[plannerTask](plannertask.md) collection| Get a plannerTask object collection.|
|[Delete](../api/planneruser_delete.md) | None |Delete plannerUser object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only.|

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|plans|[plannerPlan](plannerplan.md) collection| Read-only. Nullable.|
|tasks|[plannerTask](plannertask.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerUser"
}-->

```json
{
  "id": "String (identifier)"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plannerUser resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->