---
title: "ediscoveryNoncustodialDataSource resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# ediscoveryNoncustodialDataSource resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [dataSourceContainer](../resources/security-datasourcecontainer.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List ediscoveryNoncustodialDataSources](../api/security-ediscoverysearch-list-noncustodialsources.md)|[microsoft.graph.security.ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) collection|Get a list of the [ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) objects and their properties.|
|[Create ediscoveryNoncustodialDataSource](../api/security-ediscoverysearch-post-noncustodialsources.md)|[microsoft.graph.security.ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md)|Create a new [ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) object.|
|[Get ediscoveryNoncustodialDataSource](../api/security-ediscoverynoncustodialdatasource-get.md)|[microsoft.graph.security.ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md)|Read the properties and relationships of an [ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) object.|
|[Update ediscoveryNoncustodialDataSource](../api/security-ediscoverynoncustodialdatasource-update.md)|[microsoft.graph.security.ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md)|Update the properties of an [ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) object.|
|[Delete ediscoveryNoncustodialDataSource](../api/security-ediscoverysearch-delete-noncustodialsources.md)|None|Deletes an [ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) object.|
|[updateIndex](../api/security-ediscoverynoncustodialdatasource-updateindex.md)|None|**TODO: Add Description**|
|[release](../api/security-ediscoverynoncustodialdatasource-release.md)|None|**TODO: Add Description**|
|[applyHold](../api/security-ediscoverynoncustodialdatasource-applyhold.md)|None|**TODO: Add Description**|
|[applyHold](../api/security-ediscoverynoncustodialdatasource-applyhold.md)|None|**TODO: Add Description**|
|[removeHold](../api/security-ediscoverynoncustodialdatasource-removehold.md)|None|**TODO: Add Description**|
|[removeHold](../api/security-ediscoverynoncustodialdatasource-removehold.md)|None|**TODO: Add Description**|
|[List dataSource](../api/security-ediscoverysearch-list-custodiansources.md)|[microsoft.graph.security.dataSource](../resources/security-datasource.md) collection|Get the dataSource resources from the dataSource navigation property.|
|[Create dataSource](../api/security-ediscoverynoncustodialdatasource-post-datasource.md)|[microsoft.graph.security.dataSource](../resources/security-datasource.md)|Create a new dataSource object.|
|[List ediscoveryIndexOperation](../api/security-ediscoverycustodian-list-lastindexoperation.md)|[microsoft.graph.security.ediscoveryIndexOperation](../resources/security-ediscoveryindexoperation.md) collection|Get the ediscoveryIndexOperation resources from the lastIndexOperation navigation property.|
|[Add ediscoveryIndexOperation](../api/security-ediscoverynoncustodialdatasource-post-lastindexoperation.md)|[microsoft.graph.security.ediscoveryIndexOperation](../resources/security-ediscoveryindexoperation.md)|Add lastIndexOperation by posting to the lastIndexOperation collection.|
|[Remove ediscoveryIndexOperation](../api/security-ediscoverynoncustodialdatasource-delete-lastindexoperation.md)|None|Remove an [ediscoveryIndexOperation](../resources/security-ediscoveryindexoperation.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [dataSourceContainer](../resources/security-datasourcecontainer.md).|
|displayName|String|**TODO: Add Description** Inherited from [dataSourceContainer](../resources/security-datasourcecontainer.md).|
|holdStatus|dataSourceHoldStatus|**TODO: Add Description** Inherited from [dataSourceContainer](../resources/security-datasourcecontainer.md).The possible values are: `notApplied`, `applied`, `applying`, `removing`, `partial`, `unknownFutureValue`.|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [dataSourceContainer](../resources/security-datasourcecontainer.md).|
|releasedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [dataSourceContainer](../resources/security-datasourcecontainer.md).|
|status|dataSourceContainerStatus|**TODO: Add Description** Inherited from [dataSourceContainer](../resources/security-datasourcecontainer.md).The possible values are: `active`, `released`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|dataSource|[dataSource](../resources/security-datasource.md)|**TODO: Add Description**|
|lastIndexOperation|[ediscoveryIndexOperation](../resources/security-ediscoveryindexoperation.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryNoncustodialDataSource",
  "baseType": "microsoft.graph.security.dataSourceContainer",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ediscoveryNoncustodialDataSource",
  "id": "String (identifier)",
  "status": "String",
  "holdStatus": "String",
  "lastModifiedDateTime": "String (timestamp)",
  "releasedDateTime": "String (timestamp)",
  "displayName": "String",
  "createdDateTime": "String (timestamp)"
}
```

