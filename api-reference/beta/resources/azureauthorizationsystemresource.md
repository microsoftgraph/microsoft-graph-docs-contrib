---
title: "azureAuthorizationSystemResource resource type"
description: "Represents an Azure resource in an Azure authorization system onboarded to Permissions Management."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# azureAuthorizationSystemResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an Azure resource in an Azure authorization system onboarded to Permissions Management.

Inherits from [authorizationSystemResource](../resources/authorizationsystemresource.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List azureAuthorizationSystemResources](../api/azureauthorizationsystem-list-resources.md)|[azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md) collection|Get a list of the [azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md) objects and their properties.|
|[Get azureAuthorizationSystemResource](../api/azureauthorizationsystemresource-get.md)|[azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md)|Read the properties and relationships of an [azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the resource. Supports `$filter` (`eq`,`contains`). Read-only. Inherited from [authorizationSystemResource](../resources/authorizationsystemresource.md).|
|externalId|String|The ID of the resource as defined by Microsoft Azure. Read-only. Alternate key. Inherited from [authorizationSystemResource](../resources/authorizationsystemresource.md).|
|id|String|The ID of the resource as defined by Permissions Management. Inherited from [entity](../resources/entity.md). Read-only.|
|resourceType|String|The type of the resource. Read-only. Inherited from [authorizationSystemResource](../resources/authorizationsystemresource.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|The authorization system that the resource is in. Inherited from [microsoft.graph.authorizationSystemResource](../resources/authorizationsystemresource.md)|
|service|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md)|The service associated with the resource in an Azure authorization system. This object is auto-expanded.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.azureAuthorizationSystemResource",
  "baseType": "microsoft.graph.authorizationSystemResource",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureAuthorizationSystemResource",
  "id": "String (identifier)",
  "externalId": "String",
  "displayName": "String",
  "resourceType": "String"
}
```

