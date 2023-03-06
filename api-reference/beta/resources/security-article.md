---
title: "article resource type"
description: "Articles are narratives by Microsoft that provide insight into threat actors, tooling, attacks, and vulnerabilities. Articles are not blog posts about threat intelligence; while they summarize different threats, they also link to actionable content and key indicators of compromise to help users take action."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# article resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Articles are narratives by Microsoft that provide insight into threat actors, tooling, attacks, and vulnerabilities. Articles are not blog posts about threat intelligence; while they summarize different threats, they also link to actionable content and key indicators of compromise to help users take action.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List articles](../api/security-article-list.md)|[microsoft.graph.security.article](../resources/security-article.md) collection|Get a list of the [microsoft.graph.security.article](../resources/security-article.md) objects and their properties.|
|[Get article](../api/security-article-get.md)|[microsoft.graph.security.article](../resources/security-article.md)|Read the properties and relationships of a [microsoft.graph.security.article](../resources/security-article.md) object.|
|[List indicators](../api/security-article-list-indicators.md)|[microsoft.graph.security.articleIndicator](../resources/security-articleindicator.md) collection|Get the articleIndicator resources from the indicators navigation property.|


## Properties
|Property|Type|Description|
|:---|:---|:---|
|body|[microsoft.graph.security.formattedContent](../resources/security-formattedcontent.md)|Formatted Article contents|
|createdDateTime|DateTimeOffset|The date and time that this Article was created|
|isFeatured|Boolean|Indicates if this Article is currently featured by Microsoft|
|id|String|The system-generated id for this Article.|
|imageUrl|String|URL of the header image for this Article, used for display purposes.|
|lastUpdatedDateTime|DateTimeOffset|The most recent date and time this Article was updated|
|summary|[microsoft.graph.security.formattedContent](../resources/security-formattedcontent.md)|A quick summary of this Article|
|tags|String collection|Tags for this Article, communicating keywords or key concepts|
|title|String|The title of this Article|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|indicators|[microsoft.graph.security.articleIndicator](../resources/security-articleindicator.md) collection|Indicators related to this Article|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.article",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.article",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "lastUpdatedDateTime": "String (timestamp)",
  "title": "String",
  "summary": {
    "@odata.type": "microsoft.graph.security.formattedContent"
  },
  "featured": "Boolean",
  "body": {
    "@odata.type": "microsoft.graph.security.formattedContent"
  },
  "tags": [
    "String"
  ],
  "imageUrl": "String"
}
```

