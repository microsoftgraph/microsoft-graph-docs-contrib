---
title: "gcpAuthorizationSystem resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# gcpAuthorizationSystem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [authorizationSystem](../resources/authorizationsystem.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List gcpAuthorizationSystems](../api/gcpauthorizationsystem-list.md)|[gcpAuthorizationSystem](../resources/gcpauthorizationsystem.md) collection|Get a list of the [gcpAuthorizationSystem](../resources/gcpauthorizationsystem.md) objects and their properties.|
|[Get gcpAuthorizationSystem](../api/gcpauthorizationsystem-get.md)|[gcpAuthorizationSystem](../resources/gcpauthorizationsystem.md)|Read the properties and relationships of a [gcpAuthorizationSystem](../resources/gcpauthorizationsystem.md) object.|
|[Update gcpAuthorizationSystem](../api/gcpauthorizationsystem-update.md)|[gcpAuthorizationSystem](../resources/gcpauthorizationsystem.md)|Update the properties of a [gcpAuthorizationSystem](../resources/gcpauthorizationsystem.md) object.|
|[Delete gcpAuthorizationSystem](../api/gcpauthorizationsystem-delete.md)|None|Delete a [gcpAuthorizationSystem](../resources/gcpauthorizationsystem.md) object.|
|[List actions](../api/gcpauthorizationsystem-list-actions.md)|[gcpAuthorizationSystemTypeAction](../resources/gcpauthorizationsystemtypeaction.md) collection|Get the gcpAuthorizationSystemTypeAction resources from the actions navigation property.|
|[Create gcpAuthorizationSystemTypeAction](../api/gcpauthorizationsystem-post-actions.md)|[gcpAuthorizationSystemTypeAction](../resources/gcpauthorizationsystemtypeaction.md)|Create a new gcpAuthorizationSystemTypeAction object.|
|[List dataCollectionInfo](../api/gcpauthorizationsystem-list-datacollectioninfo.md)|[dataCollectionInfo](../resources/datacollectioninfo.md) collection|Get the dataCollectionInfo resources from the dataCollectionInfo navigation property.|
|[Create dataCollectionInfo](../api/gcpauthorizationsystem-post-datacollectioninfo.md)|[dataCollectionInfo](../resources/datacollectioninfo.md)|Create a new dataCollectionInfo object.|
|[List resources](../api/gcpauthorizationsystem-list-resources.md)|[gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md) collection|Get the gcpAuthorizationSystemResource resources from the resources navigation property.|
|[Create gcpAuthorizationSystemResource](../api/gcpauthorizationsystem-post-resources.md)|[gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md)|Create a new gcpAuthorizationSystemResource object.|
|[List roles](../api/gcpauthorizationsystem-list-roles.md)|[gcpRole](../resources/gcprole.md) collection|Get the gcpRole resources from the roles navigation property.|
|[Create gcpRole](../api/gcpauthorizationsystem-post-roles.md)|[gcpRole](../resources/gcprole.md)|Create a new gcpRole object.|
|[List services](../api/gcpauthorizationsystem-list-services.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) collection|Get the authorizationSystemTypeService resources from the services navigation property.|
|[Create authorizationSystemTypeService](../api/gcpauthorizationsystem-post-services.md)|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md)|Create a new authorizationSystemTypeService object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|associatedIdentities|[gcpAssociatedIdentities](../resources/gcpassociatedidentities.md)|**TODO: Add Description**|
|authorizationSystemId|String|**TODO: Add Description** Inherited from [authorizationSystem](../resources/authorizationsystem.md).|
|authorizationSystemName|String|**TODO: Add Description** Inherited from [authorizationSystem](../resources/authorizationsystem.md).|
|authorizationSystemType|String|**TODO: Add Description** Inherited from [authorizationSystem](../resources/authorizationsystem.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|actions|[gcpAuthorizationSystemTypeAction](../resources/gcpauthorizationsystemtypeaction.md) collection|**TODO: Add Description**|
|dataCollectionInfo|[dataCollectionInfo](../resources/datacollectioninfo.md)|**TODO: Add Description** Inherited from [microsoft.graph.authorizationSystem](../resources/authorizationsystem.md)|
|resources|[gcpAuthorizationSystemResource](../resources/gcpauthorizationsystemresource.md) collection|**TODO: Add Description**|
|roles|[gcpRole](../resources/gcprole.md) collection|**TODO: Add Description**|
|services|[authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) collection|**TODO: Add Description**|

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

