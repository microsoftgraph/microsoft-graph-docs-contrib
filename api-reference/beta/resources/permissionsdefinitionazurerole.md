---
title: "permissionsDefinitionAzureRole resource type"
description: "Represents permissions defined for an Azure role."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# permissionsDefinitionAzureRole resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents permissions defined for an Azure role.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List permissionsDefinitionAzureRoles](../api/permissionsdefinitionazurerole-list.md)|[permissionsDefinitionAzureRole](../resources/permissionsdefinitionazurerole.md) collection|Get a list of the [permissionsDefinitionAzureRole](../resources/permissionsdefinitionazurerole.md) objects and their properties.|
|[Get permissionsDefinitionAzureRole](../api/permissionsdefinitionazurerole-get.md)|[permissionsDefinitionAzureRole](../resources/permissionsdefinitionazurerole.md)|Read the properties and relationships of a [permissionsDefinitionAzureRole](../resources/permissionsdefinitionazurerole.md) object.|

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
  "@odata.type": "microsoft.graph.permissionsDefinitionAzureRole",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.permissionsDefinitionAzureRole",
  "id": "String (identifier)"
}
```

