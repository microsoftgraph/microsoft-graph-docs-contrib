---
title: "qna resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# qna resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [searchAnswer](../resources/searchanswer.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List qnas](../api/qna-list.md)|[qna](../resources/qna.md) collection|Get a list of the [qna](../resources/qna.md) objects and their properties.|
|[Create qna](../api/qna-post-qnas.md)|[qna](../resources/qna.md)|Create a new [qna](../resources/qna.md) object.|
|[Get qna](../api/qna-get.md)|[qna](../resources/qna.md)|Read the properties and relationships of a [qna](../resources/qna.md) object.|
|[Update qna](../api/qna-update.md)|[qna](../resources/qna.md)|Update the properties of a [qna](../resources/qna.md) object.|
|[Delete qna](../api/qna-delete.md)|None|Deletes a [qna](../resources/qna.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|availabilityEndDateTime|DateTimeOffset|**TODO: Add Description**|
|availabilityStartDateTime|DateTimeOffset|**TODO: Add Description**|
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
  "@odata.type": "microsoft.graph.qna",
  "baseType": "microsoft.graph.searchAnswer",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.qna",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "webUrl": "String",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
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

