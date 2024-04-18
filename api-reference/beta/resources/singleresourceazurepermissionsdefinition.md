---
title: "singleResourceAzurePermissionsDefinition resource type"
description: "Represents permissions for an Azure resource."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# singleResourceAzurePermissionsDefinition resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents permissions for an Azure resource.

Inherits from [permissionsDefinition](../resources/permissionsdefinition.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionInfo|[azurePermissionsDefinitionAction](../resources/azurepermissionsdefinitionaction.md)|Information relating to actions defined in the permissions.|
|authorizationSystemInfo|[permissionsDefinitionAuthorizationSystem](../resources/permissionsdefinitionauthorizationsystem.md)|Information relating to permissions defined in the authorization system. Inherited from [permissionsDefinition](../resources/permissionsdefinition.md).|
|resourceId|String|Identifier for the resource.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|identityInfo|[permissionsDefinitionAuthorizationSystemIdentity](../resources/permissionsdefinitionauthorizationsystemidentity.md)|Information relating to permissions defined for identities in the authorization system. Inherited from [permissionsDefinition](../resources/permissionsdefinition.md)|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.singleResourceAzurePermissionsDefinition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.singleResourceAzurePermissionsDefinition",
  "authorizationSystemInfo": {
    "@odata.type": "microsoft.graph.permissionsDefinitionAuthorizationSystem"
  },
  "actionInfo": {
    "@odata.type": "microsoft.graph.azurePermissionsDefinitionAction"
  },
  "resourceId": "String"
}
```

