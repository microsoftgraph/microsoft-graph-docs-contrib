---
title: "azureRolePermissionsDefinitionAction resource type"
description: "Represents permissions for an Azure role."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# azureRolePermissionsDefinitionAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents permissions for an Azure role.

Inherits from [azurePermissionsDefinitionAction](../resources/azurepermissionsdefinitionaction.md).

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|roles|[permissionsDefinitionAzureRole](../resources/permissionsdefinitionazurerole.md) collection|Permissions defined in the Azure role.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.azureRolePermissionsDefinitionAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureRolePermissionsDefinitionAction"
}
```

