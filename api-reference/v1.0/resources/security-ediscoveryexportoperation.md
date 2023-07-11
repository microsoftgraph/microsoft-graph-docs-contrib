---
title: "ediscoveryExportOperation resource type"
description: "Represents the process of a Microsoft Purview eDiscovery export."
author: "vbhatt0211"
ms.localizationpriority: medium
ms.prod: "ediscovery"
doc_type: resourcePageType
---

# ediscoveryExportOperation resource type

Namespace: microsoft.graph.security

Represents the process of a Microsoft Purview eDiscovery export.

Inherits from [caseOperation](../resources/security-caseoperation.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get caseOperation](../api/security-caseoperation-get.md)|Resource | The **exportFileMetadata** property returned by the method will provide downloadUrl, fileName and size of exported content |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|[microsoft.graph.security.caseAction](../resources/security-caseoperation.md#caseaction-values)| The type of action the operation represents. Possible values are: `addToReviewSet`,`applyTags`,`contentExport`,`convertToPdf`,`estimateStatistics`, `purgeData`|
|completedDateTime|DateTimeOffset| The date and time the export was completed.|
|createdBy|[identitySet](../resources/identityset.md)| The user who initiated the export operation.|
|createdDateTime|DateTimeOffset| The date and time the export was created.|
|description|String| The description provided for the export.|
|exportFileMetaData | [microsoft.graph.security.ediscoveryExportFileMetadata](../resources/security-ediscoveryexportfilemetadata.md)| Contains the properties for an export file metadata, including **downloadUrl**, **fileName**, and **size**.  |
|exportOptions|microsoft.graph.security.exportOptions| The options provided for the export. For more details, see [reviewSet: export](../api/security-ediscoveryreviewset-export.md). Possible values are: `originalFiles`, `text`, `pdfReplacement`,  `tags`.|
|exportStructure|microsoft.graph.security.exportFileStructure|The options provided that specify the structure of the export. For more details, see [reviewSet: export](../api/security-ediscoveryreviewset-export.md). Possible values are: `none`, `directory`, `pst`.|
|id|String| The ID for the operation. Read-only. |
|outputName|String| The name provided for the export.|
|percentProgress|Int32| The progress of the operation.|
|resultInfo|[resultInfo](../resources/resultinfo.md)|Contains success and failure-specific result information. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|status|[microsoft.graph.security.caseOperationStatus](../resources/security-caseoperation.md#caseoperationstatus-values)| The status of the case operation. Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`.|


### exportOptions values

|Member|Description|
|:----|-----------|
|originalFiles|Include original files in native format. For example: docx, xlsx, pptx, doc, xlst, pptm, etc.|
|text|Include extracted text from the original files.|
|pdfReplacement|Replace original file with PDF version when available.|
|tags|Include tag information.|

### exportFileStructure values

|Member|Description|
|:----|-----------|
|None|Default file structure.|
|directory|All files in a single folder called Native files.|
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
  "outputName": "String",
  "percentProgress": "Int32",
  "resultInfo": {
    "@odata.type": "microsoft.graph.resultInfo"
  },
  "status": "String"
}
```
