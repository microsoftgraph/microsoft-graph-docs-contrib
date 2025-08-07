---
title: "windowsQualityUpdateProductKnowledgeBaseArticle resource type"
description: "Represents a knowledge base (KB) article."
author: "jaiprakashmb"
ms.localizationpriority: medium
ms.subservice: "intune"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# windowsQualityUpdateProductKnowledgeBaseArticle resource type

Namespace: microsoft.graph

> **Important:** APIs under the /beta version in Microsoft Graph are subject to change which could break your applications. While Intune /beta APIs are supported by Microsoft, you should use these at your own discretion. In general, /beta APIs are not recommended for use in production applications. To determine whether an API is available in v1.0, use the Version selector.

> **Note:** The Microsoft Graph API for Intune requires an [active Intune license](https://go.microsoft.com/fwlink/?linkid=839381) for the tenant.

Represents a knowledge base (KB) article.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|articleId|String|The unique identifier for the knowledge base article. Read-only|
|articleUrl|String|The URL of the knowledge base article. Read-only|

## Relationships
None

## JSON Representation
Here is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.windowsQualityUpdateProductKnowledgeBaseArticle"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.windowsQualityUpdateProductKnowledgeBaseArticle",
  "articleId": "String",
  "articleUrl": "String"
}
```