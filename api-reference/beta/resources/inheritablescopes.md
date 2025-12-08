---
title: "inheritableScopes resource type"
description: "Base type that models the delegated permission scope inheritance configuration for an agent identity blueprint relative to a resource application. Implemented by collection subset pattern types that declare whether all, none, or only specific scopes may be automatically granted to agent identities without additional consent."
author: "zallison22"
ms.date: 11/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# inheritableScopes resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the inheritance pattern applied to delegated permission scopes published by a resource application and exposed on an [agent identity blueprint](../resources/agentidentityblueprint.md) via its [inheritablePermissions](../resources/inheritablepermission.md) collection. This abstract type is realized by the following derived types:

- [allAllowedScopes](../resources/allallowedscopes.md) – inherit all scopes currently defined for the resource application (future scopes automatically become inheritable).
- [enumeratedScopes](../resources/enumeratedscopes.md) – inherit only the explicitly listed scopes.
- [noScopes](../resources/noscopes.md) – inherit none of the scopes for the resource application.

Use the `kind` discriminator to identify the active inheritance pattern and to filter results.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|kind|scopeCollectionKind|Discriminator indicating which inheritance pattern is configured. The possible values are: `allAllowed` (inherit all scopes), `enumerated` (inherit listed scopes only), `none` (inherit no scopes), `scopeKindNotSet` (unset; internal use), `unknownFutureValue` (reserved for future expansion).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.inheritableScopes"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.inheritableScopes",
  "kind": "String"
}
```

