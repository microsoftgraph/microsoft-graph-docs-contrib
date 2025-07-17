---
title: "azureActionPermissionsDefinitionAction resource type"
description: "Represents Azure actions."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
ms.date: 04/18/2024
---

# azureActionPermissionsDefinitionAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

[!INCLUDE [permissions-management-retirement-note](../../includes/permissions-management-retirement-note.md)]

Represents actions under Azure permissions.

Inherits from [permissionsDefinitionAction](../resources/permissionsdefinitionaction.md).
The following resource types inherit from this resource:

- [azureActionPermissionsDefinitionAction](../resources/azureActionPermissionsDefinitionAction.md) resource type
- [azureRolePermissionsDefinitionAction](../resources/azureRolePermissionsDefinitionAction.md) resource type

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actions|String collection|List of actions relating to the Azure permission.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.azureActionPermissionsDefinitionAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureActionPermissionsDefinitionAction",
  "actions": [
    "String"
  ]
}
```


