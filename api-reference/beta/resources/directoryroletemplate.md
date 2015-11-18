# directoryRoleTemplate resource type

Represents a directory role template. A directory role template specifies the property values of a directory role ([DirectoryRole]). There is an associated directory role template object for each of the directory roles that may be activated in a tenant. 


### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.directoryroletemplate"
}-->

```json
{
  "description": "string",
  "displayName": "string",
  "id": "string (identifier)"
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|description|String|The description to set for the directory role.|
|displayName|String|The display name to set for the directory role.|
|id|String|The unique identifier for the template. Inherited from [directoryObject]. In version 1.5 and later, you specify the **objectId** of the directory role template for the **roleTemplateId** property in the POST request activate a [DirectoryRole] in a tenant.                             **Notes**: **key**, immutable, not nullable, unique.             Read-only.|

### Relationships
None


### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get directoryRoleTemplate](../api/directoryroletemplate_get.md) | [directoryRoleTemplate](directoryroletemplate.md) |Read properties and relationships of directoryRoleTemplate object.|
|[Update](../api/directoryroletemplate_update.md) | [directoryRoleTemplate](directoryroletemplate.md)	|Update directoryRoleTemplate object. |
|[Delete](../api/directoryroletemplate_delete.md) | None |Delete directoryRoleTemplate object. |
|[checkMemberGroups](../api/directoryroletemplate_checkmembergroups.md)|String collection||
|[getMemberGroups](../api/directoryroletemplate_getmembergroups.md)|String collection||
|[getMemberObjects](../api/directoryroletemplate_getmemberobjects.md)|String collection||

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "directoryRoleTemplate resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->