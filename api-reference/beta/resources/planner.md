# planner resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get planner](../api/planner_get.md) | [planner](planner.md) |Read properties and relationships of planner object.|
|[Create plannerBucket](../api/planner_post_buckets.md) |[plannerBucket](plannerbucket.md)| Create a new plannerBucket by posting to the buckets collection.|
|[List buckets](../api/planner_list_buckets.md) |[plannerBucket](plannerbucket.md) collection| Get a plannerBucket object collection.|
|[Create plannerPlan](../api/planner_post_plans.md) |[plannerPlan](plannerplan.md)| Create a new plannerPlan by posting to the plans collection.|
|[List plans](../api/planner_list_plans.md) |[plannerPlan](plannerplan.md) collection| Get a plannerPlan object collection.|
|[Create plannerTask](../api/planner_post_tasks.md) |[plannerTask](plannertask.md)| Create a new plannerTask by posting to the tasks collection.|
|[List tasks](../api/planner_list_tasks.md) |[plannerTask](plannertask.md) collection| Get a plannerTask object collection.|
|[Delete](../api/planner_delete.md) | None |Delete planner object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only.|

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|buckets|[plannerBucket](plannerbucket.md) collection| Read-only. Nullable.|
|plans|[plannerPlan](plannerplan.md) collection| Read-only. Nullable.|
|tasks|[plannerTask](plannertask.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.planner"
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
  "description": "planner resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->