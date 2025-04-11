---
title: "contentBase complex type"
toc.title: "contentBase complex type (preview)"
description: "Abstract base type representing the actual content (text or binary) being processed."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: complexTypePageType
---

# contentBase complex type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Abstract base type representing the actual content payload being submitted for processing within a [processContentMetadataBase](../resources/processcontentmetadatabase.md) object. Derived types (`textContent`, `binaryContent`) hold the specific content data.

## Properties

This abstract type doesn't define properties itself. Derived types specify the content property (`data`).

## Relationships

None.

## JSON representation

The following JSON representation shows the complex type. Note that this is an abstract type and won't be instantiated directly.
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
