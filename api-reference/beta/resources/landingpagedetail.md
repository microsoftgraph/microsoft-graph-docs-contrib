---
title: "landingPageDetail resource type"
description: "Represents an attack simulation landing page detail."
author: "stuartcl"
ms.localizationpriority: medium
ms.prod: "security"
doc_type: resourcePageType
---

# landingPageDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an attack simulation landing page detail.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List landingPageDetails](../api/landingpage-list-details.md)|[landingPageDetail](../resources/landingpagedetail.md) collection|Get a list of the [landingPageDetail](../resources/landingpagedetail.md) objects and their properties.|
|[Get landingPageDetail](../api/landingpagedetail-get.md)|[landingPageDetail](../resources/landingpagedetail.md)|Read the properties and relationships of a [landingPageDetail](../resources/landingpagedetail.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|content|String|Landing page detail content.|
|id|String|Unique identifier for the **landingPageDetail** object. Inherited from [entity](../resources/entity.md).|
|isDefaultLangauge|Boolean|Indicates whether this language detail is default for the landing page.|
|language|String|Content lanuage for the landing page.|

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
