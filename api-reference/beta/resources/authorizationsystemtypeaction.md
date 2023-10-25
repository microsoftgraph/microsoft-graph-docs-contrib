---
title: "authorizationSystemTypeAction resource type"
description: "Represents an action in an authorization system."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# authorizationSystemTypeAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an action in an authorization system. Named authorizationSystemTypeAction because actions are defined by the auth system type (AWS, Azure, GCP) and not defined by the authorization system.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authorizationSystemTypeActions](../api/authorizationsystemtypeservice-list-actions.md)|[authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md) collection|Get a list of the [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md) objects and their properties.|
|[Get authorizationSystemTypeAction](../api/authorizationsystemtypeaction-get.md)|[authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md)|Read the properties and relationships of an [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionType|authorizationSystemActionType|The type of action. The possible values are: `delete`, `read`, `unknownFutureValue`.|
|externalId|String|The display name of an action. Read-only.|
|id|String|The unique encoded identifier for an action. Read-only. Inherited from [entity](../resources/entity.md).|
|resourceTypes|String collection|The resource types the action can be performed on.|
|severity|authorizationSystemActionSeverity|The severity of the action. The possible values are: `normal`, `high`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
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

