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
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|crossTenantPartn
|conditionalAccessPolicy|[conditionalAccessPolicy](../resources/conditionalaccesspolicy.md)|Represents a Microsoft Entra Conditional Access policy. Conditional access policies are custom rules that define an access scenario.|
|namedLocation|[namedLocation](../resources/namedlocation.md)|This is the base class that represents a Microsoft Entra ID named location. Named locations are custom rules that define network locations which can then be used in a Conditional Access (CA) policy.|

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