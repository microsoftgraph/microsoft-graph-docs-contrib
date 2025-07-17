---
title: "sourceCollection resource type"
description: "Represents an eDiscovery collection, commonly known as a search."
author: "mahage-msft"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: resourcePageType
ms.date: 06/19/2024
---

# sourceCollection resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an eDiscovery collection, commonly known as a search. For details, see [Collect data for a case in Advanced eDiscovery](/microsoft-365/compliance/collecting-data-for-ediscovery).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Add additional sources](../api/ediscovery-sourcecollection-post-additionalsources.md)|[microsoft.graph.ediscovery.dataSource](../resources/ediscovery-datasource.md) collection|Add an additional **dataSource** object to the source collection.|
|[Add custodian sources](../api/ediscovery-sourcecollection-post-custodiansources.md)|[microsoft.graph.ediscovery.dataSource](../resources/ediscovery-datasource.md) collection|Add a custodian **dataSource** object to the source collection.|
|[Add noncustodial source](../api/ediscovery-sourcecollection-post-noncustodialsources.md)|[microsoft.graph.ediscovery.noncustodialSource](../resources/ediscovery-noncustodialdatasource.md) collection|Add a noncustodial source **noncustodialSource** object to the source collection.|
|[List](../api/ediscovery-case-list-sourcecollections.md)|[microsoft.graph.ediscovery.sourceCollection](../resources/ediscovery-sourcecollection.md) collection|Get a list of the **sourceCollection** objects and their properties.|
|[Create](../api/ediscovery-case-post-sourcecollections.md)|[microsoft.graph.ediscovery.sourceCollection](../resources/ediscovery-sourcecollection.md)|Create a new **sourceCollection** object.|
|[Get](../api/ediscovery-sourcecollection-get.md)|[microsoft.graph.ediscovery.sourceCollection](../resources/ediscovery-sourcecollection.md)|Read the properties and relationships of a **sourceCollection** object.|
|[Update](../api/ediscovery-sourcecollection-update.md)|[microsoft.graph.ediscovery.sourceCollection](../resources/ediscovery-sourcecollection.md)|Update the properties of a **sourceCollection** object.|
|[Delete](../api/ediscovery-sourcecollection-delete.md)|None|Delete a **sourceCollection** object.|
|[Estimate statistics](../api/ediscovery-sourcecollection-estimatestatistics.md)|None|Run an estimate of the number of emails and documents in the source collection.|
|[List additional sources](../api/ediscovery-sourcecollection-list-additionalsources.md)|[microsoft.graph.ediscovery.dataSource](../resources/ediscovery-datasource.md) collection|Get a list of additional **dataSource** objects associated with a source collection.|
|[List custodian sources](../api/ediscovery-sourcecollection-list-custodiansources.md)|[microsoft.graph.ediscovery.dataSource](../resources/ediscovery-datasource.md) collection|Get a list of custodian **dataSource** objects associated with a source collection.|
|[List noncustodial sources](../api/ediscovery-sourcecollection-list-noncustodialsources.md)|[microsoft.graph.ediscovery.noncustodialSource](../resources/ediscovery-noncustodialdatasource.md) collection|Get a list of noncustodial sources **noncustodialSource** objects associated with a source collection.|
|[Purge data](../api/ediscovery-sourcecollection-purgedata.md)|None|Run a purge data operation on the Teams data contained in the source collection.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|contentQuery|String|The query string in KQL (Keyword Query Language) query. For details, see [Keyword queries and search conditions for Content Search and eDiscovery](/microsoft-365/compliance/keyword-queries-and-search-conditions). You can refine searches by using fields paired with values; for example, *subject:"Quarterly Financials" AND Date>=06/01/2016 AND Date<=07/01/2016*.|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the **sourceCollection**.|
|createdDateTime|DateTimeOffset|The date and time the **sourceCollection** was created.|
|dataSourceScopes|microsoft.graph.ediscovery.dataSourceScopes|When specified, the collection spans across a service for an entire workload. Possible values are: `none`, `allTenantMailboxes`, `allTenantSites`, `allCaseCustodians`, `allCaseNoncustodialDataSources`.|
|description|String|The description of the **sourceCollection**.|
|displayName|String|The display name of the **sourceCollection**.|
|id|String| The ID for the **sourceCollection**. Read-only. |
|lastModifiedBy|[identitySet](../resources/identityset.md)|The last user who modified the **sourceCollection**.|
|lastModifiedDateTime|DateTimeOffset|The last date and time the **sourceCollection** was modified.|

### dataSourceScopes values

|Member|Description|
|:----|-----------|
|none|Don't specify any scopes - locations would be referenced separately.|
|allTenantMailboxes|Include all tenant mailboxes in the **sourceCollection**.|
|allTenantSites|Include all tenant sites in the **sourceCollection**.|
|allCaseCustodians|Include all custodian locations in the **sourceCollection**.|
|allCaseNoncustodialDataSources|Include all noncustodial data sources in the **sourceCollection**.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|additionalSources|[microsoft.graph.ediscovery.dataSource](../resources/ediscovery-datasource.md) collection|Adds an additional source to the **sourceCollection**.|
|addToReviewSetOperation|[microsoft.graph.ediscovery.addToReviewSetOperation](../resources/ediscovery-addtoreviewsetoperation.md)|Adds the results of the **sourceCollection** to the specified **reviewSet**.|
|custodianSources|[microsoft.graph.ediscovery.dataSource](../resources/ediscovery-datasource.md) collection|**Custodian** sources that are included in the **sourceCollection**.|
|lastEstimateStatisticsOperation|[microsoft.graph.ediscovery.estimateStatisticsOperation](../resources/ediscovery-estimatestatisticsoperation.md)|The last estimate operation associated with the **sourceCollection**.|
|noncustodialSources|[microsoft.graph.ediscovery.noncustodialDataSource](../resources/ediscovery-noncustodialdatasource.md) collection|**noncustodialDataSource** sources that are included in the **sourceCollection**|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ediscovery.sourceCollection",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.sourceCollection",
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
