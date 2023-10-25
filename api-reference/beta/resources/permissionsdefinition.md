---
title: "permissionsDefinition resource type"
description: "Represents the authorizationSystemInfo needed to request permissions, the actions to allow the user to perform and the identity."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# permissionsDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Abstract complex type that represents the authorizationSystemInfo needed to request permissions, the actions to allow the user to perform and the identity. Resource may be implicit or be contained in other properties. It is not defined in the abstract type. Each authorization system type can extend this to its specific needs.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authorizationSystemInfo|[permissionsDefinitionAuthorizationSystem](../resources/permissionsdefinitionauthorizationsystem.md)|Info about the authorization system to assign permissions on.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identityInfo|[permissionsDefinitionAuthorizationSystemIdentity](../resources/permissionsdefinitionauthorizationsystemidentity.md)|The identity receiving the actionInfo.|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.permissionsDefinition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.permissionsDefinition",
  "authorizationSystemInfo": {
    "@odata.type": "microsoft.graph.permissionsDefinitionAuthorizationSystem"
  }
}
```

