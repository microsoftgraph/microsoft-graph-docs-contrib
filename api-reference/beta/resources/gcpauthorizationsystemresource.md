---
title: "gcpAuthorizationSystemResource resource type"
description: "Represents a GCP resource in an GCP authorization system."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# gcpAuthorizationSystemResource resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a GCP resource in a GCP authorization system.

Inherits from [authorizationSystemResource](../resources/authorizationsystemresource.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List gcpAuthorizationSystemResources](../api/gcpauthorizationsystem-list-resources.md)|[gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md) collection|Get a list of the [gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md) objects and their properties.|
|[Get gcpAuthorizationSystemResource](../api/gcpauthorizationsystemresource-get.md)|[gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md)|Read the properties and relationships of a [gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The name of the resource. Read-only. Supports `$filter` (`eq`,`contains`). Inherited from [authorizationSystemResource](../resources/authorizationsystemresource.md).|
|externalId|String|The ID of the resource as defined by GCP. Read-only. Supports `$filter` (`eq`). Inherited from [authorizationSystemResource](../resources/authorizationsystemresource.md).|
|id|String|The ID for the resource as defined by Permissions Management. Inherited from [entity](../resources/entity.md). Read-only.|
|resourceType|String|The type of the resource. Read-only. Inherited from [authorizationSystemResource](../resources/authorizationsystemresource.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|authorizationSystem|[authorizationSystem](../resources/authorizationsystem.md)|The authorization system that the resource is in. Inherited from [microsoft.graph.authorizationSystemResource](../resources/authorizationsystemresource.md)|
|service|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md)|The service associated with the resource in an GCP authorization system. This object is auto-expanded.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.gcpAuthorizationSystemResource",
  "baseType": "microsoft.graph.authorizationSystemResource",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.gcpAuthorizationSystemResource",
  "id": "String (identifier)",
  "externalId": "String",
  "displayName": "String",
  "resourceType": "String"
}
```

