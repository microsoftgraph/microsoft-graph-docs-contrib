---
title: "workbookContent resource type"
description: "Contains the JSON document stored in the content property of a Microsoft Security workbook."
author: "MrFrankel"
ms.date: 09/22/2026
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# workbookContent resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the JSON document stored in the **content** property of a [workbook](../resources/security-workbook.md).

Inherits from [microsoft.graph.Dictionary](../resources/dictionary.md).

This resource is an open type. It accepts dynamic properties whose values are represented by `microsoft.graph.Json`. Those values can be JSON objects, arrays, strings, numbers, Boolean values, or `null`.

The **content** property must be a JSON object, not a JSON-encoded string or a top-level array. When you update a workbook, supply the complete object. The update replaces the existing document rather than merging its nested properties.

## Properties
None. Properties are defined dynamically in the JSON document.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.security.workbookContent",
  "openType": true
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.workbookContent"
}
```
