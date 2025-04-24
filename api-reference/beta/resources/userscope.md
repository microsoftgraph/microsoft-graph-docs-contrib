---
title: "userScope resource type"
toc-title: "userScope resource type (preview)"
description: "Represents an individual user as a scope within policy bindings."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# userScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an individual user as a scope within policy bindings.

Typically used for inclusions or exclusions. Inherits from [scopeBase](../resources/scopebase.md).

## Properties

Inherits properties from [scopeBase](../resources/scopebase.md).

The `identity` property holds the unique identifier (e.g., Object ID or UPN) of the user.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.userScope",
  "baseType": "microsoft.graph.scopeBase",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.userScope",
  // Inherited properties from scopeBase
  "identity": "String" // User's unique identifier (e.g., user-guid)
}
```
