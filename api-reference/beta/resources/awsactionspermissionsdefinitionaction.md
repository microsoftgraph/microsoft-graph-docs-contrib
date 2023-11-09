---
title: "awsActionsPermissionsDefinitionAction resource type"
description: "Represents an awsPermissionsDefinitionAction that allows permissions requests with AWS actions."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# awsActionsPermissionsDefinitionAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an awsPermissionsDefinitionAction that allows permissions requests with AWS actions.

Inherits from [awsPermissionsDefinitionAction](../resources/awspermissionsdefinitionaction.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|assignToRoleId|String|AWS Statements|

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

