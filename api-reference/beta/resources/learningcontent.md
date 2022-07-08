---
title: "learningContent resource type"
description: "**TODO: Add Description**"
author: "malabikaroy"
ms.localizationpriority: medium
ms.prod: "employee-experience"
doc_type: resourcePageType
---

# learningContent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List learningContents](../api/learningprovider-list-learningcontents.md)|[learningContent](../resources/learningcontent.md) collection|Get a list of the [learningContent](../resources/learningcontent.md) objects and their properties.|
|[Create learningContent](../api/learningprovider-post-learningcontents.md)|[learningContent](../resources/learningcontent.md)|Create a new [learningContent](../resources/learningcontent.md) object.|
|[Get learningContent](../api/learningcontent-get.md)|[learningContent](../resources/learningcontent.md)|Read the properties and relationships of a [learningContent](../resources/learningcontent.md) object.|
|[Update learningContent](../api/learningcontent-update.md)|[learningContent](../resources/learningcontent.md)|Update the properties of a [learningContent](../resources/learningcontent.md) object.|
|[Delete learningContent](../api/learningprovider-delete-learningcontents.md)|None|Deletes a [learningContent](../resources/learningcontent.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|additionalTags|String collection|**Keywords, topics, other tags associated with the Learning Content**|
|contentWebUrl|String|**Content web url for the Learning Content**|
|contributor|String|**Author/creator/contributor of the Learning Content**|
|createdDateTime|DateTimeOffset|**Date the Learning Content was created in 'yyyy-MM-ddThh:mm:ssZ' in UTC**|
|description|String|**Description/summary for Learning Content**|
|duration|Duration|**Duration of the Learning Content in seconds**|
|externalId|String|**External Content id for the Learning Content**|
|format|String|**Format of the Learning Content.Ex: Course,Video,Book,Book Summary,Audiobook Summary**|
|isActive|Boolean|**Indicates whether the content is active or not. Inactive content will not show up in UI. The default value is true**|
|isPremium|Boolean|**Indicates whether the Learning content requires user to sign-in on the Learning provider platform or not. The default value is false**|
|isSearchable|Boolean|**Indicates whether the Learning Content is searchable or not. The default value is true**|
|languageTag|String|**Language of the Learning Content ex: 'en-us', 'fr-fr'**|
|lastModifiedDateTime|DateTimeOffset|**Date the Learning Content was last modified in 'yyyy-MM-ddThh:mm:ssZ' in UTC**|
|numberOfPages|Int32|**number of pages of the Learning Content. Ex: Number of pages**|
|skillTags|String collection|**Skills tags associated with the Learning Content**|
|sourceName|String|**Learning content source name like LinkedIn Learning, Coursera**|
|thumbnailWebUrl|String|**URL of Learning Content thumbnail image**|
|title|String|**Title of the Learning Content**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.learningContent",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.learningContent",
  "additionalTags": [
    "String"
  ],
  "contentWebUrl": "String",
  "contributor": "String",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "duration": "String (duration)",
  "externalId": "String",
  "format": "String",
  "isActive": "Boolean",
  "isPremium": "Boolean",
  "isSearchable": "Boolean",
  "languageTag": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "numberOfPages": "Integer",
  "skillTags": [
    "String"
  ],
  "sourceName": "String",
  "thumbnailWebUrl": "String",
  "title": "String"
}
```

