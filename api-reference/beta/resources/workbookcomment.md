---
title: "workbookComment resource type"
description: "PROVIDE DESCRIPTION HERE"
localization_priority: Normal
author: "grangeryy"
ms.prod: ""
doc_type: "resourcePageType"
---

# workbookComment resource type

PROVIDE DESCRIPTION HERE

## Methods

| Method       | Return Type | Description |
|:-------------|:------------|:------------|
| [Get workbookComment](../api/workbookcomment-get.md) | [workbookComment](workbookcomment.md) | Read properties and relationships of workbookComment object. |
| [Create workbookCommentReply](../api/workbookcomment-post-replies.md) | [workbookCommentReply](workbookcommentreply.md) | Create a new workbookCommentReply by posting to the replies collection. |
| [List replies](../api/workbookcomment-list-replies.md) | [workbookCommentReply](workbookcommentreply.md) collection | Get a workbookCommentReply object collection. |
| [Update](../api/workbookcomment-update.md) | [workbookComment](workbookcomment.md) | Update workbookComment object. |
| [Delete](../api/workbookcomment-delete.md) | None | Delete workbookComment object. |

## Properties

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|content|String||
|contentType|String||
|id|String| Read-only.|

## Relationships

| Relationship | Type        | Description |
|:-------------|:------------|:------------|
|replies|[workbookCommentReply](workbookcommentreply.md) collection| Read-only. Nullable.|

## JSON representation

The following is a JSON representation of the resource.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookComment",
  "baseType": "",
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
