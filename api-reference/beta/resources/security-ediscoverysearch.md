---
title: "ediscoverySearch resource type"
description: "Represents an eDiscovery search."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# ediscoverySearch resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an eDiscovery search. For details, see [Collect data for a case in eDiscovery (Premium)](/microsoft-365/compliance/collecting-data-for-ediscovery).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List ediscoverySearches](../api/security-ediscoverycase-list-searches.md)|[microsoft.graph.security.ediscoverySearch](../resources/security-ediscoverysearch.md) collection|Get a list of the [ediscoverySearch](../resources/security-ediscoverysearch.md) objects and their properties.|
|[Create ediscoverySearch](../api/security-ediscoverycase-post-searches.md)|[microsoft.graph.security.ediscoverySearch](../resources/security-ediscoverysearch.md)|Create a new [ediscoverySearch](../resources/security-ediscoverysearch.md) object.|
|[Get ediscoverySearch](../api/security-ediscoverysearch-get.md)|[microsoft.graph.security.ediscoverySearch](../resources/security-ediscoverysearch.md)|Read the properties and relationships of an [ediscoverySearch](../resources/security-ediscoverysearch.md) object.|
|[Update ediscoverySearch](../api/security-ediscoverysearch-update.md)|[microsoft.graph.security.ediscoverySearch](../resources/security-ediscoverysearch.md)|Update the properties of an [ediscoverySearch](../resources/security-ediscoverysearch.md) object.|
|[Delete ediscoverySearch](../api/security-ediscoverycase-delete-searches.md)|None|Delete an [microsoft.graph.security.ediscoverySearch](../resources/security-ediscoverysearch.md) object.|
|[estimateStatistics](../api/security-ediscoverysearch-estimatestatistics.md)|None|Run an estimate statistics operation on the data contained in the eDiscovery search.|
|[purgeData](../api/security-ediscoverysearch-purgedata.md)|None|Run a purge data operation on the Teams data contained in the eDiscovery search.|
|[List additionalSources](../api/security-ediscoverysearch-list-additionalsources.md)|[microsoft.graph.security.dataSource](../resources/security-datasource.md) collection|Get the list of [additional sources](../resources/security-datasource.md) associated with an [eDiscovery search](../resources/security-ediscoverysearch.md).|
|[Add additionalSources](../api/security-ediscoverysearch-post-additionalsources.md)|[microsoft.graph.security.dataSource](../resources/security-datasource.md)|Create a new [additional source](../resources/security-datasource.md) associated with an [eDiscovery search](../resources/security-ediscoverysearch.md).|
|[List ediscoveryEstimateOperation](../api/security-ediscoverysearch-list-lastestimatestatisticsoperation.md)|[microsoft.graph.security.ediscoveryEstimateOperation](../resources/security-ediscoveryestimateoperation.md) collection|Get the last [ediscoveryEstimateOperation](../resources/security-ediscoveryestimateoperation.md) objects and their properties.|
|[List custodianSources](../api/security-ediscoverysearch-list-custodiansources.md)|[microsoft.graph.security.dataSource](../resources/security-datasource.md) collection|Get the list of custodial data sources associated with an [eDiscovery search](../resources/security-ediscoverysearch.md).|
|[Add custodianSources](../api/security-ediscoverysearch-post-custodiansources.md)|[microsoft.graph.security.dataSource](../resources/security-datasource.md)|Create a new custodian source associated with an [eDiscovery search](../resources/security-ediscoverysearch.md).|
|[Remove custodianSources](../api/security-ediscoverysearch-delete-custodiansources.md)|None|Remove a [microsoft.graph.security.dataSource](../resources/security-datasource.md) object.|
|[List noncustodialSources](../api/security-ediscoverysearch-list-noncustodialsources.md)|[microsoft.graph.security.ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) collection|Get the list of non-custodialSources associated with an [eDiscovery search](../resources/security-ediscoverysearch.md).|
|[Add noncustodialSources](../api/security-ediscoverysearch-post-noncustodialsources.md)|[microsoft.graph.security.ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md)|Create a new non-custodial source associated with an [eDiscovery search](../resources/security-ediscoverysearch.md).|
|[Remove noncustodialSources](../api/security-ediscoverysearch-delete-noncustodialsources.md)|None|Remove an [microsoft.graph.security.ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|contentQuery|String|The query string in KQL (Keyword Query Language) query. For details, see [Keyword queries and search conditions for Content Search and eDiscovery](/microsoft-365/compliance/keyword-queries-and-search-conditions). You can refine searches by using fields paired with values; for example, *subject:"Quarterly Financials" AND Date>=06/01/2016 AND Date<=07/01/2016*.|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the **eDiscovery search**.|
|createdDateTime|DateTimeOffset|The date and time the **eDiscovery search** was created.|
|dataSourceScopes|microsoft.graph.security.dataSourceScopes|When specified, the collection will span across a service for an entire workload. Possible values are: `none`, `allTenantMailboxes`, `allTenantSites`, `allCaseCustodians`, `allCaseNoncustodialDataSources`.|
|description|String|The description of the **eDiscovery search**.|
|displayName|String|The display name of the **eDiscovery search**.|
|id|String| The ID for the **eDiscovery search**. Read-only. |
|lastModifiedBy|[identitySet](../resources/identityset.md)|The last user who modified the **eDiscovery search**.|
|lastModifiedDateTime|DateTimeOffset|The last date and time the **eDiscovery search** was modified.|

### dataSourceScopes values

|Member|Description|
|:----|-----------|
|none|Do not specify any scopes - locations would be referenced separately.|
|allTenantMailboxes|Include all tenant mailboxes in the **eDiscovery search**.|
|allTenantSites|Include all tenant sites in the **eDiscovery search**.|
|allCaseCustodians|Include all custodian locations in the **eDiscovery search**.|
|allCaseNoncustodialDataSources|Include all non-custodial data sources in the **eDiscovery search**.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|additionalSources|[microsoft.graph.security.dataSource](../resources/security-datasource.md) collection|Adds an additional source to the **eDiscovery search**.|
|addToReviewSetOperation|[microsoft.graph.security.ediscoveryAddToReviewSetOperation](../resources/security-ediscoveryaddtoreviewsetoperation.md)|Adds the results of the **eDiscovery search** to the specified **reviewSet**.|
|custodianSources|[microsoft.graph.security.dataSource](../resources/security-datasource.md) collection|**Custodian** sources that are included in the **eDiscovery search**.|
|lastEstimateStatisticsOperation|[microsoft.graph.security.ediscoveryEstimateOperation](../resources/security-ediscoveryestimateoperation.md)|The last estimate operation associated with the **eDiscovery search**.|
|noncustodialSources|[microsoft.graph.security.ediscoveryNoncustodialDataSource](../resources/security-ediscoverynoncustodialdatasource.md) collection|**noncustodialDataSource** sources that are included in the **eDiscovery search**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoverySearch",
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