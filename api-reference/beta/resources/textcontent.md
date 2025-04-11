---
title: "textContent resource type"
description: "Represents content provided as a text string."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# textContent resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents content provided as a plain text string. Typically used for processing chat messages, text snippets, or AI interactions within a [processConversationMetadata](../resources/processconversationmetadata.md) context. Inherits from [contentBase](../resources/contentbase.md).

## Properties

| Property | Type   | Description            |
| :------- | :----- | :--------------------- |
| data     | String | The text content data. |

Inherits properties from [contentBase](../resources/contentbase.md).

## Relationships

None.

## JSON representation

The following JSON representation shows the complex type.
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
