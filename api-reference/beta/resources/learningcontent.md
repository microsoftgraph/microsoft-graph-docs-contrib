---
title: "learningContent resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
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
|additionalTags|String collection|**TODO: Add Description**|
|contentWebUrl|String|**TODO: Add Description**|
|contributor|String|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|duration|Duration|**TODO: Add Description**|
|externalId|String|**TODO: Add Description**|
|format|String|**TODO: Add Description**|
|isActive|Boolean|**TODO: Add Description**|
|isPremium|Boolean|**TODO: Add Description**|
|isSearchable|Boolean|**TODO: Add Description**|
|languageTag|String|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|numberOfPages|Int32|**TODO: Add Description**|
|skillTags|String collection|**TODO: Add Description**|
|sourceName|String|**TODO: Add Description**|
|thumbnailWebUrl|String|**TODO: Add Description**|
|title|String|**TODO: Add Description**|

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

