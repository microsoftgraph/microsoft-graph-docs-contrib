---
title: "landingPageDetail resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# landingPageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List landingPageDetails](../api/landingpage-list-details.md)|[landingPageDetail](../resources/landingpagedetail.md) collection|Get a list of the [landingPageDetail](../resources/landingpagedetail.md) objects and their properties.|
|[Create landingPageDetail](../api/landingpage-post-details.md)|[landingPageDetail](../resources/landingpagedetail.md)|Create a new [landingPageDetail](../resources/landingpagedetail.md) object.|
|[Get landingPageDetail](../api/landingpagedetail-get.md)|[landingPageDetail](../resources/landingpagedetail.md)|Read the properties and relationships of a [landingPageDetail](../resources/landingpagedetail.md) object.|
|[Update landingPageDetail](../api/landingpagedetail-update.md)|[landingPageDetail](../resources/landingpagedetail.md)|Update the properties of a [landingPageDetail](../resources/landingpagedetail.md) object.|
|[Delete landingPageDetail](../api/landingpage-delete-details.md)|None|Delete a [landingPageDetail](../resources/landingpagedetail.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|content|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|isDefaultLangauge|Boolean|**TODO: Add Description**|
|language|String|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.landingPageDetail",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.landingPageDetail",
  "id": "String (identifier)",
  "content": "String",
  "language": "String",
  "isDefaultLangauge": "Boolean"
}
```

