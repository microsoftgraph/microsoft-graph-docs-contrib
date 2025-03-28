---
title: "gcpRolePermissionsDefinitionAction resource type"
description: "Represents actions for permissions for under GCP role."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
ms.date: 04/18/2024
---

# gcpRolePermissionsDefinitionAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents actions for permissions under a GCP role.

Inherits from [gcpPermissionsDefinitionAction](../resources/gcppermissionsdefinitionaction.md).

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

