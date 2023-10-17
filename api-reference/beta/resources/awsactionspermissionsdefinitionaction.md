---
title: "awsActionsPermissionsDefinitionAction resource type"
description: "An awsPermissionsDefinitionAction that will allow permissions requests with AWS Actions."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# awsActionsPermissionsDefinitionAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An awsPermissionsDefinitionAction that will allow permissions requests with AWS Actions.

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
The following is a JSON representation of the resource.
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

