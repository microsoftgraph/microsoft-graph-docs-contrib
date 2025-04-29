---
title: "policyLocationApplication resource type"
toc.title: "policyLocationApplication resource type (preview)"
description: "Represents a specific application as a location for data protection policy scoping."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# policyLocationApplication

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a specific application as a location for data protection policy scoping.

For example, "83ef198a-0396-4893-9d4f-d36efbffcaaa". Used as a location within the scope of a data protection policy. Inherits from [policyLocation](../resources/policylocation.md).

## Properties

Inherits properties from [policyLocation](../resources/policylocation.md). The `value` property holds the URL.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.policyLocationApplication",
  "baseType": "microsoft.graph.policyLocation",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.policyLocationApplication",
  // Inherited properties from policyLocation
  "value": "String" // For example, "83ef198a-0396-4893-9d4f-d36efbffcaaa"
}
```
