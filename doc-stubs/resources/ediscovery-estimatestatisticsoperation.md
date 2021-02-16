---
title: "estimateStatisticsOperation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# estimateStatisticsOperation resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [caseOperation](../resources/caseoperation.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List estimateStatisticsOperations](../api/estimatestatisticsoperation-list.md)|[estimateStatisticsOperation](../resources/ediscovery-estimatestatisticsoperation.md) collection|Get a list of the [estimateStatisticsOperation](../resources/estimatestatisticsoperation.md) objects and their properties.|
|[Create estimateStatisticsOperation](../api/ediscovery-estimatestatisticsoperation-create.md)|[estimateStatisticsOperation](../resources/ediscovery-estimatestatisticsoperation.md)|Create a new [estimateStatisticsOperation](../resources/ediscovery-estimatestatisticsoperation.md) object.|
|[Get estimateStatisticsOperation](../api/ediscovery-estimatestatisticsoperation-get.md)|[estimateStatisticsOperation](../resources/ediscovery-estimatestatisticsoperation.md)|Read the properties and relationships of an [estimateStatisticsOperation](../resources/ediscovery-estimatestatisticsoperation.md) object.|
|[Update estimateStatisticsOperation](../api/ediscovery-estimatestatisticsoperation-update.md)|[estimateStatisticsOperation](../resources/ediscovery-estimatestatisticsoperation.md)|Update the properties of an [estimateStatisticsOperation](../resources/ediscovery-estimatestatisticsoperation.md) object.|
|[Delete estimateStatisticsOperation](../api/ediscovery-estimatestatisticsoperation-delete.md)|None|Deletes an [estimateStatisticsOperation](../resources/ediscovery-estimatestatisticsoperation.md) object.|
|[List sourceCollection](../api/ediscovery-estimatestatisticsoperation-list-sourcecollection.md)|[sourceCollection](../resources/ediscovery-sourcecollection.md) collection|Get the sourceCollection resources from the sourceCollection navigation property.|
|[Add sourceCollection](../api/ediscovery-estimatestatisticsoperation-post-sourcecollection.md)|[sourceCollection](../resources/ediscovery-sourcecollection.md)|Add sourceCollection by posting to the sourceCollection collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|caseAction|**TODO: Add Description** Inherited from [caseOperation](../resources/ediscovery-caseoperation.md). Possible values are: `contentExport`, `applyTags`, `convertToPdf`, `index`, `estimateStatistics`, `addToReviewSet`, `unknownFutureValue`.|
|completedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [caseOperation](../resources/ediscovery-caseoperation.md)|
|createdBy|[identitySet](../resources/ediscovery-identityset.md)|**TODO: Add Description** Inherited from [caseOperation](../resources/ediscovery-caseoperation.md)|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [caseOperation](../resources/ediscovery-caseoperation.md)|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/ediscovery-entity.md)|
|indexedItemCount|Int64|**TODO: Add Description**|
|indexedItemsSize|Int64|**TODO: Add Description**|
|mailboxCount|Int32|**TODO: Add Description**|
|percentProgress|Int32|**TODO: Add Description** Inherited from [caseOperation](../resources/ediscovery-caseoperation.md)|
|resultInfo|[resultInfo](../resources/ediscovery-resultinfo.md)|**TODO: Add Description** Inherited from [caseOperation](../resources/ediscovery-caseoperation.md)|
|siteCount|Int32|**TODO: Add Description**|
|status|caseOperationStatus|**TODO: Add Description** Inherited from [caseOperation](../resources/ediscovery-caseoperation.md). Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`.|
|unindexedItemCount|Int64|**TODO: Add Description**|
|unindexedItemsSize|Int64|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|sourceCollection|[sourceCollection](../resources/ediscovery-sourcecollection.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.ediscovery.estimateStatisticsOperation",
  "baseType": "microsoft.graph.ediscovery.caseOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.ediscovery.estimateStatisticsOperation",
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
  },
  "indexedItemCount": "Integer",
  "indexedItemsSize": "Integer",
  "unindexedItemCount": "Integer",
  "unindexedItemsSize": "Integer",
  "mailboxCount": "Integer",
  "siteCount": "Integer"
}
```

