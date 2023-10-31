---
title: "awsAuthorizationSystem resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# awsAuthorizationSystem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [authorizationSystem](../resources/authorizationsystem.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List awsAuthorizationSystems](../api/awsauthorizationsystem-list.md)|[awsAuthorizationSystem](../resources/awsauthorizationsystem.md) collection|Get a list of the [awsAuthorizationSystem](../resources/awsauthorizationsystem.md) objects and their properties.|
|[Get awsAuthorizationSystem](../api/awsauthorizationsystem-get.md)|[awsAuthorizationSystem](../resources/awsauthorizationsystem.md)|Read the properties and relationships of an [awsAuthorizationSystem](../resources/awsauthorizationsystem.md) object.|
|[Update awsAuthorizationSystem](../api/awsauthorizationsystem-update.md)|[awsAuthorizationSystem](../resources/awsauthorizationsystem.md)|Update the properties of an [awsAuthorizationSystem](../resources/awsauthorizationsystem.md) object.|
|[Delete awsAuthorizationSystem](../api/awsauthorizationsystem-delete.md)|None|Delete an [awsAuthorizationSystem](../resources/awsauthorizationsystem.md) object.|
|[List actions](../api/awsauthorizationsystem-list-actions.md)|[awsAuthorizationSystemTypeAction](../resources/awsauthorizationsystemtypeaction.md) collection|Get the awsAuthorizationSystemTypeAction resources from the actions navigation property.|
|[Create awsAuthorizationSystemTypeAction](../api/awsauthorizationsystem-post-actions.md)|[awsAuthorizationSystemTypeAction](../resources/awsauthorizationsystemtypeaction.md)|Create a new awsAuthorizationSystemTypeAction object.|
|[List dataCollectionInfo](../api/awsauthorizationsystem-list-datacollectioninfo.md)|[dataCollectionInfo](../resources/datacollectioninfo.md) collection|Get the dataCollectionInfo resources from the dataCollectionInfo navigation property.|
|[Create dataCollectionInfo](../api/awsauthorizationsystem-post-datacollectioninfo.md)|[dataCollectionInfo](../resources/datacollectioninfo.md)|Create a new dataCollectionInfo object.|
|[List policies](../api/awsauthorizationsystem-list-policies.md)|[awsPolicy](../resources/awspolicy.md) collection|Get the awsPolicy resources from the policies navigation property.|
|[Create awsPolicy](../api/awsauthorizationsystem-post-policies.md)|[awsPolicy](../resources/awspolicy.md)|Create a new awsPolicy object.|
|[List resources](../api/awsauthorizationsystem-list-resources.md)|[awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) collection|Get the awsAuthorizationSystemResource resources from the resources navigation property.|
|[Create awsAuthorizationSystemResource](../api/awsauthorizationsystem-post-resources.md)|[awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md)|Create a new awsAuthorizationSystemResource object.|
|[List services](../api/awsauthorizationsystem-list-services.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) collection|Get the authorizationSystemTypeService resources from the services navigation property.|
|[Create authorizationSystemTypeService](../api/awsauthorizationsystem-post-services.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md)|Create a new authorizationSystemTypeService object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|associatedIdentities|[awsAssociatedIdentities](../resources/awsassociatedidentities.md)|**TODO: Add Description**|
|authorizationSystemId|String|**TODO: Add Description** Inherited from [authorizationSystem](../resources/authorizationsystem.md).|
|authorizationSystemName|String|**TODO: Add Description** Inherited from [authorizationSystem](../resources/authorizationsystem.md).|
|authorizationSystemType|String|**TODO: Add Description** Inherited from [authorizationSystem](../resources/authorizationsystem.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|actions|[awsAuthorizationSystemTypeAction](../resources/awsauthorizationsystemtypeaction.md) collection|**TODO: Add Description**|
|dataCollectionInfo|[dataCollectionInfo](../resources/datacollectioninfo.md)|**TODO: Add Description** Inherited from [microsoft.graph.authorizationSystem](../resources/authorizationsystem.md)|
|policies|[awsPolicy](../resources/awspolicy.md) collection|**TODO: Add Description**|
|resources|[awsAuthorizationSystemResource](../resources/awsauthorizationsystemresource.md) collection|**TODO: Add Description**|
|services|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) collection|**TODO: Add Description**|

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
  "authorizationSystemType": "String",
  "associatedIdentities": {
    "@odata.type": "microsoft.graph.awsAssociatedIdentities"
  }
}
```

