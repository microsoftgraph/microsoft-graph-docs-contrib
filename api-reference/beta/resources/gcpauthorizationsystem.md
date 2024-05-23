---
title: "gcpAuthorizationSystem resource type"
description: "Represents a GCP authorization system onboarded to Permissions Management."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# gcpAuthorizationSystem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a GCP authorization system onboarded to Permissions Management.

Inherits from [authorizationSystem](../resources/authorizationsystem.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List gcpAuthorizationSystems](../api/gcpauthorizationsystem-list.md)|[gcpAuthorizationSystem](../resources/gcpauthorizationsystem.md) collection|Get a list of the [gcpAuthorizationSystem](../resources/gcpauthorizationsystem.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|associatedIdentities|[gcpAssociatedIdentities](../resources/gcpassociatedidentities.md)|Identities in the authorization system.*|
|authorizationSystemId|String|ID of the authorization system retrieved from the customer cloud environment.Supports `$filter`(`eq`, `contains`) and `$orderBy`. Inherited from [authorizationSystem](../resources/authorizationsystem.md).|
|authorizationSystemName|String|Name of the authorization system detected after onboarding. Supports `$filter`(`eq`,`contains`) and `$orderBy`. Inherited from [authorizationSystem](../resources/authorizationsystem.md).|
|authorizationSystemType|String|The type of this authorization system. Supports `$filter`(`eq`). Inherited from [authorizationSystem](../resources/authorizationsystem.md).|
|id|String| Unique ID for the authorization system in Permissions Management. Inherited from [entity](../resources/entity.md).|


## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|actions|[gcpAuthorizationSystemTypeAction](../resources/gcpauthorizationsystemtypeaction.md) collection|List of actions for service in authorization system.|
|dataCollectionInfo|[dataCollectionInfo](../resources/datacollectioninfo.md)|Used to expose data collection status of this authorizationSystem. Inherited from [microsoft.graph.authorizationSystem](../resources/authorizationsystem.md)|
|resources|[gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md) collection|Resources associated with the authorization system type.|
|roles|[gcpRole](../resources/gcprole.md) collection|Roles associated with the authorization system type.|
|services|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) collection|Services associated with the authorization system type.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.gcpAuthorizationSystem",
  "baseType": "microsoft.graph.authorizationSystem",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.gcpAuthorizationSystem",
  "id": "String (identifier)",
  "authorizationSystemId": "String",
  "authorizationSystemName": "String",
  "authorizationSystemType": "String"
}
```

