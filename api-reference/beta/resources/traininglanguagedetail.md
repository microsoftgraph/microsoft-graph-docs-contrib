---
title: "trainingLanguageDetail resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# trainingLanguageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List trainingLanguageDetails](../api/training-list-languagedetails.md)|[trainingLanguageDetail](../resources/traininglanguagedetail.md) collection|Get a list of the [trainingLanguageDetail](../resources/traininglanguagedetail.md) objects and their properties.|
|[Create trainingLanguageDetail](../api/training-post-languagedetails.md)|[trainingLanguageDetail](../resources/traininglanguagedetail.md)|Create a new [trainingLanguageDetail](../resources/traininglanguagedetail.md) object.|
|[Get trainingLanguageDetail](../api/traininglanguagedetail-get.md)|[trainingLanguageDetail](../resources/traininglanguagedetail.md)|Read the properties and relationships of a [trainingLanguageDetail](../resources/traininglanguagedetail.md) object.|
|[Update trainingLanguageDetail](../api/traininglanguagedetail-update.md)|[trainingLanguageDetail](../resources/traininglanguagedetail.md)|Update the properties of a [trainingLanguageDetail](../resources/traininglanguagedetail.md) object.|
|[Delete trainingLanguageDetail](../api/training-delete-languagedetails.md)|None|Delete a [trainingLanguageDetail](../resources/traininglanguagedetail.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|content|String|**TODO: Add Description**|
|createdBy|[emailIdentity](../resources/emailidentity.md)|**TODO: Add Description**|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isDefaultLangauge|Boolean|**TODO: Add Description**|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|
|locale|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.trainingLanguageDetail",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.trainingLanguageDetail",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "content": "String",
  "locale": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.emailIdentity"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "isDefaultLangauge": "Boolean"
}
```

