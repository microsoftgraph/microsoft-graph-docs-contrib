---
title: "awsAuthorizationSystemResource resource type"
description: "Represents an AWS resource in an AWS authorization system."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# awsAuthorizationSystemResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an AWS resource in an AWS authorization system.

Inherits from [authorizationSystemResource](../resources/authorizationsystemresource.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsAuthorizationSystemResources](../api/awsauthorizationsystem-list-resources.md)|[awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) collection|Get a list of the [awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) objects and their properties.|
|[Get awsAuthorizationSystemResource](../api/awsauthorizationsystemresource-get.md)|[awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md)|Read the properties and relationships of an [awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the resource. Read-only. Supports `$filter` (`eq`,`contains`). Inherited from [authorizationSystemResource](../resources/authorizationsystemresource.md).|
|externalId|String|The ID of the resource as defined by AWS. Read-only. Supports `$filter` (`eq`). Inherited from [authorizationSystemResource](../resources/authorizationsystemresource.md).|
|id|String|The ID of the resource as defined by Permissions Management.  Read-only. Inherited from [entity](../resources/entity.md).|
|resourceType|String|The type of the resource. Read-only. Supports `$filter` (`eq`). Inherited from [authorizationSystemResource](../resources/authorizationsystemresource.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|The authorization system that the resource is in. Inherited from [microsoft.graph.authorizationSystemResource](../resources/authorizationsystemresource.md)|
|service|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md)|The service associated with the resource in an AWS authorization system. This is auto-expanded.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.awsAuthorizationSystemResource",
  "baseType": "microsoft.graph.authorizationSystemResource",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.awsAuthorizationSystemResource",
  "id": "String (identifier)",
  "externalId": "String",
  "displayName": "String",
  "resourceType": "String"
}
```

