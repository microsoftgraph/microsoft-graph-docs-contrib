---
title: "horizontalSection resource type"
description: Represent a horizontal section in a given SharePoint page
author: sangle7
ms.localizationpriority: medium
ms.prod: sharepoint
doc_type: resourcePageType
---

# horizontalSection resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represent a horizontal section in a given SharePoint page.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List horizontalSections](../api/canvaslayout-list-horizontalsections.md)|[horizontalSection](../resources/horizontalsection.md) collection|Get a list of the [horizontalSection](../resources/horizontalsection.md) objects and their properties.|
|[Get horizontalSection](../api/horizontalsection-get.md)|[horizontalSection](../resources/horizontalsection.md)|Read the properties and relationships of a [horizontalSection](../resources/horizontalsection.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|emphasis|sectionEmphasisType|Enumeration value that indicates the emphasis of the section background.The possible values are: `none`, `netural`, `soft`, `strong`, `unknownFutureValue`.|
|id|String|Unique identifier of the resource. Inherited from [entity](../resources/entity.md).|
|layout|horizontalSectionLayoutType|Layout type of the section.The possible values are: `none`, `oneColumn`, `twoColumns`, `threeColumns`, `oneThirdLeftColumn`, `oneThirdRightColumn`, `fullWidth`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|columns|[horizontalSectionColumn](../resources/horizontalsectioncolumn.md) collection|The set of vertical columns in this section.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.horizontalSection",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.horizontalSection",
  "id": "String (identifier)",
  "layout": "String",
  "emphasis": "String"
}
```

