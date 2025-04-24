---
title: "groupScope resource type"
toc_title: "groupScope resource type (preview)"
description: "Represents a Microsoft 365 group or distribution list as a scope within policy bindings."
author: "ArunGedela"
ms.date: 04/08/2025
ms.localizationpriority: medium
ms.subservice: "security"
doc_type: resourcePageType
---

# groupScope resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Microsoft 365 group or distribution list as a scope within policy bindings. Typically used for inclusions or exclusions. Inherits from [scopeBase](../resources/scopebase.md).

## Properties

Inherits properties from [scopeBase](../resources/scopebase.md). The `identity` property holds the unique identifier (Object ID) of the group.

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.groupScope",
  "baseType": "microsoft.graph.scopeBase",
  "openType": false
}-->
``` json
{
  "@odata.type": "#microsoft.graph.groupScope",
  "identity": "String" // Group's unique identifier (e.g., group-guid)
}
```