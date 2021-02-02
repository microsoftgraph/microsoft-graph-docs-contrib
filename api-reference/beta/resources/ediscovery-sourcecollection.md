---
title: "sourceCollection resource type"
description: "Represents an eDiscovery collection - commonly known as a search"
author: "mahage-msft"
localization_priority: Normal
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# sourceCollection resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an eDiscovery collection - commonly known as a search.  See [Collect data for a case in Advanced eDiscovery](https://docs.microsoft.com/microsoft-365/compliance/collecting-data-for-ediscovery) to learn more.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List sourceCollections](../api/ediscovery-case-list-sourcecollections.md)|[microsoft.graph.ediscovery.sourceCollection](../resources/ediscovery-sourcecollection.md) collection|Get a list of the [microsoft.graph.ediscovery.sourceCollection](../resources/ediscovery-sourcecollection.md) objects and their properties.|
|[Create sourceCollection](../api/ediscovery-case-post-sourcecollections.md)|[microsoft.graph.ediscovery.sourceCollection](../resources/ediscovery-sourcecollection.md)|Create a new [microsoft.graph.ediscovery.sourceCollection](../resources/ediscovery-sourcecollection.md) object.|
|[Get sourceCollection](../api/ediscovery-sourcecollection-get.md)|[microsoft.graph.ediscovery.sourceCollection](../resources/ediscovery-sourcecollection.md)|Read the properties and relationships of a [microsoft.graph.ediscovery.sourceCollection](../resources/ediscovery-sourcecollection.md) object.|
|[Update sourceCollection](../api/ediscovery-sourcecollection-update.md)|[microsoft.graph.ediscovery.sourceCollection](../resources/ediscovery-sourcecollection.md)|Update the properties of a [microsoft.graph.ediscovery.sourceCollection](../resources/ediscovery-sourcecollection.md) object.|
|[Delete sourceCollection](../api/ediscovery-sourcecollection-delete.md)|None|Deletes a [microsoft.graph.ediscovery.sourceCollection](../resources/ediscovery-sourcecollection.md) object.|
|[Estimate Statistics](../api/ediscovery-sourcecollection-estimatestatistics.md)|None|Estimates the count and size of items that could be collected - Added to a review set.|
|[List additionalSources](../api/ediscovery-sourcecollection-list-additionalsources.md)|[dataSource](../resources/ediscovery-datasource.md) collection|Get the dataSource resources from the additionalSources navigation property.|
|[List custodianSources](../api/ediscovery-sourcecollection-list-custodiansources.md)|[dataSource](../resources/ediscovery-datasource.md) collection|Get the dataSource resources from the custodianSources navigation property.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|contentQuery|String|The query string in KQL (Keyword Query Language) query. For details, see [Keyword queries and search conditions for Content Search and eDiscovery](https://docs.microsoft.com/microsoft-365/compliance/keyword-queries-and-search-conditions).  You can refine searches by using fields paired with values; for example, *subject:"Quarterly Financials" AND Date>=06/01/2016 AND Date<=07/01/2016*|
|createdBy|[identitySet](../resources/identityset.md)|The user who created the **sourceCollection**.|
|createdDateTime|DateTimeOffset|The date and time the **sourceCollection** was created.|
|description|String|The description of the **sourceCollection**|
|displayName|String|The display name of the **sourceCollection**|
|id|String| The ID for the **sourceCollection**. Read-only. |
|lastModifiedBy|[identitySet](../resources/identityset.md)|The last user who modified the **sourceCollection**.|
|lastModifiedDateTime|DateTimeOffset|The last date and time the **sourceCollection** was modified.|
|tenantSources|tenantSources|When specified, the collection will span across a service for an entire workload. Possible values are: `allMailboxes`, `allSites`.|

### tenantSources values

|Member|Description|
|:----|-----------|
|allMailboxes| Include all mailboxes in the collection. |
|allSites| Include all sites in the collection. |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|additionalSources|[dataSource](../resources/ediscovery-datasource.md) collection|Adds an additional source to the **sourceCollection**.|
|addToReviewSetOperation|[addToReviewSetOperation](../resources/ediscovery-addtoreviewsetoperation.md)|Adds the results of the **sourceCollection** to the specified **reviewSet**.|
|custodianSources|[dataSource](../resources/ediscovery-datasource.md) collection|**Custodian** sources that are included in the **sourceCollection**.|
|lastEstimateStatisticsOperation|[estimateStatisticsOperation](../resources/ediscovery-estimatestatisticsoperation.md)|The last estimate operation associated with the **sourceCollection**.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.sourceCollection",
  "baseType": "",
  "openType": false
}
-->

``` json
{
  "@odata.type": "#microsoft.graph.sourceCollection",
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
  "tenantSources": "String"
}
```
