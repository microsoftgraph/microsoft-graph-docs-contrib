---
title: "authorizationSystemTypeService resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# authorizationSystemTypeService resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authorizationSystemTypeServices](../api/awsauthorizationsystem-list-services.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) collection|Get a list of the [authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) objects and their properties.|
|[Create authorizationSystemTypeService](../api/awsauthorizationsystem-post-services.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md)|Create a new [authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) object.|
|[Get authorizationSystemTypeService](../api/authorizationsystemtypeservice-get.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md)|Read the properties and relationships of an [authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) object.|
|[Update authorizationSystemTypeService](../api/authorizationsystemtypeservice-update.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md)|Update the properties of an [authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) object.|
|[Delete authorizationSystemTypeService](../api/awsauthorizationsystem-delete-services.md)|None|Delete an [authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) object.|
|[List actions](../api/authorizationsystemtypeservice-list-actions.md)|[authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md) collection|Get the authorizationSystemTypeAction resources from the actions navigation property.|
|[Add authorizationSystemTypeAction](../api/authorizationsystemtypeservice-post-actions.md)|[authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md)|Add actions by posting to the actions collection.|
|[Remove actions](../api/authorizationsystemtypeservice-delete-actions.md)|None|Remove an [authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|actions|[authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authorizationSystemTypeService",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authorizationSystemTypeService",
  "id": "String (identifier)"
}
```

