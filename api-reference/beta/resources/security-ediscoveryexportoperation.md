---
title: "ediscoveryExportOperation resource type"
description: "Represents the process of an eDiscovery export."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# ediscoveryExportOperation resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the process of an eDiscovery export.

Inherits from [caseOperation](../resources/security-caseoperation.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[getDownloadUrl](../api/security-ediscoveryexportoperation-getdownloadurl.md)|String| Returns the URL for the export. This function will be deprecated from April, 2023.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|[microsoft.graph.security.caseAction](../resources/security-caseoperation.md#caseaction-values)| The type of action the operation represents. Possible values are: `addToReviewSet`,`applyTags`,`contentExport`,`convertToPdf`,`estimateStatistics`, `purgeData`|
|azureBlobContainer|String| The name of the Azure storage location where the export will be stored. This only applies to exports stored in your own Azure storage location. Please note we are deprecating the parameter in April,2023. |
|azureBlobToken|String| The SAS token for the Azure storage location.  This only applies to exports stored in your own Azure storage location. Please note we are deprecating the parameter in April,2023. |
|completedDateTime|DateTimeOffset| The date and time the export was completed.|
|createdBy|[identitySet](../resources/identityset.md)| The user who initiated the export operation.|
|createdDateTime|DateTimeOffset| The date and time the export was created.|
|description|String| The description provided for the export.|
|exportOptions|microsoft.graph.security.exportOptions| The options provided for the export. For more details, see [reviewSet: export](../api/security-ediscoveryreviewset-export.md). Possible values are: `originalFiles`, `text`, `pdfReplacement`, `fileInfo`, `tags`. Please note fileInfo option value will be deprecated from April,2023. It will always be included in further operations automatically. |
|exportStructure|microsoft.graph.security.exportFileStructure|The options provided that specify the structure of the export. For more details, see [reviewSet: export](../api/security-ediscoveryreviewset-export.md). Possible values are: `none`, `directory`, `pst`.|
|id|String| The ID for the operation. Read-only. |
|outputName|String| The name provided for the export.|
|percentProgress|Int32| The progress of the operation.|
|resultInfo|[resultInfo](../resources/resultinfo.md)|Contains success and failure-specific result information. Inherited from [caseOperation](../resources/ediscovery-caseoperation.md).|
|status|[microsoft.graph.security.caseOperationStatus](../resources/security-caseoperation.md#caseoperationstatus-values)| The status of the case operation. Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`.|
exportFileMetaData | [ExportFileMetaData](../resources/security-ediscoveryexportfilemetadata.md)| Contains the properties for the metadata including the fileName, size and downloadUrl for the export|


### exportOptions values

|Member|Description|
|:----|-----------|
|originalFiles|Include original files in native format. For example: docx, xlsx, pptx, doc, xlst, pptm, etc.|
|text|Include extracted text from the original files.|
|pdfReplacement|Replace original file with PDF version when available.|
|fileInfo|Include metadata of original files in a load file. Deprecating this member from April 2023 as summary and load file will always be included. |
|tags|Include tag information in fileInfo.|

### exportFileStructure values

|Member|Description|
|:----|-----------|
|None|Default file structure.|
|directory|All files in a singe folder called NativeFiles.|
|pst|Mails will be grouped in pst format.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|reviewSet|[microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md)|	Review set from where documents are exported.|
|reviewSetQuery|[microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md)|The review set query which is used to filter the documents for export.|


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
>**Note:**: We will be deprecating outputFolderId, azureBlobContainer, azureBlobToken in April,2023
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
  "exportStructure": "String",
  "exportFileMetadata":{
    "@odata.type":"microsoft.graph.security.ediscoveryExportFileMetadata"
  }
}
```

