---
title: "authorizationSystemResource resource type"
description: "Represents a resource in an authorization system onboarded to Permissions Management."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# authorizationSystemResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a resource in an authorization system onboarded to Permissions Management. The following resource types are derived from this base type: awsAuthorizationSystemResource, azureAuthorizationSystemResource, and gcpAuthorizationSystemResource.

Inherits from [entity](../resources/entity.md).

## Methods
None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the resource. Read-only. Supports `$filter` (`eq`,`contains`).|
|externalId|String|The ID of the resource as defined by the authorization system provider. Read-only. Supports `$filter` (`eq`).|
|id|String|The ID for the resource as defined by Permissions Management. Inherited from [entity](../resources/entity.md). Read-only.|
|resourceType|String|The type of the resource. Read-only. Supports `$filter` (`eq`).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|The authorization system that the resource exists in.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authorizationSystemResource",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authorizationSystemResource",
  "id": "String (identifier)",
  "externalId": "String",
  "displayName": "String",
  "resourceType": "String"
}
```

