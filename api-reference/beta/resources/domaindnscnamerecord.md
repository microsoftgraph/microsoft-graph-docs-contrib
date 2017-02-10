# domainDnsCnameRecord resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get domaindnscnamerecord](../api/domaindnscnamerecord_get.md) | [domainDnsCnameRecord](domaindnscnamerecord.md) |Read properties and relationships of domainDnsCnameRecord object.|
|[Update](../api/domaindnscnamerecord_update.md) | [domainDnsCnameRecord](domaindnscnamerecord.md)	|Update domaindnscnamerecord object. |
|[Delete](../api/domaindnscnamerecord_delete.md) | None |Delete domainDnsCnameRecord object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|canonicalName|String||
|id|String| Read-only.|
|isOptional|Boolean||
|label|String||
|recordType|String||
|supportedService|String||
|ttl|Int32||

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.domainDnsCnameRecord"
}-->

```json
{
  "canonicalName": "String",
  "id": "String (identifier)",
  "isOptional": true,
  "label": "String",
  "recordType": "String",
  "supportedService": "String",
  "ttl": 1024
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "domainDnsCnameRecord resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->