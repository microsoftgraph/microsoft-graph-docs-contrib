---
title: "azureAuthorizationSystem resource type"
description: "Represents findings for an Azure authorization system."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: resourcePageType
---

# azureAuthorizationSystem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents findings for an Azure authorization system.

Inherits from [authorizationSystem](../resources/authorizationsystem.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List azureAuthorizationSystems](../api/azureauthorizationsystem-list.md)|[azureAuthorizationSystem](../resources/azureauthorizationsystem.md) collection|Get a list of the [azureAuthorizationSystem](../resources/azureauthorizationsystem.md) objects and their properties.|
|[Get azureAuthorizationSystem](../api/azureauthorizationsystem-get.md)|[azureAuthorizationSystem](../resources/azureauthorizationsystem.md)|Read the properties and relationships of an [azureAuthorizationSystem](../resources/azureauthorizationsystem.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|associatedIdentities|[azureAssociatedIdentities](../resources/azureassociatedidentities.md)|Identities in the authorization system.|
|authorizationSystemId|String|Authorization system ID onboarded to a tenant from a customer cloud environment. Supports `$filter`, `orderby`. Inherited from [authorizationSystem](../resources/authorizationsystem.md).|
|authorizationSystemName|String|Name of the authorization system detected after a collection. Supports `$filter`, `orderby`. Inherited from [authorizationSystem](../resources/authorizationsystem.md).|
|authorizationSystemType|String|Authorization System Type of this authorizationSystem. Supports `$filter`. Inherited from [authorizationSystem](../resources/authorizationsystem.md).|
|id|String| Unique Id of the Authorization System. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|actions|[azureAuthorizationSystemTypeAction](../resources/azureauthorizationsystemtypeaction.md) collection|List of actions for service in authorization system.|
|dataCollectionInfo|[dataCollectionInfo](../resources/datacollectioninfo.md)|Used to expose data collection status of this authorizationSystem. Inherited from [microsoft.graph.authorizationSystem](../resources/authorizationsystem.md)|
|resources|[azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md) collection|Resources associated with the authorization system type.|
|roleDefinitions|[azureRoleDefinition](../resources/azureroledefinition.md) collection|Roles associated with the authorization system type.|
|services|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) collection|Services associated with the authorization system type.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.azureAuthorizationSystem",
  "baseType": "microsoft.graph.authorizationSystem",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.azureAuthorizationSystem",
  "id": "String (identifier)",
  "authorizationSystemId": "String",
  "authorizationSystemName": "String",
  "authorizationSystemType": "String"
}
```

