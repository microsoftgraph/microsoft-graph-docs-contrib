---
title: "article resource type"
description: "Articles are narratives by Microsoft that provide insight into threat actors, tooling, attacks, and vulnerabilities."
author: "joerattazzi-microsoft"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# article resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an article, which is a narrative that provides insight into threat actors, tooling, attacks, and vulnerabilities. Articles are not blog posts about threat intelligence; while they summarize different threats, they also link to actionable content and key indicators of compromise to help users take action.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List articles](../api/security-article-list.md)|[article](../resources/security-article.md) collection|Get a list of the [microsoft.graph.security.article](../resources/security-article.md) objects and their properties.|
|[Get article](../api/security-article-get.md)|[article](../resources/security-article.md)|Read the properties and relationships of a [microsoft.graph.security.article](../resources/security-article.md) object.|
|[List indicators](../api/security-article-list-indicators.md)|[articleIndicator](../resources/security-articleindicator.md) collection|Get the articleIndicator resources from the indicators navigation property.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|body|[microsoft.graph.security.formattedContent](../resources/security-formattedcontent.md)|Formatted article contents.|
|createdDateTime|DateTimeOffset|The date and time when this **article** was created. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|isFeatured|Boolean|Indicates whether this **article** is currently featured by Microsoft.|
|id|String|The system-generated ID for this **article**.|
|imageUrl|String|URL of the header image for this **article**, used for display purposes.|
|lastUpdatedDateTime|DateTimeOffset|The most recent date and time when this **article** was updated. The Timestamp type represents date and time information using ISO 8601 format and is always in UTC time. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|summary|[microsoft.graph.security.formattedContent](../resources/security-formattedcontent.md)|A quick summary of this **article**.|
|tags|String collection|Tags for this **article**, communicating keywords, or key concepts.|
|title|String|The title of this **article**.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|indicators|[microsoft.graph.security.articleIndicator](../resources/security-articleindicator.md) collection|Indicators related to this **article**.|

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
  "body": {
    "@odata.type": "microsoft.graph.security.formattedContent"
  },
  "createdDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "imageUrl": "String",
  "isFeatured": "Boolean",
  "lastUpdatedDateTime": "String (timestamp)",
  "summary": {
    "@odata.type": "microsoft.graph.security.formattedContent"
  },
  "tags": [
    "String"
  ],
  "title": "String"
}
```
