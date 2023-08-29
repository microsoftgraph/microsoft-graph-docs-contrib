---
title: "gcpAuthorizationSystemTypeAction resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# gcpAuthorizationSystemTypeAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List gcpAuthorizationSystemTypeActions](../api/gcpauthorizationsystem-list-actions.md)|[gcpAuthorizationSystemTypeAction](../resources/gcpauthorizationsystemtypeaction.md) collection|Get a list of the [gcpAuthorizationSystemTypeAction](../resources/gcpauthorizationsystemtypeaction.md) objects and their properties.|
|[Create gcpAuthorizationSystemTypeAction](../api/gcpauthorizationsystem-post-actions.md)|[gcpAuthorizationSystemTypeAction](../resources/gcpauthorizationsystemtypeaction.md)|Create a new [gcpAuthorizationSystemTypeAction](../resources/gcpauthorizationsystemtypeaction.md) object.|
|[Get gcpAuthorizationSystemTypeAction](../api/gcpauthorizationsystemtypeaction-get.md)|[gcpAuthorizationSystemTypeAction](../resources/gcpauthorizationsystemtypeaction.md)|Read the properties and relationships of a [gcpAuthorizationSystemTypeAction](../resources/gcpauthorizationsystemtypeaction.md) object.|
|[Update gcpAuthorizationSystemTypeAction](../api/gcpauthorizationsystemtypeaction-update.md)|[gcpAuthorizationSystemTypeAction](../resources/gcpauthorizationsystemtypeaction.md)|Update the properties of a [gcpAuthorizationSystemTypeAction](../resources/gcpauthorizationsystemtypeaction.md) object.|
|[Delete gcpAuthorizationSystemTypeAction](../api/gcpauthorizationsystem-delete-actions.md)|None|Delete a [gcpAuthorizationSystemTypeAction](../resources/gcpauthorizationsystemtypeaction.md) object.|
|[List authorizationSystemTypeService](../api/gcpauthorizationsystemtypeaction-list-service.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) collection|Get the authorizationSystemTypeService resources from the service navigation property.|
|[Add authorizationSystemTypeService](../api/gcpauthorizationsystemtypeaction-post-service.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md)|Add service by posting to the service collection.|
|[Remove authorizationSystemTypeService](../api/gcpauthorizationsystemtypeaction-delete-service.md)|None|Remove an [authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|actionType|authorizationSystemActionType|**TODO: Add Description** Inherited from [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md).The possible values are: `delete`, `read`, `unknownFutureValue`.|
|externalId|String|**TODO: Add Description** Inherited from [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|resourceTypes|String collection|**TODO: Add Description** Inherited from [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md).|
|severity|authorizationSystemActionSeverity|**TODO: Add Description** Inherited from [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md).The possible values are: `normal`, `high`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|service|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
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

