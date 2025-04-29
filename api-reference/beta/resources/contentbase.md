---
title: "contentBase resource type"
toc.title: "contentBase resource type (preview)"
description: "Abstract base type representing the actual content (text or binary) being processed."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# contentBase resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Abstract base type representing the actual content (text or binary) being processed.

Derived types ([textContent](../resources/textcontent.md), [binaryContent](../resources/binarycontent.md)) hold the specific content data.

## Properties

None.

## Relationships

None.

## JSON representation

The following JSON representation shows the response. 
> **Note:** This abstract type won't be instantiated directly.
<!-- {
  "blockType": "resource",
  "abstract": true,
  "@odata.type": "microsoft.graph.contentBase",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.contentBase"
  // Derived types like textContent or binaryContent specify the @odata.type and the 'data' property
}
```
