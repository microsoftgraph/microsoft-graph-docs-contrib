---
title: "noScopes resource type"
description: "Inheritance pattern explicitly blocking delegated permission scope inheritance for a resource application; agent identities of the agent identity blueprint cannot automatically acquire any scopes from that resource." 
author: "zallison22"
ms.date: 11/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# noScopes resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the most restrictive inheritance configuration for delegated permission scopes. When an [inheritablePermission](../resources/inheritablepermission.md) entry uses `noScopes`, no scopes from the referenced resource application are inheritable by agent identities. Use this pattern to create explicit security boundaries for sensitive resources or to override broader defaults.


Inherits from [inheritableScopes](../resources/inheritablescopes.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|kind|scopeCollectionKind|Always `none` for this derived type. Inherited from [inheritableScopes](../resources/inheritablescopes.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.noScopes"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.noScopes",
  "kind": "String"
}
```

