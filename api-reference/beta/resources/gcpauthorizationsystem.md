---
title: "gcpAuthorizationSystem resource type"
description: "Represents a GCP authorization system."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# gcpAuthorizationSystem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a GCP authorization system.

Inherits from [authorizationSystem](../resources/authorizationsystem.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List gcpAuthorizationSystems](../api/gcpauthorizationsystem-list.md)|[gcpAuthorizationSystem](../resources/gcpauthorizationsystem.md) collection|Get a list of the [gcpAuthorizationSystem](../resources/gcpauthorizationsystem.md) objects and their properties.|
|[Get gcpAuthorizationSystem](../api/gcpauthorizationsystem-get.md)|[gcpAuthorizationSystem](../resources/gcpauthorizationsystem.md)|Read the properties and relationships of a [gcpAuthorizationSystem](../resources/gcpauthorizationsystem.md) object.|
|[List actions](../api/gcpauthorizationsystem-list-actions.md)|[gcpAuthorizationSystemTypeAction](../resources/gcpauthorizationsystemtypeaction.md) collection|Get the gcpAuthorizationSystemTypeAction resources from the actions navigation property.|
|[List dataCollectionInfo](../api/gcpauthorizationsystem-list-datacollectioninfo.md)|[dataCollectionInfo](../resources/datacollectioninfo.md) collection|Get the dataCollectionInfo resources from the dataCollectionInfo navigation property.|
|[List resources](../api/gcpauthorizationsystem-list-resources.md)|[gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md) collection|Get the gcpAuthorizationSystemResource resources from the resources navigation property.|
|[List roles](../api/gcpauthorizationsystem-list-roles.md)|[gcpRole](../resources/gcprole.md) collection|Get the gcpRole resources from the roles navigation property.|
|[List services](../api/gcpauthorizationsystem-list-services.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) collection|Get the authorizationSystemTypeService resources from the services navigation property.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|associatedIdentities|[gcpAssociatedIdentities](../resources/gcpassociatedidentities.md)|Identities in the authorization system.*|
|authorizationSystemId|String|Authorization system ID onboarded to a tenant from a customer cloud environment. Supports `$filter`, `orderby`. Inherited from [authorizationSystem](../resources/authorizationsystem.md).|
|authorizationSystemName|String|Name of the authorization system detected after a collection. Supports `$filter`, `orderby`. Inherited from [authorizationSystem](../resources/authorizationsystem.md).|
|authorizationSystemType|String|Authorization System Type of this authorizationSystem. Supports `$filter`. Inherited from [authorizationSystem](../resources/authorizationsystem.md).|
|id|String| Unique Id of the Authorization System. Inherited from [entity](../resources/entity.md).|


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

