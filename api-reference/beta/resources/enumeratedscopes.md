---
title: "enumeratedScopes resource type"
description: "Inheritance pattern specifying an explicit allow-list of delegated permission scopes for a resource application that agent identities of an agent identity blueprint may acquire automatically without enabling consent for each agent identity." 
author: "zallison22"
ms.date: 11/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# enumeratedScopes resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines that an explicit list of scopes of a resource application defined on the **agentIdentityBlueprint** are inheritable by agent identities through the [inheritablePermissions](../resources/inheritablepermission.md) object. This constrained inheritance configuration for delegated permission scopes provides fine‑grained control and supports gradual permission expansion without broad elevation.


Inherits from [inheritableScopes](../resources/inheritablescopes.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|kind|scopeCollectionKind|Always `enumerated` for this derived type. Inherited from [inheritableScopes](../resources/inheritablescopes.md).|
|scopes|String collection|Required. Nonempty list of delegated permission scope identifiers published by the resource application to inherit. Entries must be unique and must not include any [globally blocked scopes](../resources/agentid-platform-overview.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.enumeratedScopes"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.enumeratedScopes",
  "kind": "String",
  "scopes": [
    "String"
  ]
}
```

