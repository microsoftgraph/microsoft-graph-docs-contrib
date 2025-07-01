---
title: "labelContentRight resource type"
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

## Properties

|Property|Type|Description|
|:---|:---|:---|
|cid|String|The content identifier.|
|format|String|The content format.|
|id|String|The identifier|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|label|[microsoft.graph.security.sensitivityLabel](../resources/security-sensitivitylabel.md)|The sensitivity label applied to the content.|

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
