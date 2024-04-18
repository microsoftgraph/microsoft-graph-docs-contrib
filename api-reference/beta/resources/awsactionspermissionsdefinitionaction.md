---
title: "awsActionsPermissionsDefinitionAction resource type"
description: "Represents permissions for an AWS action."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# awsActionsPermissionsDefinitionAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents permissions for an AWS action.

Inherits from [awsPermissionsDefinitionAction](../resources/awspermissionsdefinitionaction.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignToRoleId|String|Defines AWS statements.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|statements|[awsStatement](../resources/awsstatement.md) collection|Role to assign to.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.awsActionsPermissionsDefinitionAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.awsActionsPermissionsDefinitionAction",
  "assignToRoleId": "String"
}
```

