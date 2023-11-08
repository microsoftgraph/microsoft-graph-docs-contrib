---
title: "authorizationSystemTypeAction resource type"
description: "Represents an action in an authorization system that is onboarded to Permissions Management."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# authorizationSystemTypeAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an action in an authorization system that you've onboarded to Permissions Management. The following resource types are derived from this base type: [awsAuthorizationSystemTypeAction](), [azureAuthorizationSystemTypeAction](), and [gcpAuthorizationSystemTypeAction]().

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authorizationSystemTypeActions](../api/authorizationsystemtypeservice-list-actions.md)|[authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md) collection|Get a list of the [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md) objects and their properties.|
|[Get authorizationSystemTypeAction](../api/authorizationsystemtypeaction-get.md)|[authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md)|Read the properties and relationships of an [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md) object, that defines the actions allowed in an authorization system that's onboarded to Permissions Management.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionType|authorizationSystemActionType|The type of action allowed in the authorization system's service. The possible values are: `delete`, `read`, `unknownFutureValue`.|
|externalId|String|The display name of an action. Read-only.|
|id|String|The unique encoded identifier for an action as defined by Permissions Management. Read-only. Inherited from [entity](../resources/entity.md).|
|resourceTypes|String collection|The resource types in the authorization system's service where the action can be performed.|
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

