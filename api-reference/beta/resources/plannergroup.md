# plannerGroup resource type


[TS]

### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get plannerGroup](../api/plannergroup_get.md) | [plannerGroup](plannergroup.md) |Read properties and relationships of plannerGroup object.|
|[Create plannerPlan](../api/plannergroup_post_plans.md) |[plannerPlan](plannerplan.md)| Create a new plannerPlan by posting to the plans collection.|
|[List plans](../api/plannergroup_list_plans.md) |[plannerPlan](plannerplan.md) collection| Get a plannerPlan object collection.|
|[Delete](../api/plannergroup_delete.md) | None |Delete plannerGroup object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only.|

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|plans|[plannerPlan](plannerplan.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerGroup"
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
  "description": "plannerGroup resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->