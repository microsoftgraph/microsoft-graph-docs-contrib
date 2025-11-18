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

Represents a constrained inheritance configuration for delegated permission scopes. When an [inheritablePermission](../resources/inheritablepermission.md) entry uses `enumeratedScopes`, only the scopes explicitly listed in the `scopes` collection are inheritable by agent identities. This pattern provides fine‑grained control and supports gradual permission expansion without broad elevation.


Inherits from [inheritableScopes](../resources/inheritablescopes.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|kind|scopeCollectionKind|Always `enumerated` for this derived type. Inherited from [inheritableScopes](../resources/inheritablescopes.md).|
|scopes|String collection|Required. Nonempty list of delegated permission scope identifiers published by the resource application to inherit. Entries must be unique, conform to naming conventions (no whitespace; typically `Resource.Operation[.Constraint]`), and exclude any globally blocked scopes.|

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

