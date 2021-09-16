---
title: "bookmark resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# bookmark resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [searchAnswer](../resources/searchanswer.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List bookmarks](../api/bookmark-list.md)|[bookmark](../resources/bookmark.md) collection|Get a list of the [bookmark](../resources/bookmark.md) objects and their properties.|
|[Create bookmark](../api/bookmark-post-bookmarks.md)|[bookmark](../resources/bookmark.md)|Create a new [bookmark](../resources/bookmark.md) object.|
|[Get bookmark](../api/bookmark-get.md)|[bookmark](../resources/bookmark.md)|Read the properties and relationships of a [bookmark](../resources/bookmark.md) object.|
|[Update bookmark](../api/bookmark-update.md)|[bookmark](../resources/bookmark.md)|Update the properties of a [bookmark](../resources/bookmark.md) object.|
|[Delete bookmark](../api/bookmark-delete.md)|None|Deletes a [bookmark](../resources/bookmark.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|availabilityEndDateTime|DateTimeOffset|**TODO: Add Description**|
|availabilityStartDateTime|DateTimeOffset|**TODO: Add Description**|
|categories|String collection|**TODO: Add Description**|
|description|String|**TODO: Add Description** Inherited from [searchAnswer](../resources/searchanswer.md).|
|displayName|String|**TODO: Add Description** Inherited from [searchAnswer](../resources/searchanswer.md).|
|groupIds|String collection|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isSuggested|Boolean|**TODO: Add Description**|
|keywords|[answerKeyword](../resources/answerkeyword.md)|**TODO: Add Description**|
|languageTags|String collection|**TODO: Add Description**|
|lastModifiedBy|[identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [searchAnswer](../resources/searchanswer.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [searchAnswer](../resources/searchanswer.md).|
|platforms|devicePlatformType collection|**TODO: Add Description**|
|powerAppIds|String collection|**TODO: Add Description**|
|state|answerState|**TODO: Add Description**. The possible values are: `published`, `draft`, `excluded`.|
|targetedVariations|[answerVariant](../resources/answervariant.md) collection|**TODO: Add Description**|
|webUrl|String|**TODO: Add Description** Inherited from [searchAnswer](../resources/searchanswer.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.bookmark",
  "baseType": "microsoft.graph.searchAnswer",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.bookmark",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "webUrl": "String",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "categories": [
    "String"
  ],
  "availabilityStartDateTime": "String (timestamp)",
  "availabilityEndDateTime": "String (timestamp)",
  "languageTags": [
    "String"
  ],
  "platforms": [
    "String"
  ],
  "targetedVariations": [
    {
      "@odata.type": "microsoft.graph.answerVariant"
    }
  ],
  "powerAppIds": [
    "String"
  ],
  "keywords": {
    "@odata.type": "microsoft.graph.answerKeyword"
  },
  "state": "String",
  "isSuggested": "Boolean",
  "groupIds": [
    "String"
  ]
}
```

