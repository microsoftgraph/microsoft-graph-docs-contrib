# domainDnsUnavailableRecord resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get domaindnsunavailablerecord](../api/domaindnsunavailablerecord_get.md) | [domainDnsUnavailableRecord](domaindnsunavailablerecord.md) |Read properties and relationships of domainDnsUnavailableRecord object.|
|[Update](../api/domaindnsunavailablerecord_update.md) | [domainDnsUnavailableRecord](domaindnsunavailablerecord.md)	|Update domaindnsunavailablerecord object. |
|[Delete](../api/domaindnsunavailablerecord_delete.md) | None |Delete domainDnsUnavailableRecord object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|canonicalName|String||
|description|String||
|id|String| Read-only.|
|isOptional|Boolean||
|label|String||
|recordType|String||
|supportedService|String||
|text|String||
|ttl|Int32||

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.domainDnsUnavailableRecord"
}-->

```json
{
  "canonicalName": "String",
  "description": "String",
  "id": "String (identifier)",
  "isOptional": true,
  "label": "String",
  "recordType": "String",
  "supportedService": "String",
  "text": "String",
  "ttl": 1024
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "domainDnsUnavailableRecord resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->