---
title: "permissionsDefinition resource type"
description: "An abstract type that represents information about the permissions request, such as the authorization system, the identities making the request, and the actions that the identities need the permissions for."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# permissionsDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that represents information about the permissions request, such as the authorization system, the identities making the request, and the actions for which the identities need the permissions.

The following resources are derived from this abstract type:

- [awsPermissionsDefinition](.../resources/awspermissionsdefinition.md)
- [azurePermissionsDefinition](.../resources/azurepermissionsdefinition.md)
- [gcpPermissionsDefinition](/resources/gcppermissionsdefinition.md)

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authorizationSystemInfo|[permissionsDefinitionAuthorizationSystem](../resources/permissionsdefinitionauthorizationsystem.md)|Information relating to the authorization system and permissions assigned.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identityInfo|[permissionsDefinitionAuthorizationSystemIdentity](../resources/permissionsdefinitionauthorizationsystemidentity.md)|The identity receiving the actionInfo.|

## JSON representation
The following JSON representation shows the resource type.
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

