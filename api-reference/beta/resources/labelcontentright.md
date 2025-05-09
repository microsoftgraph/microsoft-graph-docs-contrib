---
title: "labelContentRight resource type"
toc.title: "labelContentRight resource type (preview)"
description: "Represents the rights associated with a specific piece of content."
author: "ArunGedela"
ms.date: 04/21/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# labelContentRight resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the rights associated with a specific piece of content.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get](../api/labelcontentright-get.md)|[labelContentRight](../resources/labelcontentright.md)|Read the properties and relationships of a labelContentRight object.|
|[List](../api/computerightsandinheritanceresult-list-contentrights.md)|[labelContentRight](../resources/labelcontentright.md) collection|Get a list of the labelContentRight objects and their properties.|


## Properties

|Property|Type|Description|
|:---|:---|:---|
|cid|String|The content id.|
|format|String|The content format.|
|id|String|The id|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|label|[sensitivityLabel](../resources/sensitivitylabel.md)|The sensitivity label applied to the content.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.labelContentRight",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.labelContentRight",
  "id": "String (identifier)",
  "cid": "String",
  "format": "String"
}
```
