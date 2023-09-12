---
title: "authorizationSystem resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# authorizationSystem resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List authorizationSystems](../api/externalconnectors-external-list-authorizationsystems.md)|[authorizationSystem](../resources/authorizationsystem.md) collection|Get a list of the [authorizationSystem](../resources/authorizationsystem.md) objects and their properties.|
|[Create authorizationSystem](../api/externalconnectors-external-post-authorizationsystems.md)|[authorizationSystem](../resources/authorizationsystem.md)|Create a new [authorizationSystem](../resources/authorizationsystem.md) object.|
|[Get authorizationSystem](../api/authorizationsystem-get.md)|[authorizationSystem](../resources/authorizationsystem.md)|Read the properties and relationships of an [authorizationSystem](../resources/authorizationsystem.md) object.|
|[Update authorizationSystem](../api/authorizationsystem-update.md)|[authorizationSystem](../resources/authorizationsystem.md)|Update the properties of an [authorizationSystem](../resources/authorizationsystem.md) object.|
|[Delete authorizationSystem](../api/externalconnectors-external-delete-authorizationsystems.md)|None|Delete an [authorizationSystem](../resources/authorizationsystem.md) object.|
|[List dataCollectionInfo](../api/authorizationsystem-list-datacollectioninfo.md)|[dataCollectionInfo](../resources/datacollectioninfo.md) collection|Get the dataCollectionInfo resources from the dataCollectionInfo navigation property.|
|[Create dataCollectionInfo](../api/authorizationsystem-post-datacollectioninfo.md)|[dataCollectionInfo](../resources/datacollectioninfo.md)|Create a new dataCollectionInfo object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|authorizationSystemId|String|**TODO: Add Description**|
|authorizationSystemName|String|**TODO: Add Description**|
|authorizationSystemType|String|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|dataCollectionInfo|[dataCollectionInfo](../resources/datacollectioninfo.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.authorizationSystem",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.authorizationSystem",
  "id": "String (identifier)",
  "authorizationSystemId": "String",
  "authorizationSystemName": "String",
  "authorizationSystemType": "String"
}
```

