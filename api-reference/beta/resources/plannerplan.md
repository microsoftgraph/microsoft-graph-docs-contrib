# plannerPlan resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get plannerPlan](../api/plannerplan_get.md) | [plannerPlan](plannerplan.md) |Read properties and relationships of plannerPlan object.|
|[Create plannerBucket](../api/plannerplan_post_buckets.md) |[plannerBucket](plannerbucket.md)| Create a new plannerBucket by posting to the buckets collection.|
|[List buckets](../api/plannerplan_list_buckets.md) |[plannerBucket](plannerbucket.md) collection| Get a plannerBucket object collection.|
|[Create plannerTask](../api/plannerplan_post_tasks.md) |[plannerTask](plannertask.md)| Create a new plannerTask by posting to the tasks collection.|
|[List tasks](../api/plannerplan_list_tasks.md) |[plannerTask](plannertask.md) collection| Get a plannerTask object collection.|
|[Update](../api/plannerplan_update.md) | [plannerPlan](plannerplan.md)	|Update plannerPlan object. |
|[Delete](../api/plannerplan_delete.md) | None |Delete plannerPlan object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|createdBy|[identitySet](identityset.md)||
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|id|String| Read-only.|
|owner|String||
|title|String||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|buckets|[plannerBucket](plannerbucket.md) collection| Read-only. Nullable.|
|createdByUser|[user](user.md)| Read-only. Nullable.|
|details|[plannerPlanDetails](plannerplandetails.md)| Read-only. Nullable.|
|tasks|[plannerTask](plannertask.md) collection| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerPlan"
}-->

```json
{
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "owner": "String",
  "title": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plannerPlan resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->