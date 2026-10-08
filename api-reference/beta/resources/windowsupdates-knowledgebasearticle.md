---
title: "knowledgeBaseArticle resource type"
description: "Represents a knowledge base article."
author: "andredm7"
ms.localizationpriority: medium
ms.subservice: windows-autopatch
doc_type: resourcePageType
ms.date: 01/27/2026
---

# knowledgeBaseArticle resource type

Namespace: microsoft.graph.windowsUpdates

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a knowledge base (KB) article.

Each quality update contains one or more [product revisions](../resources/windowsupdates-productrevision.md). Each product revision is associated with exactly one knowledge base article.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the knowledge base article. Read-only.|
|url|String|The URL of the knowledge base article. Read-only.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.windowsUpdates.knowledgeBaseArticle",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsUpdates.knowledgeBaseArticle",
  "id": "String (identifier)",
  "url": "String"
}
```
