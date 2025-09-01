---
title: "workbookCommentReply resource type"
description: "Definition of workbookCommentReply resource type"
ms.localizationpriority: medium
author: "AmandaHan123"
ms.subservice: "excel"
doc_type: "resourcePageType"
toc.title: Comment reply
ms.date: 09/01/2025
---

# workbookCommentReply resource type

Namespace: microsoft.graph

Represents a reply to an excel comment.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/workbookcomment-list-replies.md) | [workbookCommentReply](workbookcommentreply.md) collection | Get a list of comment replies. |
| [Create](../api/workbookcomment-post-replies.md) | [workbookCommentReply](workbookcommentreply.md) | Create a new comment reply. |
| [Get](../api/workbookcommentreply-get.md) | [workbookCommentReply](workbookcommentreply.md) | Read the properties and relationships of a comment reply. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|content|String|The content of the reply, which is displayed to end-users.|
|contentType|String|The content type for the reply. The value is `plain` or `mention`.|
|id|String|The unique identifier for the reply. Read-only.|
|richContent|String|The rich content of the reply (for example, reply content with mentions, the first mentioned entity has an ID attribute of 0, and the second mentioned entity has an ID attribute of 1). When contentType is `plain`, this value is empty. Read-only.|
|mentions|[WorkbookCommentMention](workbookcommentmention.md) collection|An array containing all the people mentioned within the reply. When contentType is `plain`, this value is an empty array. Read-only.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|task|[workbookDocumentTask](workbookdocumenttask.md)|The task associated with the comment thread.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookCommentReply",
  "keyProperty": "id"
}-->

```json
{
  "content": "String",
  "contentType": "String",
  "id": "String (identifier)",
  "richContent": "String",
  "mentions": [{ "@odata.type": "microsoft.graph.workbookCommentMention" }]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "workbookCommentReply resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


