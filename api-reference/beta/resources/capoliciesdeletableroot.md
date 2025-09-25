---
title: "caPoliciesDeletableRoot resource type"
description: "Represents a container for conditional access objects in Microsoft Entra that support soft-delete functionality."
author: "ashyasingh"
ms.date: 08/09/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# caPoliciesDeletableRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a container for conditional access objects in Microsoft Entra that support soft-delete functionality.

Inherits from [entity](../resources/entity.md).


## Methods
None.

## Properties
| Property     | Type        | Description |
|:-------------|:------------|:------------|
|id|String|The identifier for a conditional access object that supports soft delete. Inherits from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|namedLocations|[namedLocation](namedlocation.md) collection| Read-only. Nullable. Returns a collection of the specified named locations.|
|policies|[conditionalAccessPolicy](conditionalaccesspolicy.md) collection| Read-only. Nullable. Returns a collection of the specified Conditional Access policies.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.caPoliciesDeletableRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.caPoliciesDeletableRoot",
  "id": "String (identifier)"
}
```
