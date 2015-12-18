# referenceAttachment resource type

A link to a file (such as a text file or Word document) on a OneDrive for Business cloud drive or other supported storage locations, attached to an event, message, or post.

Derived from [attachment](attachment.md).

### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get referenceAttachment](../api/referenceattachment_get.md) | [referenceAttachment](referenceattachment.md) |Read properties and relationships of referenceAttachment object.|
|[Delete](../api/referenceattachment_delete.md) | None |Delete referenceAttachment object. |

### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|contentType|String|The content type of the attachment.|
|id|String|The attachment identifier. Read-only.|
|isInline|Boolean|Set to true if the attachment appears inline in the body of the embedding object.|
|lastModifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|name|String|The text that is displayed below the icon representing the embedded attachment. This does not need to be the actual file name.|
|size|Int32|The size of the attachment in bytes.|
|sourceUrl|String|URL to get the attachment content.|
|providerType|ReferenceAttachmentProviders|The type of provider that supports an attachment of this contentType.|
|thumbnailUrl|String|Applies to only a reference attachment of an image - URL to get a thumbnail image.|
|previewUrl|String|Applies to only a reference attachment of an image - URL to get a preview image.|
|permission|ReferenceAttachmentPermissions|Specifies the permissions granted for the attachment by the type of provider in **ProviderType**.|
|isFolder|Boolean|Specifies whether the attachment is a folder.|

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
