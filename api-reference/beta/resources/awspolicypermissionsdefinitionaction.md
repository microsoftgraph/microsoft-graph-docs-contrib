---
title: "awsPolicyPermissionsDefinitionAction resource type"
description: "Represents permissions for an AWS policy."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# awsPolicyPermissionsDefinitionAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents permissions for an AWS policy.

Inherits from [awsPermissionsDefinitionAction](../resources/awspermissionsdefinitionaction.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignToRoleId|String|ID for the role.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|policies|[permissionsDefinitionAwsPolicy](../resources/permissionsdefinitionawspolicy.md) collection|Permissions defined in the AWS policy.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.awsPolicyPermissionsDefinitionAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.awsPolicyPermissionsDefinitionAction",
  "assignToRoleId": "String"
}
```

