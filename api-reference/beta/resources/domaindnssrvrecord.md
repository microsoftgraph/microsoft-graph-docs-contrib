# domainDnsSrvRecord resource type




### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get domaindnssrvrecord](../api/domaindnssrvrecord_get.md) | [domainDnsSrvRecord](domaindnssrvrecord.md) |Read properties and relationships of domainDnsSrvRecord object.|
|[Update](../api/domaindnssrvrecord_update.md) | [domainDnsSrvRecord](domaindnssrvrecord.md)	|Update domaindnssrvrecord object. |
|[Delete](../api/domaindnssrvrecord_delete.md) | None |Delete domainDnsSrvRecord object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|canonicalName|String||
|id|String| Read-only.|
|isOptional|Boolean||
|label|String||
|nameTarget|String||
|port|Int32||
|priority|Int32||
|protocol|String||
|recordType|String||
|service|String||
|supportedService|String||
|ttl|Int32||
|weight|Int32||

### Relationships
None


### JSON representation

Here is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.domainDnsSrvRecord"
}-->

```json
{
  "canonicalName": "String",
  "id": "String (identifier)",
  "isOptional": true,
  "label": "String",
  "nameTarget": "String",
  "port": 1024,
  "priority": 1024,
  "protocol": "String",
  "recordType": "String",
  "service": "String",
  "supportedService": "String",
  "ttl": 1024,
  "weight": 1024
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "domainDnsSrvRecord resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->