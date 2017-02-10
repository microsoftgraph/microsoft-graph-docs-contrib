# domainDnsRecord resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get domaindnsrecord](../api/domaindnsrecord_get.md) | [domainDnsRecord](domaindnsrecord.md) |Read properties and relationships of domainDnsRecord object.|
|[Update](../api/domaindnsrecord_update.md) | [domainDnsRecord](domaindnsrecord.md)	|Update domaindnsrecord object. |
|[Delete](../api/domaindnsrecord_delete.md) | None |Delete domainDnsRecord object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
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
  "@odata.type": "microsoft.graph.domainDnsRecord"
}-->

```json
{
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
  "description": "domainDnsRecord resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->