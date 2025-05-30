---
title: "textContent resource type (preview)"
description: "Represents content provided as a plain text string."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# textContent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents content provided as a plain text string.

## Properties

| Property | Type   | Description            |
| :------- | :----- | :--------------------- |
| data     | String | The text content data. Inherits properties from [contentBase](../resources/contentbase.md).|


## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.textContent",
  "baseType": "microsoft.graph.contentBase",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.textContent",
  "data": "String"
}
```
