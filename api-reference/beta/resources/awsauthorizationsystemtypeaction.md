---
title: "awsAuthorizationSystemTypeAction resource type"
description: "Represents an action in an AWS authorization system."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
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
|actionType|authorizationSystemActionType|The type of action. Inherited from [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md).The possible values are: `delete`, `read`, `unknownFutureValue`.|
|externalId|String|The display name of an action. Read-only. Inherited from [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md).|
|id|String|The unique encoded identifier for an action. Read-only. Inherited from [entity](../resources/entity.md).|
|resourceTypes|String collection|The resource types the action can be performed on. Inherited from [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md).|
|severity|authorizationSystemActionSeverity|The severity of the action. Inherited from [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md).The possible values are: `normal`, `high`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|service|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md)|The service associated with the action in an AWS authorization system. This is auto-expanded.|

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
  "actionType": "String",
  "service": {
    "id": "String"
  }
}
```

