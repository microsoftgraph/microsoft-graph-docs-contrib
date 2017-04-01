# plannerTask resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get plannerTask](../api/plannertask_get.md) | [plannerTask](plannertask.md) |Read properties and relationships of plannerTask object.|
|[Update](../api/plannertask_update.md) | [plannerTask](plannertask.md)	|Update plannerTask object. |
|[Delete](../api/plannertask_delete.md) | None |Delete plannerTask object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|activeChecklistItemCount|Int32||
|appliedCategories|[plannerAppliedCategories](plannerappliedcategories.md)||
|assigneePriority|String||
|assignments|[plannerAssignments](plannerassignments.md)||
|bucketId|String||
|checklistItemCount|Int32||
|completedBy|[identitySet](identityset.md)||
|completedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|conversationThreadId|String||
|createdBy|[identitySet](identityset.md)||
|createdDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|dueDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|hasDescription|Boolean||
|id|String| Read-only.|
|orderHint|String||
|percentComplete|Int32||
|planId|String||
|previewType|string| Possible values are: `automatic`, `noPreview`, `checklist`, `description`, `reference`.|
|referenceCount|Int32||
|startDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|title|String||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|assignedToTaskBoardFormat|[plannerAssignedToTaskBoardTaskFormat](plannerassignedtotaskboardtaskformat.md)| Read-only. Nullable.|
|bucketTaskBoardFormat|[plannerBucketTaskBoardTaskFormat](plannerbuckettaskboardtaskformat.md)| Read-only. Nullable.|
|completedByUser|[user](user.md)| Read-only. Nullable.|
|createdByUser|[user](user.md)| Read-only. Nullable.|
|details|[plannerTaskDetails](plannertaskdetails.md)| Read-only. Nullable.|
|progressTaskBoardFormat|[plannerProgressTaskBoardTaskFormat](plannerprogresstaskboardtaskformat.md)| Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.plannerTask"
}-->

```json
{
  "activeChecklistItemCount": 1024,
  "appliedCategories": {"@odata.type": "microsoft.graph.plannerAppliedCategories"},
  "assigneePriority": "String",
  "assignments": {"@odata.type": "microsoft.graph.plannerAssignments"},
  "bucketId": "String",
  "checklistItemCount": 1024,
  "completedBy": {"@odata.type": "microsoft.graph.identitySet"},
  "completedDateTime": "String (timestamp)",
  "conversationThreadId": "String",
  "createdBy": {"@odata.type": "microsoft.graph.identitySet"},
  "createdDateTime": "String (timestamp)",
  "dueDateTime": "String (timestamp)",
  "hasDescription": true,
  "id": "String (identifier)",
  "orderHint": "String",
  "percentComplete": 1024,
  "planId": "String",
  "previewType": "string",
  "referenceCount": 1024,
  "startDateTime": "String (timestamp)",
  "title": "String"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "plannerTask resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->