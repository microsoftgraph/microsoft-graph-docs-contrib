---
title: "awsAuthorizationSystem resource type"
description: "Represents an AWS authorization system onboarded to Permissions Management."
author: "mrudulahg01"
ms.reviewer: ciem_pm
ms.localizationpriority: medium
ms.subservice: entra-permissions-management
doc_type: resourcePageType
---

# awsAuthorizationSystem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an AWS authorization system onboarded to Permissions Management.

Inherits from [authorizationSystem](../resources/authorizationsystem.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsAuthorizationSystems](../api/awsauthorizationsystem-list.md)|[awsAuthorizationSystem](../resources/awsauthorizationsystem.md) collection|Get a list of the [awsAuthorizationSystem](../resources/awsauthorizationsystem.md) objects and their properties.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|associatedIdentities|[awsAssociatedIdentities](../resources/awsassociatedidentities.md)|Identities in the authorization system.|
|authorizationSystemId|String|ID of the authorization system retrieved from the customer cloud environment.Supports `$filter`(`eq`, `contains`) and `$orderBy`. Inherited from [authorizationSystem](../resources/authorizationsystem.md).|
|authorizationSystemName|String|Name of the authorization system detected after onboarding. Supports `$filter`(`eq`,`contains`) and `$orderBy`. Inherited from [authorizationSystem](../resources/authorizationsystem.md).|
|authorizationSystemType|String|The type of this authorization system. Supports `$filter`(`eq`). Inherited from [authorizationSystem](../resources/authorizationsystem.md).|
|id|String| Unique ID for the authorization system in Permissions Management. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|actions|[awsAuthorizationSystemTypeAction](../resources/awsauthorizationsystemtypeaction.md) collection|List of actions for service in authorization system.|
|dataCollectionInfo|[dataCollectionInfo](../resources/datacollectioninfo.md)|Used to expose data collection status of this authorizationSystem. Inherited from [authorizationSystem](../resources/authorizationsystem.md)|
|policies|[awsPolicy](../resources/awspolicy.md) collection|Policies associated with the AWS authorization system type.|
|resources|[awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) collection|Resources associated with the authorization system type.|
|services|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) collection|Services associated with the authorization system type.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.awsAuthorizationSystem",
  "baseType": "microsoft.graph.authorizationSystem",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.awsAuthorizationSystem",
  "id": "String (identifier)",
  "authorizationSystemId": "String",
  "authorizationSystemName": "String",
  "authorizationSystemType": "String"
}
```

