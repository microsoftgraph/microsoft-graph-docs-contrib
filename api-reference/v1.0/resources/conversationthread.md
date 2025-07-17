---
title: "conversationThread resource type"
description: "A conversationThread is a collection of posts."
author: "mikemcleanlive"
ms.localizationpriority: medium
ms.subservice: "entra-groups"
doc_type: resourcePageType
ms.date: 06/19/2024
---

# conversationThread resource type

Namespace: microsoft.graph

A conversationThread is a collection of [posts](post.md).

The last post's recipients collection is the aggregated recipients of the entire thread. A thread can have a growing collection of recipients.
A new thread is created when a recipient is removed from the thread.

## Methods

| Method       | Return Type  |Description|
|:---------------|:--------|:----------|
|[List](../api/group-list-threads.md) | [conversationThread](conversationthread.md) collection |Get all the threads of a group.|
|[Create](../api/group-post-threads.md) | [conversationThread](conversationthread.md) |Start a new conversation by first creating a thread. A new conversation, conversation thread, and post are created in the group.|
|[Get](../api/conversationthread-get.md) | [conversationThread](conversationthread.md) |Get a specific thread that belongs to a group. |
|[Update](../api/conversationthread-update.md) | [conversationThread](conversationthread.md)  |Update conversationThread object. |
|[Delete](../api/conversationthread-delete.md) | None |Delete conversationThread object. |
|[Reply to conversation thread](../api/conversationthread-reply.md)|None|Reply to this thread by creating a new Post entity.|
|[List posts](../api/conversationthread-list-posts.md) |[post](post.md) collection| Get the posts of the specified thread. |

## Properties
| Property              | Type                                 | Description                                                                                                                                                                                      |
|:----------------------|:-------------------------------------|:-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| ccRecipients          | [recipient](recipient.md) collection | The Cc: recipients for the thread. <br/><br/>Returned only on `$select`.                                                                                                                                                               |
| hasAttachments        | Boolean                              | Indicates whether any of the posts within this thread has at least one attachment. <br/><br/>Returned by default.                                                                                                              |
| id                    | String                               | Read-only. <br/><br/>Returned by default.                                                                                                                                                                                      |
| isLocked              | Boolean                              | Indicates if the thread is locked. <br/><br/>Returned by default.                                                                                                                                                              |
| lastDeliveredDateTime | DateTimeOffset                       | The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.<br/><br/>Returned by default. |
| preview               | String                               | A short summary from the body of the latest post in this conversation. <br/><br/>Returned by default.                                                                                                                           |
| topic                 | String                               | The topic of the conversation. This property can be set when the conversation is created, but it cannot be updated. <br/><br/>Returned by default.                                                                              |
| toRecipients          | [recipient](recipient.md) collection | The To: recipients for the thread. <br/><br/>Returned only on `$select`.                                                                                                                                                              |
| uniqueSenders         | String collection                    | All the users that sent a message to this thread. <br/><br/>Returned by default.                                                                                                                                               |


## Relationships
| Relationship | Type    |Description|
|:---------------|:--------|:----------|
|posts|[post](post.md) collection| Read-only. Nullable.|

## JSON representation

The following JSON representation shows the resource type.

<!--{
  "blockType": "resource",
  "optionalProperties": [
    "posts"
  ],
  "keyProperty": "id",
  "baseType": "microsoft.graph.entity",
  "@odata.type": "microsoft.graph.conversationThread",
  "@odata.annotations": [
    {
      "property": "posts",
      "capabilities": {
        "changeTracking": false,
        "deletable": false,
        "insertable": false,
        "searchable": false,
        "updatable": false
      }
    }
  ]
}-->

```json
{
  "ccRecipients": [{"@odata.type": "microsoft.graph.recipient"}],
  "hasAttachments": true,
  "id": "string (identifier)",
  "isLocked": true,
  "lastDeliveredDateTime": "String (timestamp)",
  "preview": "string",
  "topic": "string",
  "toRecipients": [{"@odata.type": "microsoft.graph.recipient"}],
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

