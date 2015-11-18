# conversationThread resource type



### JSON representation

Here is a JSON representation of the resource

<!-- {
  "blockType": "resource",
  "optionalProperties": [
    "posts"
  ],
  "@odata.type": "microsoft.graph.conversationthread"
}-->

```json
{
  "ccRecipients": [{"@odata.type": "microsoft.graph.recipient"}],
  "hasAttachments": true,
  "id": "string (identifier)",
  "isLocked": true,
  "lastDeliveredDateTime": "String (timestamp)",
  "preview": "string",
  "toRecipients": [{"@odata.type": "microsoft.graph.recipient"}],
  "topic": "string",
  "uniqueSenders": ["string"]
}

```
### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|ccRecipients|[Recipient](recipient.md) collection||
|hasAttachments|Boolean||
|id|String| Read-only.|
|isLocked|Boolean||
|lastDeliveredDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|preview|String||
|toRecipients|[Recipient](recipient.md) collection||
|topic|String||
|uniqueSenders|String collection||

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|posts|[Post](post.md) collection| Read-only. Nullable.|

### Methods

| Method		   | Return Type	|Description|
|:---------------|:--------|:----------|
|[Get conversationThread](../api/conversationthread_get.md) | [conversationThread](conversationthread.md) |Read properties and relationships of conversationThread object.|
|[Create Post](../api/conversationthread_post_posts.md) |[Post](post.md)| Create a new Post by posting to the posts collection.|
|[List posts](../api/conversationthread_list_posts.md) |[Post](post.md) collection| Get a Post object collection.|
|[Update](../api/conversationthread_update.md) | [conversationThread](conversationthread.md)	|Update conversationThread object. |
|[Delete](../api/conversationthread_delete.md) | None |Delete conversationThread object. |
|[reply](../api/conversationthread_reply.md)|None||

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conversationThread resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->