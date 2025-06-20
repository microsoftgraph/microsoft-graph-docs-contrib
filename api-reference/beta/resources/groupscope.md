---
title: "groupScope resource type"
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

Represents a Microsoft 365 group or distribution list as a scope within policy bindings.

Inherits from [scopeBase](../resources/scopebase.md).

## Properties

| Property | Type   | Description                                                                                        |
| :------- | :----- | :------------------------------------------------------------------------------------------------- |
| identity | String | The identifier for the scope. This is the group ID of the group. Inherited from [scopeBase](../resources/scopebase.md).  |

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
  "identity": "String"
}
```
