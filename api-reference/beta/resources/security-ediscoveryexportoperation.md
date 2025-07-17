---
title: "ediscoveryExportOperation resource type"
description: "Represents the process of an eDiscovery export."
author: "SeunginLyu"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: resourcePageType
ms.date: 10/31/2024
---

# ediscoveryExportOperation resource type

Namespace: microsoft.graph.security

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the process of an eDiscovery export.

Inherits from [caseOperation](../resources/security-caseoperation.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[getDownloadUrl](../api/security-ediscoveryexportoperation-getdownloadurl.md) (deprecated) |String| Return the URL for the export. The **getDownloadUrl** function is deprecated and stopped returning data on April 30, 2023. Use the new **exportFileMetadata** property returned by the [Get caseOperation](../api/security-caseoperation-get.md) API instead.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|[microsoft.graph.security.caseAction](../resources/security-caseoperation.md#caseaction-values)| The type of action the operation represents. Possible values are: `contentExport`, `applyTags`, `convertToPdf`, `index`, `estimateStatistics`, `addToReviewSet`, `holdUpdate`, `unknownFutureValue`, `purgeData`, `exportReport`, `exportResult`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `purgeData`, `exportReport`, `exportResult`. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|completedDateTime|DateTimeOffset| The date and time the export was completed. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|createdBy|[identitySet](../resources/identityset.md)| The user who initiated the export operation. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|createdDateTime|DateTimeOffset| The date and time the export was created. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|description|String| The description provided for the export.|
|exportFileMetadata | [microsoft.graph.security.ediscoveryExportFileMetadata](../resources/security-ediscoveryexportfilemetadata.md)| Contains the properties for an export file metadata, including **downloadUrl**, **fileName**, and **size**. If you export to an Azure storage location, this property returns empty. |
|exportOptions|[microsoft.graph.security.exportOptions](#exportoptions-values)| The options provided for the export. For more information, see [reviewSet: export](../api/security-ediscoveryreviewset-export.md). The `fileInfo` member is deprecated and stopped returning data on April 30, 2023. Going forward, the summary and load files are always included. Possible values are: `originalFiles`, `text`, `pdfReplacement`, `tags`, `unknownFutureValue`, `splitSource`, `includeFolderAndPath`, `friendlyName`, `condensePaths`, `optimizedPartitionSize`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `splitSource`, `includeFolderAndPath`, `friendlyName`, `condensePaths`, `optimizedPartitionSize`.|
|exportStructure|[microsoft.graph.security.exportFileStructure](#exportfilestructure-values)|The options that specify the structure of the export. For more information, see [reviewSet: export](../api/security-ediscoveryreviewset-export.md). Possible values are: `none`, `directory`, `pst`, `unknownFutureValue`, `msg`. Use the `Prefer: include-unknown-enum-members` request header to get the following value from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `msg`.|
|id|String| The ID for the operation. Read-only. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|outputName|String| The name provided for the export.|
|percentProgress|Int32| The progress of the operation. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|resultInfo|[resultInfo](../resources/resultinfo.md)|Contains success and failure-specific result information. Inherited from [caseOperation](../resources/ediscovery-caseoperation.md).|
|status|[microsoft.graph.security.caseOperationStatus](../resources/security-caseoperation.md#caseoperationstatus-values)| The status of the case operation. Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|azureBlobContainer (deprecated)|String| The name of the Azure storage location where the export is stored. This name only applies to exports stored in your own Azure storage location. The **azureBlobContainer** property is deprecated and stopped returning data on April 30, 2023. |
|azureBlobToken (deprecated)|String| The SAS token for the Azure storage location. This token only applies to exports stored in your own Azure storage location. The **azureBlobToken** property is deprecated and stopped returning data on April 30, 2023. |
|outputFolderId (deprecated) | String | The output folder ID. The **outputFolderId** property is deprecated and stopped returning data on April 30, 2023.

### exportOptions values

|Member|Description|
|:----|-----------|
|originalFiles|Include original files in native format; for example: docx, xlsx, pptx, doc, xlst, and pptm.|
|text|Include extracted text from the original files.|
|pdfReplacement|Replace the original file with a PDF version when available.|
|tags|Include tag information in `fileInfo`.|
|fileInfo (deprecated) |Include metadata of original files in a load file. The `fileInfo` member is deprecated and stopped returning data on April 30, 2023. Going forward, the summary and load files are always included. |
|unknownFutureValue   | Evolvable enumeration sentinel value. Don't use. |
|splitSource|Organize data from different locations into separate folders or PSTs.|
|includeFolderAndPath|Include folder and path structure of source.|
|friendlyName|Give each item a friendly name.|
|condensePaths|Condense paths to fit within 259 characters.|
|optimizedPartitionSize|Optimize export package partition size.|

### exportFileStructure values

|Member|Description|
|:----|-----------|
|None|Default file structure.|
|directory|All files in a singe folder called NativeFiles.|
|pst|Mails are grouped in PST format.|
|unknownFutureValue   | Evolvable enumeration sentinel value. Don't use. |
|msg|Mails are in MSG format.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|reviewSet|[microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md)|	Review set from where documents are exported.|
|reviewSetQuery|[microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md)|The review set query that is used to filter the documents for export.|


## JSON representation
The following JSON representation shows the resource type.
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
