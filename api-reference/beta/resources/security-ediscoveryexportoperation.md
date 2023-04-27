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
|[getDownloadUrl](../api/security-ediscoveryexportoperation-getdownloadurl.md) (deprecated) |String| Return the URL for the export. The **getDownloadUrl** function is deprecated and will stop returning data on April 30th, 2023. Please use the new **exportFileMetadata** property returned by the [Get caseOperation](../api/security-caseoperation-get.md) API instead.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|[microsoft.graph.security.caseAction](../resources/security-caseoperation.md#caseaction-values)| The type of action the operation represents. Possible values are: `addToReviewSet`,`applyTags`,`contentExport`,`convertToPdf`,`estimateStatistics`, `purgeData`|
|completedDateTime|DateTimeOffset| The date and time the export was completed.|
|createdBy|[identitySet](../resources/identityset.md)| The user who initiated the export operation.|
|createdDateTime|DateTimeOffset| The date and time the export was created.|
|description|String| The description provided for the export.|
|exportFileMetaData | [microsoft.graph.security.ediscoveryExportFileMetadata](../resources/security-ediscoveryexportfilemetadata.md)| Contains the properties for an export file metadata, including **downloadUrl**, **fileName**, and **size**. If you export to an Azure storage location, this property returns empty. |
|exportOptions|microsoft.graph.security.exportOptions| The options provided for the export. For more details, see [reviewSet: export](../api/security-ediscoveryreviewset-export.md). Possible values are: `originalFiles`, `text`, `pdfReplacement`, `fileInfo`, `tags`. The `fileInfo` member is deprecated and will stop returning data on April 30th, 2023. Going forward, the summary and load file are always included. |
|exportStructure|microsoft.graph.security.exportFileStructure|The options provided that specify the structure of the export. For more details, see [reviewSet: export](../api/security-ediscoveryreviewset-export.md). Possible values are: `none`, `directory`, `pst`.|
|id|String| The ID for the operation. Read-only. |
|outputName|String| The name provided for the export.|
|percentProgress|Int32| The progress of the operation.|
|resultInfo|[resultInfo](../resources/resultinfo.md)|Contains success and failure-specific result information. Inherited from [caseOperation](../resources/ediscovery-caseoperation.md).|
|status|[microsoft.graph.security.caseOperationStatus](../resources/security-caseoperation.md#caseoperationstatus-values)| The status of the case operation. Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`.|
|azureBlobContainer (deprecated)|String| The name of the Azure storage location where the export is stored. This only applies to exports stored in your own Azure storage location. The **azureBlobContainer** property is deprecated and will stop returning data on April 30th, 2023. |
|azureBlobToken (deprecated)|String| The SAS token for the Azure storage location.  This only applies to exports stored in your own Azure storage location. The **azureBlobToken** property is deprecated and will stop returning data on April 30th, 2023. |
|outputFolderId (deprecated) | String | The output folder ID. The **outputFolderId** property is deprecated and will stop returning data on April 30th, 2023.

### exportOptions values

|Member|Description|
|:----|-----------|
|originalFiles|Include original files in native format. For example: docx, xlsx, pptx, doc, xlst, pptm, etc.|
|text|Include extracted text from the original files.|
|pdfReplacement|Replace original file with PDF version when available.|
|tags|Include tag information in fileInfo.|
|fileInfo (deprecated) |Include metadata of original files in a load file. The `fileInfo` member is deprecated and will stop returning data on April 30th, 2023. Going forward, the summary and load file are always included. |

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

``` json
{
  "@odata.type": "#microsoft.graph.security.ediscoveryExportOperation",
  "action": "String",
  "azureBlobContainer": "String",
  "azureBlobToken": "String",
  "completedDateTime": "String (timestamp)",
  "createdBy": {
    "@odata.type": "microsoft.graph.identitySet"
  },
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "exportFileMetadata": {
    "@odata.type": "microsoft.graph.security.ediscoveryExportFileMetadata"
  },
  "exportOptions": "String",
  "exportStructure": "String",
  "id": "String (identifier)",
  "outputFolderId": "String",
  "outputName": "String",
  "percentProgress": "Int32",
  "resultInfo": {
    "@odata.type": "microsoft.graph.resultInfo"
  },
  "status": "String"
}
```
