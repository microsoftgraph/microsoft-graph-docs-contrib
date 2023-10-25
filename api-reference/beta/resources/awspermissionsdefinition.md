---
title: "awsPermissionsDefinition resource type"
description: "AWS Specific Permissions Definition that extends permissionsDefinition that requires AWS Specific ActionInfo."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# awsPermissionsDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

AWS Specific Permissions Definition that extends permissionsDefinition that requires AWS Specific ActionInfo

Inherits from [permissionsDefinition](../resources/permissionsdefinition.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionInfo|[awsPermissionsDefinitionAction](../resources/awspermissionsdefinitionaction.md)|The actions the identity will have as part of the permission.|
|authorizationSystemInfo|[permissionsDefinitionAuthorizationSystem](../resources/permissionsdefinitionauthorizationsystem.md)|Info about the authorization system to assign permissions on. Inherited from [permissionsDefinition](../resources/permissionsdefinition.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identityInfo|[permissionsDefinitionAuthorizationSystemIdentity](../resources/permissionsdefinitionauthorizationsystemidentity.md)|The identity receiving the actionInfo. Inherited from [microsoft.graph.permissionsDefinition](../resources/permissionsdefinition.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.awsPermissionsDefinition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.awsPermissionsDefinition",
  "authorizationSystemInfo": {
    "@odata.type": "microsoft.graph.permissionsDefinitionAuthorizationSystem"
  },
  "actionInfo": {
    "@odata.type": "microsoft.graph.awsPermissionsDefinitionAction"
  }
}
```

