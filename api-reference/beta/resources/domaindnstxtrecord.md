# domainDnsTxtRecord resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get domaindnstxtrecord](../api/domaindnstxtrecord_get.md) | [domainDnsTxtRecord](domaindnstxtrecord.md) |Read properties and relationships of domainDnsTxtRecord object.|
|[Update](../api/domaindnstxtrecord_update.md) | [domainDnsTxtRecord](domaindnstxtrecord.md)	|Update domaindnstxtrecord object. |
|[Delete](../api/domaindnstxtrecord_delete.md) | None |Delete domainDnsTxtRecord object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|canonicalName|String||
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
  "@odata.type": "microsoft.graph.domainDnsTxtRecord"
}-->

```json
{
  "canonicalName": "String",
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
  "description": "domainDnsTxtRecord resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->