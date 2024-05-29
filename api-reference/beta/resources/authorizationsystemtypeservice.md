---
title: "authorizationSystemTypeService resource type"
description: "Represents a service in an authorization system that is onboarded to Permissions Management."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# authorizationSystemTypeService resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a service in an authorization system that is onboarded to Permissions Management. Services are defined by the auth system type (AWS, Azure, GCP).

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List AWS authorization system services](../api/awsauthorizationsystem-list-services.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) collection|Get a list of the [authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) objects and their properties.|
|[List Azure authorization system type services](../api/azureauthorizationsystem-list-services.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) collection|Get a list of the [authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) objects and their properties.|
|[List GCP authorization system type services](../api/gcpauthorizationsystem-list-services.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) collection|Get a list of the [authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) objects and their properties.|
|[Get authorization system services](../api/authorizationsystemtypeservice-get.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) collection|Get the [authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The identifier of the service. Read-only. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|actions|[authorizationSystemTypeAction](../resources/authorizationsystemtypeaction.md) collection|List of actions for the service in an authorization system that is onboarded to Permissions Management.|

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

