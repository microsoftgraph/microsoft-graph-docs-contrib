---
title: "dataCollectionInfo resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# dataCollectionInfo resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List dataCollectionInfoes](../api/authorizationsystem-list-datacollectioninfo.md)|[dataCollectionInfo](../resources/datacollectioninfo.md) collection|Get a list of the [dataCollectionInfo](../resources/datacollectioninfo.md) objects and their properties.|
|[Create dataCollectionInfo](../api/authorizationsystem-post-datacollectioninfo.md)|[dataCollectionInfo](../resources/datacollectioninfo.md)|Create a new [dataCollectionInfo](../resources/datacollectioninfo.md) object.|
|[Get dataCollectionInfo](../api/datacollectioninfo-get.md)|[dataCollectionInfo](../resources/datacollectioninfo.md)|Read the properties and relationships of a [dataCollectionInfo](../resources/datacollectioninfo.md) object.|
|[Update dataCollectionInfo](../api/datacollectioninfo-update.md)|[dataCollectionInfo](../resources/datacollectioninfo.md)|Update the properties of a [dataCollectionInfo](../resources/datacollectioninfo.md) object.|
|[Delete dataCollectionInfo](../api/authorizationsystem-delete-datacollectioninfo.md)|None|Delete a [dataCollectionInfo](../resources/datacollectioninfo.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|entitlements|[entitlementsDataCollectionInfo](../resources/entitlementsdatacollectioninfo.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.dataCollectionInfo",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.dataCollectionInfo",
  "id": "String (identifier)",
  "entitlements": {
    "@odata.type": "microsoft.graph.entitlementsDataCollectionInfo"
  }
}
```

