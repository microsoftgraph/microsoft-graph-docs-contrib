# directory resource type

Represents deleted items. Deleted items are commonly referred to as recycle bin items.

Actions for the directory resource include the ability restore or permanently delete an item. Currently, the restore and permanent delete functionality is available for users and groups. The following scenarios are enabled for deleted items:

1. An administrator can restore or permanently delete previously deleted user.
2. If a user is an administrator of a group, they can restore or permanently delete the group.

> **Important**: Deleted groups in the Recycle bin will be permanently deleted after 30 days.

### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get deletedItem](../api/directory_get.md) | [directory](directory.md) |Read properties of deleted item.|
|[Restore deletedItem](../api/directory_post_deleteditems.md) |[directoryObject](directoryobject.md)| Restore a deleted item.|
|[List deleteditems](../api/directory_list_deleteditems.md) |[directoryObject](directoryobject.md) collection| Get a list of deleted items.|
|[Delete deletedItem](../api/directory_delete.md) | None | Permanently delete an item.|

### Properties
| Property   | Type |Description|
|:---------------|:--------|:----------|
|id|String| The unique identifier for the item. Not nullable. Read-only. |

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|deletedItems|[directoryObject](directoryobject.md) collection| Deleted items. Deleted items are commonly referred to as recycle bin items. Read-only. Nullable.|

### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.directory"
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
  "description": "directory resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->