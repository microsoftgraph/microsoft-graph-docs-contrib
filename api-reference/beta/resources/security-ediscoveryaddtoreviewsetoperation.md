---
title: "ediscoveryAddToReviewSetOperation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# ediscoveryAddToReviewSetOperation resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [caseOperation](../resources/security-caseoperation.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List ediscoveryAddToReviewSetOperations](../api/security-ediscoverysearch-list-addtoreviewsetoperation.md)|[microsoft.graph.security.ediscoveryAddToReviewSetOperation](../resources/security-ediscoveryaddtoreviewsetoperation.md) collection|Get a list of the [ediscoveryAddToReviewSetOperation](../resources/security-ediscoveryaddtoreviewsetoperation.md) objects and their properties.|
|[Create ediscoveryAddToReviewSetOperation](../api/security-ediscoverysearch-post-addtoreviewsetoperation.md)|[microsoft.graph.security.ediscoveryAddToReviewSetOperation](../resources/security-ediscoveryaddtoreviewsetoperation.md)|Create a new [ediscoveryAddToReviewSetOperation](../resources/security-ediscoveryaddtoreviewsetoperation.md) object.|
|[Get ediscoveryAddToReviewSetOperation](../api/security-ediscoveryaddtoreviewsetoperation-get.md)|[microsoft.graph.security.ediscoveryAddToReviewSetOperation](../resources/security-ediscoveryaddtoreviewsetoperation.md)|Read the properties and relationships of an [ediscoveryAddToReviewSetOperation](../resources/security-ediscoveryaddtoreviewsetoperation.md) object.|
|[Update ediscoveryAddToReviewSetOperation](../api/security-ediscoveryaddtoreviewsetoperation-update.md)|[microsoft.graph.security.ediscoveryAddToReviewSetOperation](../resources/security-ediscoveryaddtoreviewsetoperation.md)|Update the properties of an [ediscoveryAddToReviewSetOperation](../resources/security-ediscoveryaddtoreviewsetoperation.md) object.|
|[Delete ediscoveryAddToReviewSetOperation](../api/security-ediscoverysearch-delete-addtoreviewsetoperation.md)|None|Deletes an [ediscoveryAddToReviewSetOperation](../resources/security-ediscoveryaddtoreviewsetoperation.md) object.|
|[List ediscoveryReviewSet](../api/security-ediscoverycase-list-reviewsets.md)|[microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) collection|Get the ediscoveryReviewSet resources from the reviewSet navigation property.|
|[Add ediscoveryReviewSet](../api/security-ediscoveryaddtoreviewsetoperation-post-reviewset.md)|[microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md)|Add reviewSet by posting to the reviewSet collection.|
|[Remove ediscoveryReviewSet](../api/security-ediscoveryaddtoreviewsetoperation-delete-reviewset.md)|None|Remove an [ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) object.|
|[List ediscoverySearch](../api/security-ediscoverycase-list-searches.md)|[microsoft.graph.security.ediscoverySearch](../resources/security-ediscoverysearch.md) collection|Get the ediscoverySearch resources from the search navigation property.|
|[Add ediscoverySearch](../api/security-ediscoveryaddtoreviewsetoperation-post-search.md)|[microsoft.graph.security.ediscoverySearch](../resources/security-ediscoverysearch.md)|Add search by posting to the search collection.|
|[Remove ediscoverySearch](../api/security-ediscoveryaddtoreviewsetoperation-delete-search.md)|None|Remove an [ediscoverySearch](../resources/security-ediscoverysearch.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|caseAction|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md).The possible values are: `contentExport`, `applyTags`, `convertToPdf`, `index`, `estimateStatistics`, `addToReviewSet`, `holdUpdate`, `unknownFutureValue`, `purgeData`. Note that you must use the `Prefer: include - unknown -enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `purgeData`.|
|completedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md).|
|createdBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md).|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|percentProgress|Int32|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md).|
|resultInfo|[microsoft.graph.resultInfo](../resources/resultinfo.md)|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md).|
|status|caseOperationStatus|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md).The possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|reviewSet|[ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md)|**TODO: Add Description**|
|search|[ediscoverySearch](../resources/security-ediscoverysearch.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryAddToReviewSetOperation",
  "baseType": "microsoft.graph.security.caseOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ediscoveryAddToReviewSetOperation",
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
  }
}
```

