---
title: "permissionsDefinitionGcpRole resource type"
description: "Represents permissions for a GCP role."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
---

# permissionsDefinitionGcpRole resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents permissions for a GCP role.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List permissionsDefinitionGcpRoles](../api/permissionsdefinitiongcprole-list.md)|[permissionsDefinitionGcpRole](../resources/permissionsdefinitiongcprole.md) collection|Get a list of the [permissionsDefinitionGcpRole](../resources/permissionsdefinitiongcprole.md) objects and their properties.|
|[Get permissionsDefinitionGcpRole](../api/permissionsdefinitiongcprole-get.md)|[permissionsDefinitionGcpRole](../resources/permissionsdefinitiongcprole.md)|Read the properties and relationships of a [permissionsDefinitionGcpRole](../resources/permissionsdefinitiongcprole.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|List of identifiers. Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.permissionsDefinitionGcpRole",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.permissionsDefinitionGcpRole",
  "id": "String (identifier)"
}
```

