---
title: "azureAuthorizationSystemTypeAction resource type"
description: "Represents an action in an Azure authorization system."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# azureAuthorizationSystemTypeAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an action in an Azure authorization system.

Inherits from [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List azureAuthorizationSystemTypeActions](../api/azureauthorizationsystem-list-actions.md)|[azureAuthorizationSystemTypeAction](../resources/azureauthorizationsystemtypeaction.md) collection|Get a list of the [azureAuthorizationSystemTypeAction](../resources/azureauthorizationsystemtypeaction.md) objects and their properties.|
|[Get azureAuthorizationSystemTypeAction](../api/azureauthorizationsystemtypeaction-get.md)|[azureAuthorizationSystemTypeAction](../resources/azureauthorizationsystemtypeaction.md)|Read the properties and relationships of an [azureAuthorizationSystemTypeAction](../resources/azureauthorizationsystemtypeaction.md) object.|

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
|service|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md)|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.azureAuthorizationSystemTypeAction",
  "baseType": "microsoft.graph.authorizationSystemTypeAction",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureAuthorizationSystemTypeAction",
  "id": "String (identifier)",
  "externalId": "String",
  "resourceTypes": [
    "String"
  ],
  "severity": "String",
  "actionType": "String"
}
```

