---
title: "addToReviewSetOperation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# addToReviewSetOperation resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [caseOperation](../resources/caseoperation.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List addToReviewSetOperations](../api/addtoreviewsetoperation-list.md)|[addToReviewSetOperation](../resources/ediscovery-addtoreviewsetoperation.md) collection|Get a list of the [addToReviewSetOperation](../resources/addtoreviewsetoperation.md) objects and their properties.|
|[Create addToReviewSetOperation](../api/ediscovery-addtoreviewsetoperation-create.md)|[addToReviewSetOperation](../resources/ediscovery-addtoreviewsetoperation.md)|Create a new [addToReviewSetOperation](../resources/ediscovery-addtoreviewsetoperation.md) object.|
|[Get addToReviewSetOperation](../api/ediscovery-addtoreviewsetoperation-get.md)|[addToReviewSetOperation](../resources/ediscovery-addtoreviewsetoperation.md)|Read the properties and relationships of an [addToReviewSetOperation](../resources/ediscovery-addtoreviewsetoperation.md) object.|
|[Update addToReviewSetOperation](../api/ediscovery-addtoreviewsetoperation-update.md)|[addToReviewSetOperation](../resources/ediscovery-addtoreviewsetoperation.md)|Update the properties of an [addToReviewSetOperation](../resources/ediscovery-addtoreviewsetoperation.md) object.|
|[Delete addToReviewSetOperation](../api/ediscovery-addtoreviewsetoperation-delete.md)|None|Deletes an [addToReviewSetOperation](../resources/ediscovery-addtoreviewsetoperation.md) object.|
|[List reviewSet](../api/ediscovery-addtoreviewsetoperation-list-reviewset.md)|[reviewSet](../resources/ediscovery-reviewset.md) collection|Get the reviewSet resources from the reviewSet navigation property.|
|[Add reviewSet](../api/ediscovery-addtoreviewsetoperation-post-reviewset.md)|[reviewSet](../resources/ediscovery-reviewset.md)|Add reviewSet by posting to the reviewSet collection.|
|[List sourceCollection](../api/ediscovery-addtoreviewsetoperation-list-sourcecollection.md)|[sourceCollection](../resources/ediscovery-sourcecollection.md) collection|Get the sourceCollection resources from the sourceCollection navigation property.|
|[Add sourceCollection](../api/ediscovery-addtoreviewsetoperation-post-sourcecollection.md)|[sourceCollection](../resources/ediscovery-sourcecollection.md)|Add sourceCollection by posting to the sourceCollection collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|caseAction|**TODO: Add Description** Inherited from [caseOperation](../resources/ediscovery-caseoperation.md). Possible values are: `contentExport`, `applyTags`, `convertToPdf`, `index`, `estimateStatistics`, `addToReviewSet`, `unknownFutureValue`.|
|completedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [caseOperation](../resources/ediscovery-caseoperation.md)|
|createdBy|[identitySet](../resources/ediscovery-identityset.md)|**TODO: Add Description** Inherited from [caseOperation](../resources/ediscovery-caseoperation.md)|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [caseOperation](../resources/ediscovery-caseoperation.md)|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/ediscovery-entity.md)|
|percentProgress|Int32|**TODO: Add Description** Inherited from [caseOperation](../resources/ediscovery-caseoperation.md)|
|resultInfo|[resultInfo](../resources/ediscovery-resultinfo.md)|**TODO: Add Description** Inherited from [caseOperation](../resources/ediscovery-caseoperation.md)|
|status|caseOperationStatus|**TODO: Add Description** Inherited from [caseOperation](../resources/ediscovery-caseoperation.md). Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|reviewSet|[reviewSet](../resources/ediscovery-reviewset.md)|**TODO: Add Description**|
|sourceCollection|[sourceCollection](../resources/ediscovery-sourcecollection.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ediscovery.addToReviewSetOperation",
  "baseType": "microsoft.graph.ediscovery.caseOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.addToReviewSetOperation",
  "id": "String (identifier)",
  "createdDateTime": "String (timestamp)",
  "completedDateTime": "String (timestamp)",
  "percentProgress": "Integer",
  "status": "String",
  "action": "String",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "resultInfo": {
    "@odata.type": "microsoft.graph.resultInfo"
  }
}
```

