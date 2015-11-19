# conversationThread resource type
A conversationThread is a collection of [posts](post.md) within this thread. 

### Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[Get conversationThread](../api/conversationthread_get.md) | [conversationThread](conversationthread.md) |Read properties and relationships of conversationThread object.|
|[Create Post](../api/conversationthread_post_posts.md) |post](post.md)| Create a new Post by posting to the posts collection.|
|[List Posts](../api/conversationthread_list_posts.md) |[post](post.md) collection| Get a Post object collection.|
|[Update](../api/conversationthread_update.md) | [conversationThread](conversationthread.md)  |Update conversationThread object. |
|[Delete](../api/conversationthread_delete.md) | None |Delete conversationThread object. |
|[reply](../api/conversationthread_reply.md)|None|Reply to this thread by creating a new Post entity|


### Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|id|String| Read-only.|
|toRecipients|[recipient](recipient.md) collection|The To: recipients for the thread.|
|ccRecipients|[recipient](recipient.md) collection|The Cc: recipients for the thread.|
|topic|String|The topic of the conversation. This property can be set when the conversation is created, but it cannot be updated.||
|hasAttachments|Boolean|Indicates whether any of the posts within this thread has at least one attachment.|
|lastDeliveredDateTime|DateTimeOffset|The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 would look like this: `'2014-01-01T00:00:00Z'`|
|uniqueSenders|String collection|All the users that sent a message to this thread.|
|preview|String|A short summary from the body of the latest post in this converstaion.|
|isLocked|Boolean|Indicates if the thread is locked.|

### Relationships
| Relationship | Type	|Description|
|:---------------|:--------|:----------|
|posts|[post](post.md) collection| Read-only. Nullable.|


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


<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "conversationThread resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->