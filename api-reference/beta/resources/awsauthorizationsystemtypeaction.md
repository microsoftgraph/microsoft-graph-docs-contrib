---
title: "awsAuthorizationSystemTypeAction resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# awsAuthorizationSystemTypeAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsAuthorizationSystemTypeActions](../api/awsauthorizationsystem-list-actions.md)|[awsAuthorizationSystemTypeAction](../resources/awsauthorizationsystemtypeaction.md) collection|Get a list of the [awsAuthorizationSystemTypeAction](../resources/awsauthorizationsystemtypeaction.md) objects and their properties.|
|[Create awsAuthorizationSystemTypeAction](../api/awsauthorizationsystem-post-actions.md)|[awsAuthorizationSystemTypeAction](../resources/awsauthorizationsystemtypeaction.md)|Create a new [awsAuthorizationSystemTypeAction](../resources/awsauthorizationsystemtypeaction.md) object.|
|[Get awsAuthorizationSystemTypeAction](../api/awsauthorizationsystemtypeaction-get.md)|[awsAuthorizationSystemTypeAction](../resources/awsauthorizationsystemtypeaction.md)|Read the properties and relationships of an [awsAuthorizationSystemTypeAction](../resources/awsauthorizationsystemtypeaction.md) object.|
|[Update awsAuthorizationSystemTypeAction](../api/awsauthorizationsystemtypeaction-update.md)|[awsAuthorizationSystemTypeAction](../resources/awsauthorizationsystemtypeaction.md)|Update the properties of an [awsAuthorizationSystemTypeAction](../resources/awsauthorizationsystemtypeaction.md) object.|
|[Delete awsAuthorizationSystemTypeAction](../api/awsauthorizationsystem-delete-actions.md)|None|Delete an [awsAuthorizationSystemTypeAction](../resources/awsauthorizationsystemtypeaction.md) object.|
|[List authorizationSystemTypeService](../api/awsauthorizationsystemtypeaction-list-service.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) collection|Get the authorizationSystemTypeService resources from the service navigation property.|
|[Add authorizationSystemTypeService](../api/awsauthorizationsystemtypeaction-post-service.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md)|Add service by posting to the service collection.|
|[Remove authorizationSystemTypeService](../api/awsauthorizationsystemtypeaction-delete-service.md)|None|Remove an [authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) object.|

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

