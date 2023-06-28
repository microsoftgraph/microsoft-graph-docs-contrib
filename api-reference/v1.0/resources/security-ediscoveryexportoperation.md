---
title: "ediscoveryExportOperation resource type"
description: "Represents the process of an eDiscovery export."
author: "vbhatt0211"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# ediscoveryExportOperation resource type

Namespace: microsoft.graph.security

Represents the process of an eDiscovery export.

Inherits from [caseOperation](../resources/security-caseoperation.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Get caseOperation](../api/security-caseoperation-get.md)|Resource | Read the properties and relationships of a [caseOperation](../resources/security-caseoperation.md) object. Please use the new **exportFileMetadata** property returned by the method to obtain downloadUrl,fileName and size of exported content. |

## Properties

|Property|Type|Description|
|:---|:---|:---|
|action|[microsoft.graph.security.caseAction](../resources/security-caseoperation.md#caseaction-values)| The type of action the operation represents. Possible values are: `addToReviewSet`,`applyTags`,`contentExport`,`convertToPdf`,`estimateStatistics`, `purgeData`. Inherited from [caseOperation](../resources/security-caseoperation.md). |
|completedDateTime|DateTimeOffset| The date and time the export was completed. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|createdBy|[identitySet](../resources/identityset.md)| The user who initiated the export operation. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|createdDateTime|DateTimeOffset| The date and time the export was created. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|description|String| The description provided for the export.|
|exportFileMetaData | [microsoft.graph.security.ediscoveryExportFileMetadata](../resources/security-ediscoveryexportfilemetadata.md)| Contains the properties for an export file metadata, including **downloadUrl**, **fileName**, and **size**.  |
|exportOptions|[microsoft.graph.security.exportOptions](../resources/security-ediscoveryexportfilemetadata.md#exportoptions-values)| The options provided for the export. For more details, see [reviewSet: export](../api/security-ediscoveryreviewset-export.md). Possible values are: `originalFiles`, `text`, `pdfReplacement`,  `tags`, `unknownFutureValue`.|
|exportStructure|[microsoft.graph.security.exportFileStructure](../resources/security-ediscoveryexportfilemetadata.md#exportfilestructure-values)|The options provided that specify the structure of the export. For more details, see [reviewSet: export](../api/security-ediscoveryreviewset-export.md). Possible values are: `none`, `directory`, `pst`, `unknownFutureValue`.|
|id|String| The ID for the operation. Read-only. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|outputName|String| The name provided for the export.|
|percentProgress|Int32| The progress of the operation. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|resultInfo|[resultInfo](../resources/resultinfo.md)|Contains success and failure-specific result information. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|status|[microsoft.graph.security.caseOperationStatus](../resources/security-caseoperation.md#caseoperationstatus-values)| The status of the case operation. Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`. Inherited from [caseOperation](../resources/security-caseoperation.md).|

### exportOptions values

|Member|Description|
|:----|-----------|
|originalFiles|Include original files in native format. For example, docx, xlsx, pptx, doc, xlst, and pptm.|
|text|Include extracted text from the original files.|
|pdfReplacement|Replace the original file with a PDF version when available.|
|tags|Include tag information.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

### exportFileStructure values

|Member|Description|
|:----|-----------|
|none|Default file structure.|
|directory|All files in a single folder called *NativeFiles*.|
|pst|Mails are grouped in pst format.|
|unknownFutureValue|Evolvable enumeration sentinel value. Do not use.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|reviewSet|[microsoft.graph.security.ediscoveryReviewSet](../resources/security-ediscoveryreviewset.md)| Review set from where documents are exported.|
|reviewSetQuery|[microsoft.graph.security.ediscoveryReviewSetQuery](../resources/security-ediscoveryreviewsetquery.md)| The review set query that is used to filter the documents for export.|

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
