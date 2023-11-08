---
title: "azureAuthorizationSystem resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# azureAuthorizationSystem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [authorizationSystem](../resources/authorizationsystem.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List azureAuthorizationSystems](../api/azureauthorizationsystem-list.md)|[azureAuthorizationSystem](../resources/azureauthorizationsystem.md) collection|Get a list of the [azureAuthorizationSystem](../resources/azureauthorizationsystem.md) objects and their properties.|
|[Get azureAuthorizationSystem](../api/azureauthorizationsystem-get.md)|[azureAuthorizationSystem](../resources/azureauthorizationsystem.md)|Read the properties and relationships of an [azureAuthorizationSystem](../resources/azureauthorizationsystem.md) object.|
|[Update azureAuthorizationSystem](../api/azureauthorizationsystem-update.md)|[azureAuthorizationSystem](../resources/azureauthorizationsystem.md)|Update the properties of an [azureAuthorizationSystem](../resources/azureauthorizationsystem.md) object.|
|[Delete azureAuthorizationSystem](../api/azureauthorizationsystem-delete.md)|None|Delete an [azureAuthorizationSystem](../resources/azureauthorizationsystem.md) object.|
|[List actions](../api/azureauthorizationsystem-list-actions.md)|[azureAuthorizationSystemTypeAction](../resources/azureauthorizationsystemtypeaction.md) collection|Get the azureAuthorizationSystemTypeAction resources from the actions navigation property.|
|[Create azureAuthorizationSystemTypeAction](../api/azureauthorizationsystem-post-actions.md)|[azureAuthorizationSystemTypeAction](../resources/azureauthorizationsystemtypeaction.md)|Create a new azureAuthorizationSystemTypeAction object.|
|[List dataCollectionInfo](../api/azureauthorizationsystem-list-datacollectioninfo.md)|[dataCollectionInfo](../resources/datacollectioninfo.md) collection|Get the dataCollectionInfo resources from the dataCollectionInfo navigation property.|
|[Create dataCollectionInfo](../api/azureauthorizationsystem-post-datacollectioninfo.md)|[dataCollectionInfo](../resources/datacollectioninfo.md)|Create a new dataCollectionInfo object.|
|[List resources](../api/azureauthorizationsystem-list-resources.md)|[azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md) collection|Get the azureAuthorizationSystemResource resources from the resources navigation property.|
|[Create azureAuthorizationSystemResource](../api/azureauthorizationsystem-post-resources.md)|[azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md)|Create a new azureAuthorizationSystemResource object.|
|[List roleDefinitions](../api/azureauthorizationsystem-list-roledefinitions.md)|[azureRoleDefinition](../resources/azureroledefinition.md) collection|Get the azureRoleDefinition resources from the roleDefinitions navigation property.|
|[Create azureRoleDefinition](../api/azureauthorizationsystem-post-roledefinitions.md)|[azureRoleDefinition](../resources/azureroledefinition.md)|Create a new azureRoleDefinition object.|
|[List services](../api/azureauthorizationsystem-list-services.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) collection|Get the authorizationSystemTypeService resources from the services navigation property.|
|[Create authorizationSystemTypeService](../api/azureauthorizationsystem-post-services.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md)|Create a new authorizationSystemTypeService object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|associatedIdentities|[azureAssociatedIdentities](../resources/azureassociatedidentities.md)|**TODO: Add Description**|
|authorizationSystemId|String|**TODO: Add Description** Inherited from [authorizationSystem](../resources/authorizationsystem.md).|
|authorizationSystemName|String|**TODO: Add Description** Inherited from [authorizationSystem](../resources/authorizationsystem.md).|
|authorizationSystemType|String|**TODO: Add Description** Inherited from [authorizationSystem](../resources/authorizationsystem.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|actions|[azureAuthorizationSystemTypeAction](../resources/azureauthorizationsystemtypeaction.md) collection|**TODO: Add Description**|
|dataCollectionInfo|[dataCollectionInfo](../resources/datacollectioninfo.md)|**TODO: Add Description** Inherited from [microsoft.graph.authorizationSystem](../resources/authorizationsystem.md)|
|resources|[azureAuthorizationSystemResource](../resources/azureauthorizationsystemresource.md) collection|**TODO: Add Description**|
|roleDefinitions|[azureRoleDefinition](../resources/azureroledefinition.md) collection|**TODO: Add Description**|
|services|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) collection|**TODO: Add Description**|

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

