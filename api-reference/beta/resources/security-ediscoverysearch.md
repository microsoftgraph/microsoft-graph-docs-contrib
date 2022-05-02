---
title: "ediscoverySearch resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# ediscoverySearch resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [search](../resources/security-search.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List ediscoverySearches](../api/security-ediscoverycase-list-searches.md)|[microsoft.graph.security.ediscoverySearch](../resources/security-ediscoverysearch.md) collection|Get a list of the [ediscoverySearch](../resources/security-ediscoverysearch.md) objects and their properties.|
|[Create ediscoverySearch](../api/security-ediscoverycase-post-searches.md)|[microsoft.graph.security.ediscoverySearch](../resources/security-ediscoverysearch.md)|Create a new [ediscoverySearch](../resources/security-ediscoverysearch.md) object.|
|[Get ediscoverySearch](../api/security-ediscoverysearch-get.md)|[microsoft.graph.security.ediscoverySearch](../resources/security-ediscoverysearch.md)|Read the properties and relationships of an [ediscoverySearch](../resources/security-ediscoverysearch.md) object.|
|[Update ediscoverySearch](../api/security-ediscoverysearch-update.md)|[microsoft.graph.security.ediscoverySearch](../resources/security-ediscoverysearch.md)|Update the properties of an [ediscoverySearch](../resources/security-ediscoverysearch.md) object.|
|[Delete ediscoverySearch](../api/security-ediscoverycase-delete-searches.md)|None|Deletes an [ediscoverySearch](../resources/security-ediscoverysearch.md) object.|
|[estimateStatistics](../api/security-ediscoverysearch-estimatestatistics.md)|None|**TODO: Add Description**|
|[purgeData](../api/security-ediscoverysearch-purgedata.md)|None|**TODO: Add Description**|
|[List additionalSources](../api/security-ediscoverysearch-list-custodiansources.md)|[microsoft.graph.security.dataSource](../resources/security-datasource.md) collection|Get the dataSource resources from the additionalSources navigation property.|
|[Create dataSource](../api/security-ediscoverysearch-post-additionalsources.md)|[microsoft.graph.security.dataSource](../resources/security-datasource.md)|Create a new dataSource object.|
|[List ediscoveryAddToReviewSetOperation](../api/security-ediscoverysearch-list-addtoreviewsetoperation.md)|[microsoft.graph.security.ediscoveryAddToReviewSetOperation](../resources/security-ediscoveryaddtoreviewsetoperation.md) collection|Get the ediscoveryAddToReviewSetOperation resources from the addToReviewSetOperation navigation property.|
|[Add ediscoveryAddToReviewSetOperation](../api/security-ediscoverysearch-post-addtoreviewsetoperation.md)|[microsoft.graph.security.ediscoveryAddToReviewSetOperation](../resources/security-ediscoveryaddtoreviewsetoperation.md)|Add addToReviewSetOperation by posting to the addToReviewSetOperation collection.|
|[Remove ediscoveryAddToReviewSetOperation](../api/security-ediscoverysearch-delete-addtoreviewsetoperation.md)|None|Remove an [ediscoveryAddToReviewSetOperation](../resources/security-ediscoveryaddtoreviewsetoperation.md) object.|
|[List custodianSources](../api/security-ediscoverysearch-list-custodiansources.md)|[microsoft.graph.security.dataSource](../resources/security-datasource.md) collection|Get the dataSource resources from the custodianSources navigation property.|
|[Add dataSource](../api/security-ediscoverysearch-post-custodiansources.md)|[microsoft.graph.security.dataSource](../resources/security-datasource.md)|Add custodianSources by posting to the custodianSources collection.|
|[Remove custodianSources](../api/security-ediscoverysearch-delete-custodiansources.md)|None|Remove a [dataSource](../resources/security-datasource.md) object.|
|[List ediscoveryEstimateOperation](../api/security-ediscoverysearch-list-lastestimatestatisticsoperation.md)|[microsoft.graph.security.ediscoveryEstimateOperation](../resources/security-ediscoveryestimateoperation.md) collection|Get the ediscoveryEstimateOperation resources from the lastEstimateStatisticsOperation navigation property.|
|[Add ediscoveryEstimateOperation](../api/security-ediscoverysearch-post-lastestimatestatisticsoperation.md)|[microsoft.graph.security.ediscoveryEstimateOperation](../resources/security-ediscoveryestimateoperation.md)|Add lastEstimateStatisticsOperation by posting to the lastEstimateStatisticsOperation collection.|
|[Remove ediscoveryEstimateOperation](../api/security-ediscoverysearch-delete-lastestimatestatisticsoperation.md)|None|Remove an [ediscoveryEstimateOperation](../resources/security-ediscoveryestimateoperation.md) object.|
|[List noncustodialSources](../api/security-ediscoverysearch-list-noncustodialsources.md)|[microsoft.graph.security.ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) collection|Get the ediscoveryNoncustodialDataSource resources from the noncustodialSources navigation property.|
|[Add ediscoveryNoncustodialDataSource](../api/security-ediscoverysearch-post-noncustodialsources.md)|[microsoft.graph.security.ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md)|Add noncustodialSources by posting to the noncustodialSources collection.|
|[Remove noncustodialSources](../api/security-ediscoverysearch-delete-noncustodialsources.md)|None|Remove an [ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contentQuery|String|**TODO: Add Description** Inherited from [search](../resources/security-search.md).|
|createdBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [search](../resources/security-search.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [search](../resources/security-search.md).|
|dataSourceScopes|dataSourceScopes|**TODO: Add Description**.The possible values are: `none`, `allTenantMailboxes`, `allTenantSites`, `allCaseCustodians`, `allCaseNoncustodialDataSources`, `unknownFutureValue`.|
|description|String|**TODO: Add Description** Inherited from [search](../resources/security-search.md).|
|displayName|String|**TODO: Add Description** Inherited from [search](../resources/security-search.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|lastModifiedBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [search](../resources/security-search.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [search](../resources/security-search.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|additionalSources|[microsoft.graph.security.dataSource](../resources/security-datasource.md) collection|**TODO: Add Description**|
|addToReviewSetOperation|[ediscoveryAddToReviewSetOperation](../resources/security-ediscoveryaddtoreviewsetoperation.md)|**TODO: Add Description**|
|custodianSources|[microsoft.graph.security.dataSource](../resources/security-datasource.md) collection|**TODO: Add Description**|
|lastEstimateStatisticsOperation|[ediscoveryEstimateOperation](../resources/security-ediscoveryestimateoperation.md)|**TODO: Add Description**|
|noncustodialSources|[microsoft.graph.security.ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoverySearch",
  "baseType": "microsoft.graph.security.search",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ediscoverySearch",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "lastModifiedBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "contentQuery": "String",
  "dataSourceScopes": "String"
}
```

