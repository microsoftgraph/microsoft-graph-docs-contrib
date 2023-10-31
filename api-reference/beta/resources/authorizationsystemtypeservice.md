---
title: "authorizationSystemTypeService resource type"
description: "Represents a service in an authorization system."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# authorizationSystemTypeService resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a service in an authorization system. Services are defined by the auth system type (AWS, Azure, GCP) and not defined by the authorization system.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authorizationSystemTypeServices](../api/awsauthorizationsystem-list-services.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) collection|Get a list of the [authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) objects and their properties.|
|[Get authorizationSystemTypeService](../api/authorizationsystemtypeservice-get.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md)|Read the properties and relationships of an [authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the service. Read-only. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|actions|[authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md) collection|List of actions for the service in an authorization system.|

## JSON representation
The following JSON representation shows the resource type.
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

