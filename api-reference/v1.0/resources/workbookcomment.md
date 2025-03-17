---
title: "workbookComment resource type"
description: "Represents a comment in a workbook."
ms.localizationpriority: medium
author: "grangeryy"
ms.subservice: "excel"
doc_type: "resourcePageType"
toc.title: Comment
ms.date: 07/30/2024
---

# workbookComment resource type

Namespace: microsoft.graph

Represents a comment in a workbook.

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [List](../api/workbook-list-comments.md) | [workbookComment](workbookComment.md) collection | Get a **workbookComment** object collection. |
| [Get](../api/workbookcomment-get.md) | [workbookComment](workbookcomment.md) | Read the properties and relationships of a **workbookComment** object. |


## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|content|String|The content of the comment.|
|contentType|String|The content type of the comment.|
|id|String|The unique identifier of the comment. Read-only.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|replies|[workbookCommentReply](workbookcommentreply.md) collection| The list of replies to the comment. Read-only. Nullable.|

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
  "id": "String (identifier)"
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

