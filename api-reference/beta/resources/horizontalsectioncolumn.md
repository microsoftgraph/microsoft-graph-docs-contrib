---
title: "horizontalSectionColumn resource type"
description: Represents a vertical column in a given horizontal section
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: resourcePageType
---

# horizontalSectionColumn resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a vertical column in a given horizontal section.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List horizontalSectionColumns](../api/horizontalsectioncolumn-list.md)|[horizontalSectionColumn](../resources/horizontalsectioncolumn.md) collection|Get a list of the [horizontalSectionColumn](../resources/horizontalsectioncolumn.md) objects and their properties.|
|[Get horizontalSectionColumn](../api/horizontalsectioncolumn-get.md)|[horizontalSectionColumn](../resources/horizontalsectioncolumn.md)|Read the properties and relationships of a [horizontalSectionColumn](../resources/horizontalsectioncolumn.md) object.|
|[List webParts](../api/webpart-list.md)|[webPart](../resources/webPart.md) Collection |Get a list of webparts associated with a [horizontalSectionColumn](../resources/horizontalsectioncolumn.md) object.|



## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|Unique identifier of the resource. Inherited from [entity](../resources/entity.md).|
|width|Int32|Width of the column. A horizontal section is divided into 12 grids. A column should have a value of 1-12 to represent its range spans. For example, there can be two columns both have a width of 6 in a section.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|webparts|[webPart](../resources/webpart.md) collection|The collection of WebParts in this column.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.horizontalSectionColumn",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.horizontalSectionColumn",
  "id": "String (identifier)",
  "width": "Integer"
}
```

