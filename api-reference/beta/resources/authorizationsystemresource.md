---
title: "authorizationSystemResource resource type"
description: "Represents a resource in an authorization system that you've onboarded to Permissions Management."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# authorizationSystemResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a resource in an authorization system.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authorizationSystemResources](../api/authorizationsystemresource-list.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md) collection|List all resources for a specific authorization system.|
|[Get authorizationSystemResource](../api/authorizationsystemresource-get.md)|[authorizationSystemResource](../resources/authorizationsystemresource.md)|Get a single resource in an authorization system.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the resource. Read-only.|
|externalId|String|The id of the resource as defined by the authorization system provider. Read-only.|
|id|String|The unique encoded identifier of the resource. Inherited from [entity](../resources/entity.md). Read-only.|
|resourceType|String|The type of the resource. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|The authorization system that the resource is in.|

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

