---
title: "trainingLanguageDetail resource type"
description: "Represents an attack simulation training language detail."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# trainingLanguageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an attack simulation training language detail

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List trainingLanguageDetails](../api/training-list-languagedetails.md)|[trainingLanguageDetail](../resources/traininglanguagedetail.md) collection|Get a list of the [trainingLanguageDetail](../resources/traininglanguagedetail.md) objects and their properties.|
|[Get trainingLanguageDetail](../api/traininglanguagedetail-get.md)|[trainingLanguageDetail](../resources/traininglanguagedetail.md)|Read the properties and relationships of a [trainingLanguageDetail](../resources/traininglanguagedetail.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|content|String|Training language specific content.|
|createdBy|[emailIdentity](../resources/emailidentity.md)|User who created detail.|
|createdDateTime|DateTimeOffset|Creation date and time.s|
|description|String|Description|
|displayName|String|Display name.|
|id|String|Identifier. Inherited from [entity](../resources/entity.md).|
|isDefaultLangauge|Boolean|Is this default language detail.|
|lastModifiedBy|[emailIdentity](../resources/emailidentity.md)|User who updated recently.|
|lastModifiedDateTime|DateTimeOffset|Updation date and time.|
|locale|String|Locale|

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

