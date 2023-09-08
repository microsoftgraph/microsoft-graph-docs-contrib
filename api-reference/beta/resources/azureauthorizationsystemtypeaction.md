---
title: "azureAuthorizationSystemTypeAction resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# azureAuthorizationSystemTypeAction resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List azureAuthorizationSystemTypeActions](../api/azureauthorizationsystem-list-actions.md)|[azureAuthorizationSystemTypeAction](../resources/azureauthorizationsystemtypeaction.md) collection|Get a list of the [azureAuthorizationSystemTypeAction](../resources/azureauthorizationsystemtypeaction.md) objects and their properties.|
|[Create azureAuthorizationSystemTypeAction](../api/azureauthorizationsystem-post-actions.md)|[azureAuthorizationSystemTypeAction](../resources/azureauthorizationsystemtypeaction.md)|Create a new [azureAuthorizationSystemTypeAction](../resources/azureauthorizationsystemtypeaction.md) object.|
|[Get azureAuthorizationSystemTypeAction](../api/azureauthorizationsystemtypeaction-get.md)|[azureAuthorizationSystemTypeAction](../resources/azureauthorizationsystemtypeaction.md)|Read the properties and relationships of an [azureAuthorizationSystemTypeAction](../resources/azureauthorizationsystemtypeaction.md) object.|
|[Update azureAuthorizationSystemTypeAction](../api/azureauthorizationsystemtypeaction-update.md)|[azureAuthorizationSystemTypeAction](../resources/azureauthorizationsystemtypeaction.md)|Update the properties of an [azureAuthorizationSystemTypeAction](../resources/azureauthorizationsystemtypeaction.md) object.|
|[Delete azureAuthorizationSystemTypeAction](../api/azureauthorizationsystem-delete-actions.md)|None|Delete an [azureAuthorizationSystemTypeAction](../resources/azureauthorizationsystemtypeaction.md) object.|
|[List authorizationSystemTypeService](../api/azureauthorizationsystemtypeaction-list-service.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) collection|Get the authorizationSystemTypeService resources from the service navigation property.|
|[Add authorizationSystemTypeService](../api/azureauthorizationsystemtypeaction-post-service.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md)|Add service by posting to the service collection.|
|[Remove authorizationSystemTypeService](../api/azureauthorizationsystemtypeaction-delete-service.md)|None|Remove an [authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) object.|

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

