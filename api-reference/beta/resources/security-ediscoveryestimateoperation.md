---
title: "ediscoveryEstimateOperation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# ediscoveryEstimateOperation resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [caseOperation](../resources/security-caseoperation.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List ediscoveryEstimateOperations](../api/security-ediscoverysearch-list-lastestimatestatisticsoperation.md)|[microsoft.graph.security.ediscoveryEstimateOperation](../resources/security-ediscoveryestimateoperation.md) collection|Get a list of the [ediscoveryEstimateOperation](../resources/security-ediscoveryestimateoperation.md) objects and their properties.|
|[Create ediscoveryEstimateOperation](../api/security-ediscoverysearch-post-lastestimatestatisticsoperation.md)|[microsoft.graph.security.ediscoveryEstimateOperation](../resources/security-ediscoveryestimateoperation.md)|Create a new [ediscoveryEstimateOperation](../resources/security-ediscoveryestimateoperation.md) object.|
|[Get ediscoveryEstimateOperation](../api/security-ediscoveryestimateoperation-get.md)|[microsoft.graph.security.ediscoveryEstimateOperation](../resources/security-ediscoveryestimateoperation.md)|Read the properties and relationships of an [ediscoveryEstimateOperation](../resources/security-ediscoveryestimateoperation.md) object.|
|[Update ediscoveryEstimateOperation](../api/security-ediscoveryestimateoperation-update.md)|[microsoft.graph.security.ediscoveryEstimateOperation](../resources/security-ediscoveryestimateoperation.md)|Update the properties of an [ediscoveryEstimateOperation](../resources/security-ediscoveryestimateoperation.md) object.|
|[Delete ediscoveryEstimateOperation](../api/security-ediscoverysearch-delete-lastestimatestatisticsoperation.md)|None|Deletes an [ediscoveryEstimateOperation](../resources/security-ediscoveryestimateoperation.md) object.|
|[List ediscoverySearch](../api/security-ediscoverycase-list-searches.md)|[microsoft.graph.security.ediscoverySearch](../resources/security-ediscoverysearch.md) collection|Get the ediscoverySearch resources from the search navigation property.|
|[Add ediscoverySearch](../api/security-ediscoveryestimateoperation-post-search.md)|[microsoft.graph.security.ediscoverySearch](../resources/security-ediscoverysearch.md)|Add search by posting to the search collection.|
|[Remove ediscoverySearch](../api/security-ediscoveryestimateoperation-delete-search.md)|None|Remove an [ediscoverySearch](../resources/security-ediscoverysearch.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|caseAction|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md).The possible values are: `contentExport`, `applyTags`, `convertToPdf`, `index`, `estimateStatistics`, `addToReviewSet`, `holdUpdate`, `unknownFutureValue`, `purgeData`. Note that you must use the `Prefer: include - unknown -enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `purgeData`.|
|completedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md).|
|createdBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|indexedItemCount|Int64|**TODO: Add Description**|
|indexedItemsSize|Int64|**TODO: Add Description**|
|mailboxCount|Int32|**TODO: Add Description**|
|percentProgress|Int32|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md).|
|resultInfo|[microsoft.graph.resultInfo](../resources/resultinfo.md)|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md).|
|siteCount|Int32|**TODO: Add Description**|
|status|caseOperationStatus|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md).The possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`, `unknownFutureValue`.|
|unindexedItemCount|Int64|**TODO: Add Description**|
|unindexedItemsSize|Int64|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|search|[ediscoverySearch](../resources/security-ediscoverysearch.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryEstimateOperation",
  "baseType": "microsoft.graph.security.caseOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ediscoveryEstimateOperation",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "completedDateTime": "String (timestamp)",
  "action": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "percentProgress": "Integer",
  "status": "String",
  "resultInfo": {
    "@odata.type": "microsoft.graph.resultInfo"
  },
  "indexedItemCount": "Integer",
  "indexedItemsSize": "Integer",
  "unindexedItemCount": "Integer",
  "unindexedItemsSize": "Integer",
  "mailboxCount": "Integer",
  "siteCount": "Integer"
}
```

