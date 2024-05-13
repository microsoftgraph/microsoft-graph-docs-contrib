---
title: "awsAuthorizationSystemTypeAction resource type"
description: "Represents an action in an AWS authorization system."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# awsAuthorizationSystemTypeAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an action in an AWS authorization system.

Inherits from [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsAuthorizationSystemTypeActions](../api/awsauthorizationsystem-list-actions.md)|[awsAuthorizationSystemTypeAction](../resources/awsauthorizationsystemtypeaction.md) collection|Get a list of the [awsAuthorizationSystemTypeAction](../resources/awsauthorizationsystemtypeaction.md) objects and their properties.|
|[Get awsAuthorizationSystemTypeAction](../api/awsauthorizationsystemtypeaction-get.md)|[awsAuthorizationSystemTypeAction](../resources/awsauthorizationsystemtypeaction.md)|Read the properties and relationships of an [awsAuthorizationSystemTypeAction](../resources/awsauthorizationsystemtypeaction.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionType|authorizationSystemActionType|The type of action. Supports `$filter` (`eq`). Inherited from [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md). The possible values are: `delete`, `read`, `unknownFutureValue`.|
|externalId|String|The ID of the action as defined by AWS. Read-only. Supports `$filter` (`eq`). Inherited from [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md).|
|id|String|The ID for the action as defined by Permissions Management. Read-only. Inherited from [entity](../resources/entity.md).|
|resourceTypes|String collection|The resource types the action can be performed on. Supports `$filter` and (`eq`, `contains`). Inherited from [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md).|
|severity|authorizationSystemActionSeverity|The severity of the action. Inherited from [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md). The possible values are: `normal`, `high`, `unknownFutureValue`. Supports `$filter` (`eq`).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|service|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md)|The service associated with the action in an AWS authorization system. This object autoexpanded. Supports `$filter` (`eq`).|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.awsAuthorizationSystemTypeAction",
  "baseType": "microsoft.graph.authorizationSystemTypeAction",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.awsAuthorizationSystemTypeAction",
  "id": "String (identifier)",
  "externalId": "String",
  "resourceTypes": [
    "String"
  ],
  "severity": "String",
  "actionType": "String"
}
```

