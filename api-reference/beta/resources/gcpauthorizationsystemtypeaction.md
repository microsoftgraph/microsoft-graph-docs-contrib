---
title: "gcpAuthorizationSystemTypeAction resource type"
description: "Represents an action in a GCP authorization system."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# gcpAuthorizationSystemTypeAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an action in a GCP authorization system.

Inherits from [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List gcpAuthorizationSystemTypeActions](../api/gcpauthorizationsystem-list-actions.md)|[gcpAuthorizationSystemTypeAction](../resources/gcpauthorizationsystemtypeaction.md) collection|Get a list of the [gcpAuthorizationSystemTypeAction](../resources/gcpauthorizationsystemtypeaction.md) objects and their properties.|
|[Get gcpAuthorizationSystemTypeAction](../api/gcpauthorizationsystemtypeaction-get.md)|[gcpAuthorizationSystemTypeAction](../resources/gcpauthorizationsystemtypeaction.md)|Read the properties and relationships of a [gcpAuthorizationSystemTypeAction](../resources/gcpauthorizationsystemtypeaction.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionType|authorizationSystemActionType|The type of action. Supports `$filter` and (`eq`).  Inherited from [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md). The possible values are: `delete`, `read`, `unknownFutureValue`.|
|externalId|String|The ID of the action as defined by GCP. Read-only. Supports `$filter` and `eq`. Inherited from [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md).|
|id|String|The ID for the action as defined by Permissions Management. Read-only. Inherited from [entity](../resources/entity.md).|
|resourceTypes|String collection|The resource types the action can be performed on. Inherited from [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md).|
|severity|authorizationSystemActionSeverity|The severity of the action. Inherited from [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md). The possible values are: `normal`, `high`, `unknownFutureValue`. Supports `$filter` (`eq`).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|service|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md)|The service associated with the action in a GCP authorization system. This object is autoexpanded. Supports `$filter` (`eq`).|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.gcpAuthorizationSystemTypeAction",
  "baseType": "microsoft.graph.authorizationSystemTypeAction",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.gcpAuthorizationSystemTypeAction",
  "id": "String (identifier)",
  "externalId": "String",
  "resourceTypes": [
    "String"
  ],
  "severity": "String",
  "actionType": "String"
}
```

