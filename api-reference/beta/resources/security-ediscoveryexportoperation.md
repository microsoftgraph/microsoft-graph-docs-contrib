---
title: "ediscoveryExportOperation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# ediscoveryExportOperation resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [caseOperation](../resources/security-caseoperation.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List ediscoveryExportOperations](../api/security-ediscoveryexportoperation-list.md)|[microsoft.graph.security.ediscoveryExportOperation](../resources/security-ediscoveryexportoperation.md) collection|Get a list of the [ediscoveryExportOperation](../resources/security-ediscoveryexportoperation.md) objects and their properties.|
|[Get ediscoveryExportOperation](../api/security-ediscoveryexportoperation-get.md)|[microsoft.graph.security.ediscoveryExportOperation](../resources/security-ediscoveryexportoperation.md)|Read the properties and relationships of an [ediscoveryExportOperation](../resources/security-ediscoveryexportoperation.md) object.|
|[Update ediscoveryExportOperation](../api/security-ediscoveryexportoperation-update.md)|[microsoft.graph.security.ediscoveryExportOperation](../resources/security-ediscoveryexportoperation.md)|Update the properties of an [ediscoveryExportOperation](../resources/security-ediscoveryexportoperation.md) object.|
|[Delete ediscoveryExportOperation](../api/security-ediscoveryexportoperation-delete.md)|None|Deletes an [ediscoveryExportOperation](../resources/security-ediscoveryexportoperation.md) object.|
|[getDownloadUrl](../api/security-ediscoveryexportoperation-getdownloadurl.md)|String|**TODO: Add Description**|
|[List ediscoveryReviewSet](../api/security-ediscoverycase-list-reviewsets.md)|[microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) collection|Get the ediscoveryReviewSet resources from the reviewSet navigation property.|
|[Add ediscoveryReviewSet](../api/security-ediscoveryexportoperation-post-reviewset.md)|[microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md)|Add reviewSet by posting to the reviewSet collection.|
|[Remove ediscoveryReviewSet](../api/security-ediscoveryexportoperation-delete-reviewset.md)|None|Remove an [ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md) object.|
|[List ediscoveryReviewSetQuery](../api/security-ediscoveryreviewset-list-queries.md)|[microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) collection|Get the ediscoveryReviewSetQuery resources from the reviewSetQuery navigation property.|
|[Add ediscoveryReviewSetQuery](../api/security-ediscoveryexportoperation-post-reviewsetquery.md)|[microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md)|Add reviewSetQuery by posting to the reviewSetQuery collection.|
|[Remove ediscoveryReviewSetQuery](../api/security-ediscoveryexportoperation-delete-reviewsetquery.md)|None|Remove an [ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|caseAction|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md).The possible values are: `contentExport`, `applyTags`, `convertToPdf`, `index`, `estimateStatistics`, `addToReviewSet`, `holdUpdate`, `unknownFutureValue`, `purgeData`. Note that you must use the `Prefer: include - unknown -enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `purgeData`.|
|azureBlobContainer|String|**TODO: Add Description**|
|azureBlobToken|String|**TODO: Add Description**|
|completedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md).|
|createdBy|[microsoft.graph.identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md).|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md).|
|description|String|**TODO: Add Description**|
|exportOptions|exportOptions|**TODO: Add Description**.The possible values are: `originalFiles`, `text`, `pdfReplacement`, `fileInfo`, `tags`, `unknownFutureValue`.|
|exportStructure|exportFileStructure|**TODO: Add Description**.The possible values are: `none`, `directory`, `pst`, `unknownFutureValue`.|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|
|outputFolderId|String|**TODO: Add Description**|
|outputName|String|**TODO: Add Description**|
|percentProgress|Int32|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md).|
|resultInfo|[microsoft.graph.resultInfo](../resources/resultinfo.md)|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md).|
|status|caseOperationStatus|**TODO: Add Description** Inherited from [caseOperation](../resources/security-caseoperation.md).The possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`, `unknownFutureValue`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|reviewSet|[ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md)|**TODO: Add Description**|
|reviewSetQuery|[ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.security.ediscoveryExportOperation",
  "baseType": "microsoft.graph.security.caseOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.security.ediscoveryExportOperation",
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
  "outputName": "String",
  "description": "String",
  "outputFolderId": "String",
  "azureBlobContainer": "String",
  "azureBlobToken": "String",
  "exportOptions": "String",
  "exportStructure": "String"
}
```

