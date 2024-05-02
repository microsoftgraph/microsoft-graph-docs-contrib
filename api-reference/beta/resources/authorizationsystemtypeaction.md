---
title: "authorizationSystemTypeAction resource type"
description: "Represents an action in an authorization system onboarded to Permissions Management."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# authorizationSystemTypeAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an action in an authorization system onboarded to Permissions Management. The following resource types are derived from this base type: 
- [awsAuthorizationSystemTypeAction](../resources/awsauthorizationsystemtypeaction.md) resource type
- [azureAuthorizationSystemTypeAction](../resources/azureauthorizationsystemtypeaction.md) resource type
- [gcpAuthorizationSystemTypeAction](../resources/gcpauthorizationsystemtypeaction.md) resource type

Inherits from [entity](../resources/entity.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionType|authorizationSystemActionType|The type of action allowed in the authorization system's service. The possible values are: `delete`, `read`, `unknownFutureValue`. Supports `$filter` and (`eq`).|
|externalId|String|The display name of an action. Read-only. Supports `$filter` and (`eq`).|
|id|String|The base64 encoded identifier of externalId for an action as defined by Permissions Management. Read-only. Inherited from [entity](../resources/entity.md).|
|resourceTypes|String collection|The resource types in the authorization system's service where the action can be performed. Supports `$filter` and (`eq`).|
|severity|authorizationSystemActionSeverity|The severity of the action in the authorization systems' service. The possible values are: `normal`, `high`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authorizationSystemTypeAction",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authorizationSystemTypeAction",
  "id": "String (identifier)",
  "externalId": "String",
  "resourceTypes": [
    "String"
  ],
  "severity": "String",
  "actionType": "String"
}
```

