---
title: "workbookComment resource type"
description: "Represents a comment in a workbook."
ms.localizationpriority: medium
author: "AmandaHan123"
ms.subservice: "excel"
doc_type: "resourcePageType"
toc.title: Comment
ms.date: 09/05/2025
---

# workbookComment resource type

Namespace: microsoft.graph

Represents a comment in a workbook.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/workbook-list-comments.md) | [workbookComment](workbookComment.md) collection | Get a **workbookComment** object collection. |
| [Create](../api/workbookcomment-post-comments.md) | [workbookComment](workbookcomment.md) | Create a new [workbookComment](../resources/workbookcomment.md) object. |
| [Get](../api/workbookcomment-get.md) | [workbookComment](workbookcomment.md) | Read the properties and relationships of a **workbookComment** object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|cellAddress|String|The cell where the comment is located. The address value is in A1-style, which contains the sheet reference (for example, `Sheet1!A1`). Read-only.|
|content|String|The content of the comment that is the String displayed to end-users.|
|contentType|String|The content type of the comment. Supported values are: `plain`, `mention`.|
|id|String|The unique identifier of the comment. Read-only.|
|mentions|[workbookCommentMention](workbookcommentmention.md) collection|A collection that contains all the people mentioned within the comment. When **contentType** is `plain`, this property is an empty array. Read-only.|
|richContent|String|The rich content of the comment (for example, comment content with mentions, where the first mentioned entity has an ID attribute of `0` and the second has an ID attribute of `1`). When **contentType** is `plain`, this property is empty. Read-only.|

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
  "cellAddress": "String",
  "content": "String",
  "contentType": "String",
  "id": "String (identifier)",
  "mentions": [{ "@odata.type": "microsoft.graph.workbookCommentMention" }],
  "richContent": "String"
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


