# domainDnsMxRecord resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get domaindnsmxrecord](../api/domaindnsmxrecord_get.md) | [domainDnsMxRecord](domaindnsmxrecord.md) |Read properties and relationships of domainDnsMxRecord object.|
|[Update](../api/domaindnsmxrecord_update.md) | [domainDnsMxRecord](domaindnsmxrecord.md)	|Update domaindnsmxrecord object. |
|[Delete](../api/domaindnsmxrecord_delete.md) | None |Delete domainDnsMxRecord object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|canonicalName|String||
|id|String| Read-only.|
|isOptional|Boolean||
|label|String||
|mailExchange|String||
|preference|Int32||
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
  "@odata.type": "microsoft.graph.domainDnsMxRecord"
}-->

```json
{
  "canonicalName": "String",
  "id": "String (identifier)",
  "isOptional": true,
  "label": "String",
  "mailExchange": "String",
  "preference": 1024,
  "recordType": "String",
  "supportedService": "String",
  "ttl": 1024
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "domainDnsMxRecord resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->