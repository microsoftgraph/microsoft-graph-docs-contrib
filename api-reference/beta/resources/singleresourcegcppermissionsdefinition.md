---
title: "singleResourceGcpPermissionsDefinition resource type"
description: "Represents permissions for a GCP resource."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# singleResourceGcpPermissionsDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents permissions for a GCP resource.

Inherits from [permissionsDefinition](../resources/permissionsdefinition.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionInfo|[gcpPermissionsDefinitionAction](../resources/gcppermissionsdefinitionaction.md)|Information relating to actions defined in the permissions.|
|authorizationSystemInfo|[permissionsDefinitionAuthorizationSystem](../resources/permissionsdefinitionauthorizationsystem.md)|nformation relating to permissions defined in the authorization system. Inherited from [permissionsDefinition](../resources/permissionsdefinition.md).|
|resourceId|String|Identifier for the resource.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identityInfo|[permissionsDefinitionAuthorizationSystemIdentity](../resources/permissionsdefinitionauthorizationsystemidentity.md)|Information relating to permissions defined for identities in the authorization system. Inherited from [microsoft.graph.permissionsDefinition](../resources/permissionsdefinition.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.singleResourceGcpPermissionsDefinition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.singleResourceGcpPermissionsDefinition",
  "authorizationSystemInfo": {
    "@odata.type": "microsoft.graph.permissionsDefinitionAuthorizationSystem"
  },
  "actionInfo": {
    "@odata.type": "microsoft.graph.gcpPermissionsDefinitionAction"
  },
  "resourceId": "String"
}
```

