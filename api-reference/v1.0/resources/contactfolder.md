# contactFolder resource type

A folder that contains contacts.

### Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get contactFolder](../api/contactfolder_get.md) | [contactFolder](contactfolder.md) |Read properties and relationships of contactFolder object.|
|[Create ContactFolder](../api/contactfolder_post_childfolders.md) |[ContactFolder](contactfolder.md)| Create a new ContactFolder by posting to the childFolders collection.|
|[List childFolders](../api/contactfolder_list_childfolders.md) |[ContactFolder](contactfolder.md) collection| Get a ContactFolder object collection.|
|[Create Contact](../api/contactfolder_post_contacts.md) |[Contact](contact.md)| Create a new Contact by posting to the contacts collection.|
|[List contacts](../api/contactfolder_list_contacts.md) |[Contact](contact.md) collection| Get a Contact object collection.|
|[Update](../api/contactfolder_update.md) | [contactFolder](contactfolder.md) |Update contactFolder object. |
|[Delete](../api/contactfolder_delete.md) | None |Delete contactFolder object. |


### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|displayName|String|The folder's display name.|
|id|String|Unique identifier of the contact folder. Read-only.|
|parentFolderId|String|The ID of the folder's parent folder.|

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|childFolders|[ContactFolder](contactfolder.md) collection|The collection of child folders in the folder. Navigation property. Read-only. Nullable.|
|contacts|[Contact](contact.md) collection|The contacts in the folder. Navigation property. Read-only. Nullable.|


### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "childFolders",
    "contacts"
  ],
  "@odata.type": "microsoft.graph.contactfolder"
}-->

```json
{
  "displayName": "string",
  "id": "string (identifier)",
  "parentFolderId": "string"
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "contactFolder resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->