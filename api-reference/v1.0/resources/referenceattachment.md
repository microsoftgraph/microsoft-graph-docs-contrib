# referenceAttachment resource type


### Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get referenceAttachment](../api/referenceattachment_get.md) | [referenceAttachment](referenceattachment.md) |Read properties and relationships of referenceAttachment object.|
|[Delete](../api/referenceattachment_delete.md) | None |Delete referenceAttachment object. |


### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|contentType|String||
|id|String| Read-only.|
|isInline|Boolean||
|lastModifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|name|String||
|size|Int32||
|SourceUrl|String||
|ProviderType|ReferenceAttachmentProviders||
|ThumbnailUrl|String||
|PreviewUrl|String||
|Permission|ReferenceAttachmentPermissions||
|IsFolder|Boolean||

### Relationships
None



### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.referenceattachment"
}-->

```json
{
  "contentType": "string",
  "id": "string (identifier)",
  "isInline": true,
  "lastModifiedDateTime": "String (timestamp)",
  "name": "string",
  "size": 1024
}

```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "referenceAttachment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->