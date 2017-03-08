# Deleted items

When a [group is deleted](../api/group_delete.md), the item is added to the deleted items "container". You can perform the following operations on deleted items:

* If a group was accidentally deleted, you can restore the group from deleted items. The group will be fully restored including all memberships and data.
* You can permanently delete a group from deleted items. But, once an item is permanently deleted, it cannot be restored.

Deleted items will remain available for up to 30 days. After 30 days, the items are permanently deleted.

### Methods

| Method         | Return Type | Description |
|:---------------|:------------|:------------|
|[Get deleted group](../api/directory_get.md) | [directoryObject](directoryobject.md) | Gets the properties of a deleted group. |
|[Restore deleted group](../api/directory_post_deleteditems.md) |[directoryObject](directoryobject.md)| Restores a recently deleted group. |
|[List deleted groups](../api/directory_list_deleteditems.md) |[directoryObject](directoryobject.md) collection| Gets a list of recently deleted groups. |
|[Permanently delete a group](../api/directory_delete.md) | None | Permanently deletes a group. |

### Properties
| Property   | Type |Description|
|:---------------|:--------|:----------|
|id|String| A unique identifier for the object; for example, 12345678-9abc-def0-1234-56789abcde. Key. Not nullable. Read-only.|

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|deletedItems|[directoryObject](directoryobject.md) collection| Recently deleted groups. Read-only. Nullable.|

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