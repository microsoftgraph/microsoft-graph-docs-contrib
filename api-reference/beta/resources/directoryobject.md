# directoryObject resource type

Represents an Azure Active Directory object. The **DirectoryObject** type is the base type for most of the other directory entity types.


### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.directoryobject"
}-->

```json
{
  "id": "string (identifier)"
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String|A Guid that is the unique identifier for the object; for example, 12345678-9abc-def0-1234-56789abcde.                            **Notes**: **key**, immutable, not nullable, unique.             Read-only.|

### Relationships
None


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get directoryObject](../api/directoryobject_get.md) | [directoryObject](directoryobject.md) |Read properties and relationships of directoryObject object.|
|[Update](../api/directoryobject_update.md) | [directoryObject](directoryobject.md)	|Update directoryObject object. |
|[Delete](../api/directoryobject_delete.md) | None |Delete directoryObject object. |
|[checkMemberGroups](../api/directoryobject_checkmembergroups.md)|String collection||
|[getMemberGroups](../api/directoryobject_getmembergroups.md)|String collection||
|[getMemberObjects](../api/directoryobject_getmemberobjects.md)|String collection||

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "directoryObject resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->