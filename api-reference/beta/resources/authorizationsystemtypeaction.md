---
title: "authorizationSystemTypeAction resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# authorizationSystemTypeAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authorizationSystemTypeActions](../api/authorizationsystemtypeservice-list-actions.md)|[authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md) collection|Get a list of the [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md) objects and their properties.|
|[Create authorizationSystemTypeAction](../api/authorizationsystemtypeservice-post-actions.md)|[authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md)|Create a new [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md) object.|
|[Get authorizationSystemTypeAction](../api/authorizationsystemtypeaction-get.md)|[authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md)|Read the properties and relationships of an [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md) object.|
|[Update authorizationSystemTypeAction](../api/authorizationsystemtypeaction-update.md)|[authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md)|Update the properties of an [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md) object.|
|[Delete authorizationSystemTypeAction](../api/authorizationsystemtypeservice-delete-actions.md)|None|Delete an [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionType|authorizationSystemActionType|**TODO: Add Description**.The possible values are: `delete`, `read`, `unknownFutureValue`.|
|externalId|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|resourceTypes|String collection|**TODO: Add Description**|
|severity|authorizationSystemActionSeverity|**TODO: Add Description**.The possible values are: `normal`, `high`, `unknownFutureValue`.|

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

