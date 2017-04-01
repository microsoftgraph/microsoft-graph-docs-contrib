# plannerPlan resource type

The plannerPlan resource represents a plan in Office 365. A plan can be owned by a [group](group.md) and contains a collection of [plannerTasks](plannerTask.md). It can also have a collection of [plannerBuckets](plannerBucket.md). Each plan object has a [details](plannerPlanDetails.md) object which can contain more information about the plan. See [overview](tasks_overview.md) for more information regarding relationships between group, plan and task.



### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get plannerPlan](../api/plannerplan_get.md) | [plannerPlan](plannerplan.md) |Read properties and relationships of plannerPlan object.|
|[List buckets](../api/plannerplan_list_buckets.md) |[plannerBucket](plannerbucket.md) collection| Get a plannerBucket object collection.|
|[List tasks](../api/plannerplan_list_tasks.md) |[plannerTask](plannertask.md) collection| Get a plannerTask object collection.|
|[Update](../api/plannerplan_update.md) | [plannerPlan](plannerplan.md)	|Update plannerPlan object. |
|[Delete](../api/plannerplan_delete.md) | None |Delete plannerPlan object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|createdBy|String|Read-only. User id of user by which the plan is created.|
|createdDateTime|DateTimeOffset|Read-only. Date and time at which the plan is created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|id|String| Read-only. Id of the plan. It is 28 characters long and case sensitive. [Format validation](tasks_identifiers_disclaimer.md) is done on the service.|
|isVisibleInPlannerWebClient|Boolean|Read-only. Value is `true` if the plan is shown on Planner Web Client and `false` otherwise.|
|owner|String|[Group](group.md) `id` by which the plan is owned. A valid group must exist before this field can be set. Once set, this can only be updated by the owner.|
|title|String|Required. Title of the plan. This is usually set the name of the group owning the plan.|
|createdBy|[identitySet](identityset.md)||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|buckets|[plannerBucket](plannerbucket.md) collection| Read-only. Nullable. Collection of buckets in the plan.|
|details|[plannerPlanDetails](plannerplandetails.md)| Read-only. Nullable. Additional details about the plan.|
|tasks|[plannerTask](plannertask.md) collection| Read-only. Nullable. Collection of tasks in the plan.|
|createdByUser|[user](user.md)| Read-only. Nullable.|

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
  "createdBy": "String",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "isVisibleInPlannerWebClient": true,
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