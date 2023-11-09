---
title: "gcpRolePermissionsDefinitionAction resource type"
description: "Represents actions for permissions for under GCP role."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# gcpRolePermissionsDefinitionAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents actions for permissions under a GCP role.

Inherits from [permissionsDefinitionAction](../resources/permissionsdefinitionaction.md).

The following resource types inherit from this resource:

- [gcpActionPermissionsDefinitionAction](../resources/gcpActionPermissionsDefinitionAction.md) resource type
- [gcpRolePermissionsDefinitionAction](../resources/gcpRolePermissionsDefinitionAction.md) resource type

## Properties
None.

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|roles|[permissionsDefinitionGcpRole](../resources/permissionsdefinitiongcprole.md) collection|Permissions defined in the GCP role.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.gcpRolePermissionsDefinitionAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.gcpRolePermissionsDefinitionAction"
}
```

