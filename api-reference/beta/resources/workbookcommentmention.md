---
title: "workbookCommentMention resource type"
description: "Represents the person mentioned in a workbook comment."
ms.localizationpriority: medium
author: "AmandaHan123"
ms.subservice: "excel"
doc_type: "resourcePageType"
ms.date: 09/05/2025
---

# workbookCommentMention resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the person mentioned in a workbook comment.

## Properties
| Property	   | Type	|Description|
|:---------------|:--------|:----------|
|email|String|Represents the email address of the person that is mentioned in a comment.|
|id|Int32|Represents the ID of the person that is mentioned in a comment.|
|name|String|Represents the display name of the person that is mentioned in a comment.|

## Relationships
None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "optionalProperties": [

  ],
  "@odata.type": "microsoft.graph.workbookCommentMention"
}-->

```json
{
  "email": "String",
  "id": "Int32",
  "name": "String"
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "CommentMention resource",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": []
}
-->
