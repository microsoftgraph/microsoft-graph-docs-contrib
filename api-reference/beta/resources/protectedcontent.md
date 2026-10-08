---
title: "protectedContent resource type (preview)"
description: "Represents the content that is protected by a sensitivity label."
author: "ArunGedela"
ms.date: 04/21/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# protectedContent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the content that is protected by a sensitivity label.

This entity provides the details of the content that is being evaluated for rights and inheritance.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|cid|String|The content id|
|format|String|The content format.|
|labelId|String|The unique identifier for the sensitivity label applied to the content.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.protectedContent"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.protectedContent",
  "labelId": "String",
  "cid": "String",
  "format": "String"
}
```
