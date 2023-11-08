---
title: "awsAuthorizationSystem resource type"
description: "Represents findings for an AWS authorization system."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# awsAuthorizationSystem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents findings for an AWS authorization system.

Inherits from [authorizationSystem](../resources/authorizationsystem.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsAuthorizationSystems](../api/awsauthorizationsystem-list.md)|[awsAuthorizationSystem](../resources/awsauthorizationsystem.md) collection|Get a list of the [awsAuthorizationSystem](../resources/awsauthorizationsystem.md) objects and their properties.|
|[Get awsAuthorizationSystem](../api/awsauthorizationsystem-get.md)|[awsAuthorizationSystem](../resources/awsauthorizationsystem.md)|Read the properties and relationships of an [awsAuthorizationSystem](../resources/awsauthorizationsystem.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|associatedIdentities|[awsAssociatedIdentities](../resources/awsassociatedidentities.md)|Identities in the authorization system.|
|authorizationSystemId|String|Authorization system ID onboarded to a tenant from a customer cloud environment. Supports `$filter`, `orderby`. Inherited from [authorizationSystem](../resources/authorizationsystem.md).|
|authorizationSystemName|String|Name of the authorization system detected after a collection. Supports `$filter`, `orderby`. Inherited from [authorizationSystem](../resources/authorizationsystem.md).|
|authorizationSystemType|String|Authorization System Type of this authorizationSystem. Supports `$filter`. Inherited from [authorizationSystem](../resources/authorizationsystem.md).|
|id|String| Unique Id of the Authorization System. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|actions|[awsAuthorizationSystemTypeAction](../resources/awsauthorizationsystemtypeaction.md) collection|List of actions for service in authorization system.|
|dataCollectionInfo|[dataCollectionInfo](../resources/datacollectioninfo.md)|Used to expose data collection status of this authorizationSystem. Inherited from [microsoft.graph.authorizationSystem](../resources/authorizationsystem.md)|
|policies|[awsPolicy](../resources/awspolicy.md) collection|Policies associated with the authorization system type.|
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

