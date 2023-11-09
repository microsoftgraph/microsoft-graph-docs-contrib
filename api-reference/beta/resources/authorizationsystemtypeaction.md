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
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionType|authorizationSystemActionType|The type of action allowed in the authorization system's service. The possible values are: `delete`, `read`, `unknownFutureValue`.|
|externalId|String|The display name of an action. Read-only.|
|id|String|The unique encoded identifier for an action as defined by Permissions Management. Read-only. Inherited from [entity](../resources/entity.md).|
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

