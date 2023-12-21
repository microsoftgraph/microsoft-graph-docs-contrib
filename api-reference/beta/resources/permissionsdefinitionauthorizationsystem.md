---
title: "permissionsDefinitionAuthorizationSystem resource type"
description: "Represents the authorization system that the permissions will be requested on."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# permissionsDefinitionAuthorizationSystem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the authorization system that the permissions will be requested on.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authorizationSystemId|String|ID of the [authorization system](../resources/authorizationsystem.md) retrieved from the customer cloud environment.|
|authorizationSystemType|String|The type of [authorization system](../resources/authorizationsystem.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.permissionsDefinitionAuthorizationSystem"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.permissionsDefinitionAuthorizationSystem",
  "authorizationSystemId": "String",
  "authorizationSystemType": "String"
}
```

