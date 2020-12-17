---
title: "caseExportOperation resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: resourcePageType
---

# caseExportOperation resource type

Namespace: microsoft.graph

**TODO: Add Description**


Inherits from [caseOperation](../resources/caseoperation.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List caseExportOperations](../api/caseexportoperation-list.md)|[caseExportOperation](../resources/caseexportoperation.md) collection|Get a list of the [caseExportOperation](../resources/caseexportoperation.md) objects and their properties.|
|[Create caseExportOperation](../api/caseexportoperation-create.md)|[caseExportOperation](../resources/caseexportoperation.md)|Create a new [caseExportOperation](../resources/caseexportoperation.md) object.|
|[Get caseExportOperation](../api/caseexportoperation-get.md)|[caseExportOperation](../resources/caseexportoperation.md)|Read the properties and relationships of a [caseExportOperation](../resources/caseexportoperation.md) object.|
|[Update caseExportOperation](../api/caseexportoperation-update.md)|[caseExportOperation](../resources/caseexportoperation.md)|Update the properties of a [caseExportOperation](../resources/caseexportoperation.md) object.|
|[Delete caseExportOperation](../api/caseexportoperation-delete.md)|None|Deletes a [caseExportOperation](../resources/caseexportoperation.md) object.|
|[getDownloadUrl](../api/caseexportoperation-getdownloadurl.md)|String|**TODO: Add Description**|
|[List reviewSet](../api/caseexportoperation-list-reviewset.md)|[reviewSet](../resources/reviewset.md) collection|Get the reviewSet resources from the reviewSet navigation property.|
|[Add reviewSet](../api/caseexportoperation-post-reviewset.md)|[reviewSet](../resources/reviewset.md)|Add reviewSet by posting to the reviewSet collection.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|caseAction|**TODO: Add Description** Inherited from [caseOperation](../resources/caseoperation.md). Possible values are: `contentExport`, `tag`, `convertToPdf`, `index`, `search`, `addDataToReviewSet`.|
|azureBlobContainer|String|**TODO: Add Description**|
|azureBlobToken|String|**TODO: Add Description**|
|completedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [caseOperation](../resources/caseoperation.md)|
|createdBy|[identitySet](../resources/identityset.md)|**TODO: Add Description** Inherited from [caseOperation](../resources/caseoperation.md)|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [caseOperation](../resources/caseoperation.md)|
|description|String|**TODO: Add Description**|
|exportOptions|exportOptions|**TODO: Add Description**. Possible values are: `originalFiles`, `text`, `pdfReplacement`, `fileInfo`, `tags`, `unknownFutureValue`.|
|exportStructure|exportFileStructure|**TODO: Add Description**. Possible values are: `none`, `directory`, `pst`, `unknownFutureValue`.|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md)|
|outputFolderId|String|**TODO: Add Description**|
|outputName|String|**TODO: Add Description**|
|percentProgress|Int32|**TODO: Add Description** Inherited from [caseOperation](../resources/caseoperation.md)|
|resultInfo|[resultInfo](../resources/resultinfo.md)|**TODO: Add Description** Inherited from [caseOperation](../resources/caseoperation.md)|
|status|caseOperationStatus|**TODO: Add Description** Inherited from [caseOperation](../resources/caseoperation.md). Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|reviewSet|[reviewSet](../resources/reviewset.md)|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.caseExportOperation",
  "baseType": "microsoft.graph.caseOperation",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.caseExportOperation",
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
  "outputName": "String",
  "description": "String",
  "outputFolderId": "String",
  "azureBlobContainer": "String",
  "azureBlobToken": "String",
  "exportOptions": "String",
  "exportStructure": "String"
}
```

