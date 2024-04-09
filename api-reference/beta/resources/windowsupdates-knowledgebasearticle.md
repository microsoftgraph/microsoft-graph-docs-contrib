---
title: "knowledgeBaseArticle resource type"
description: "Represents a knowledge base article."
author: "angiechen22"
ms.localizationpriority: medium
ms.subservice: windows-update-business
doc_type: resourcePageType
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

The following is a JSON representation of the resource.

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
