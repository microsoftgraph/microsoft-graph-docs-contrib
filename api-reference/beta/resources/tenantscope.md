---
title: "tenantScope resource type"
toc-title: "tenantScope resource type (preview)"
description: "Represents the entire tenant ('All users') as a scope within policy bindings."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# tenantScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the entire tenant ('All users') as a scope within policy bindings.

This is typically used in the `inclusions` list to specify that a policy applies to "All users" or "All groups". Inherits from [scopeBase](../resources/scopebase.md).

## Properties

Inherits properties from [scopeBase](../resources/scopebase.md). The `identity` property is often a specific keyword like "All" or a tenant identifier, depending on the context.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.tenantScope",
  "baseType": "microsoft.graph.scopeBase",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.tenantScope",
  // Inherited properties from scopeBase
  "identity": "String" // e.g., "All", or tenant ID
}
```