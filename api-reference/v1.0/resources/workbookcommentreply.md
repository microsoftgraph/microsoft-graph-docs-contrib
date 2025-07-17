---
title: "workbookCommentReply resource type"
description: "Definition of workbookCommentReply resource type"
ms.localizationpriority: medium
author: "grangeryy"
ms.subservice: "excel"
doc_type: "resourcePageType"
toc.title: Chart comment reply
ms.date: 07/30/2024
---

# workbookCommentReply resource type

Namespace: microsoft.graph

Represents a reply to an Excel comment.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/workbookcomment-list-replies.md) | [workbookCommentReply](workbookcommentreply.md) collection | Get a list of comment replies. |
| [Create](../api/workbookcomment-post-replies.md) | [workbookCommentReply](workbookcommentreply.md) | Create a new comment reply. |
| [Get](../api/workbookcommentreply-get.md) | [workbookCommentReply](workbookcommentreply.md) | Read the properties and relationships of a reply. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|content|String|The content of the reply.|
|contentType|String|The content type for the reply.|
|id|String|The unique identifier for the reply. Read-only.|


## Relationships

None.

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
  "id": "String (identifier)"
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

