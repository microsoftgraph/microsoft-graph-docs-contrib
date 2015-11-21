# attachment resource type

A file, message, event, or a link to a file attached to a message or event.

### Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get attachment](../api/attachment_get.md) | [attachment](attachment.md) |Read properties and relationships of attachment object.|
|[Add attachment to an event](../api/event_post_attachments.md) | [attachment](attachment.md) |You can add a file attachment or an item attachment to an event.|
|[Add attachment to a message](../api/message_post_attachments.md) | [attachment](attachment.md) |You can add a file attachment or an item attachment to a message.|
|[Add attachment to a post](../api/post_post_attachments.md) | [attachment](attachment.md) |You can add a file attachment or an item attachment to a post.|
|[List atachments of an event](../api/event_list_attachments.md) | [attachment](attachment.md) collection | Get a list of attachments for an event. |
|[List atachments of a message](../api/message_list_attachments.md) | [attachment](attachment.md) collection | Get a list of attachments for a message. |
|[List atachments of a post](../api/post_list_attachments.md) | [attachment](attachment.md) collection | Get a list of attachments for a post. |
|[Delete](../api/attachment_delete.md) | None |Delete attachment object. |


### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|contentType|String|The MIME type.|
|id|String| Read-only.|
|isInline|Boolean|`true` if the attachment is an inline attachment; otherwise, `false`.|
|lastModifiedDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|name|String|The attachment's file name.|
|size|Int32|The length of the attachment in bytes.|

### Relationships
None

### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.attachment"
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
  "description": "attachment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
