---
title: "permissionsDefinitionAuthorizationSystemIdentity resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# permissionsDefinitionAuthorizationSystemIdentity resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List permissionsDefinitionAuthorizationSystemIdentities](../api/permissionsdefinitionauthorizationsystemidentity-list.md)|[permissionsDefinitionAuthorizationSystemIdentity](../resources/permissionsdefinitionauthorizationsystemidentity.md) collection|Get a list of the [permissionsDefinitionAuthorizationSystemIdentity](../resources/permissionsdefinitionauthorizationsystemidentity.md) objects and their properties.|
|[Get permissionsDefinitionAuthorizationSystemIdentity](../api/permissionsdefinitionauthorizationsystemidentity-get.md)|[permissionsDefinitionAuthorizationSystemIdentity](../resources/permissionsdefinitionauthorizationsystemidentity.md)|Read the properties and relationships of a [permissionsDefinitionAuthorizationSystemIdentity](../resources/permissionsdefinitionauthorizationsystemidentity.md) object.|
|[Update permissionsDefinitionAuthorizationSystemIdentity](../api/permissionsdefinitionauthorizationsystemidentity-update.md)|[permissionsDefinitionAuthorizationSystemIdentity](../resources/permissionsdefinitionauthorizationsystemidentity.md)|Update the properties of a [permissionsDefinitionAuthorizationSystemIdentity](../resources/permissionsdefinitionauthorizationsystemidentity.md) object.|
|[Delete permissionsDefinitionAuthorizationSystemIdentity](../api/permissionsdefinitionauthorizationsystemidentity-delete.md)|None|Delete a [permissionsDefinitionAuthorizationSystemIdentity](../resources/permissionsdefinitionauthorizationsystemidentity.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|externalId|String|**TODO: Add Description**|
|identityType|permissionsDefinitionIdentityType|**TODO: Add Description**.The possible values are: `user`, `role`, `application`, `managedIdentity`, `serviceAccount`, `unknownFutureValue`.|
|source|[permissionsDefinitionIdentitySource](../resources/permissionsdefinitionidentitysource.md)|**TODO: Add Description**|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "externalId",
  "@odata.type": "microsoft.graph.permissionsDefinitionAuthorizationSystemIdentity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.permissionsDefinitionAuthorizationSystemIdentity",
  "externalId": "String (identifier)",
  "identityType": "String",
  "source": {
    "@odata.type": "microsoft.graph.permissionsDefinitionIdentitySource"
  }
}
```

