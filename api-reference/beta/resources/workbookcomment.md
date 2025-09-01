---
title: "workbookComment resource type"
description: "Represents a comment in a workbook."
ms.localizationpriority: medium
author: "AmandaHan123"
ms.subservice: "excel"
doc_type: "resourcePageType"
toc.title: Comment
ms.date: 09/01/2025
---

# workbookComment resource type

Namespace: microsoft.graph

Represents a comment in a workbook.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/workbook-list-comments.md) | [workbookComment](workbookComment.md) collection | Get a **workbookComment** object collection. |
| [Get](../api/workbookcomment-get.md) | [workbookComment](workbookcomment.md) | Read the properties and relationships of a **workbookComment** object. |
| [Create](../api/workbookcomment-post-comments.md) | [workbookComment](workbookcomment.md) | Create a new **workbookComment** object. |


## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|content|String|The content of the comment. It's the string displayed to end-users.|
|contentType|String|The content type of the comment. The value is `plain` or `mention`.|
|id|String|The unique identifier of the comment. Read-only.|
|cellAddress|String|The cell that the comment located. Address value is in A1-style, which contains the sheet reference (for example, Sheet1!A1). Read-only.
|richContent|String|The rich content of the comment (for example, comment content with mentions, the first mentioned entity has an ID attribute of 0, and the second mentioned entity has an ID attribute of 1). When contentType is `plain`, this value is empty. Read-only.|
|mentions|[WorkbookCommentMention](workbookcommentmention.md) collection|An array containing all the people mentioned within the comment. When contentType is `plain`, this value is an empty array. Read-only.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|replies|[workbookCommentReply](workbookcommentreply.md) collection| The list of replies to the comment. Read-only. Nullable.|
|task|[workbookDocumentTask](workbookdocumenttask.md)|The task associated with the comment. Read-only. Nullable.|

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookComment",
  "keyProperty": "id"
}-->

```json
{
  "content": "String",
  "contentType": "String",
  "id": "String (identifier)",
  "cellAddress": "String",
  "richContent": "String",
  "mentions": [{ "@odata.type": "microsoft.graph.workbookCommentMention" }]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "workbookComment resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


