---
title: "allAllowedScopes resource type"
description: "Inheritance pattern indicating that all delegated permission scopes currently defined (and any added in the future) for the resource application are inheritable by agent identities of the owning agent identity blueprint without additional consent prompts." 
author: "zallison22"
ms.date: 11/13/2025
ms.localizationpriority: medium
ms.subservice: "entra-applications"
doc_type: resourcePageType
---

# allAllowedScopes resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the broadest inheritance pattern for delegated permission scopes. When an [inheritablePermission](../resources/inheritablepermission.md) entry uses `allAllowedScopes`, every scope published by the referenced resource application is considered inheritable and may appear on agent identities without requiring explicit user or admin consent. Newly introduced scopes become inheritable automatically, reducing maintenance overhead for trusted applications.


Inherits from [inheritableScopes](../resources/inheritablescopes.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|kind|scopeCollectionKind|Always `allAllowed` for this derived type. Inherited from [inheritableScopes](../resources/inheritablescopes.md). Other possible discriminator values on the base type include: `enumerated`, `none`, `scopeKindNotSet`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.allAllowedScopes"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.allAllowedScopes",
  "kind": "String"
}
```

