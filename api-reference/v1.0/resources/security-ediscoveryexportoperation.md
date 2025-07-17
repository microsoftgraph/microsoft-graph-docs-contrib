---
title: "ediscoveryExportOperation resource type"
description: "Represents the process of a Microsoft Purview eDiscovery export."
author: "vbhatt0211"
ms.localizationpriority: medium
ms.subservice: "ediscovery"
doc_type: resourcePageType
ms.date: 10/30/2024
---

# ediscoveryExportOperation resource type

Namespace: microsoft.graph.security

Represents the process of a Microsoft Purview eDiscovery export.

Inherits from [caseOperation](../resources/security-caseoperation.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[Get case operation by ID](../api/security-caseoperation-get.md)|Resource | The **exportFileMetadata** property returned by the method provides downloadUrl, fileName and size of exported content |

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|[microsoft.graph.security.caseAction](../resources/security-caseoperation.md#caseaction-values)| The type of action the operation represents. Possible values are: `contentExport`, `applyTags`, `convertToPdf`, `index`, `estimateStatistics`, `addToReviewSet`, `holdUpdate`, `unknownFutureValue`, `purgeData`, `exportReport`, `exportResult`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `purgeData`, `exportReport`, `exportResult`. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|completedDateTime|DateTimeOffset| The date and time the export was completed. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|createdBy|[identitySet](../resources/identityset.md)| The user who initiated the export operation. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|createdDateTime|DateTimeOffset| The date and time the export was created. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|description|String| The description provided for the export.|
|exportFileMetadata | [microsoft.graph.security.ediscoveryExportFileMetadata](../resources/security-ediscoveryexportfilemetadata.md)| Contains the properties for an export file metadata, including **downloadUrl**, **fileName**, and **size**.  |
|exportOptions|microsoft.graph.security.exportOptions| The options provided for the export. For more information, see [reviewSet: export](../api/security-ediscoveryreviewset-export.md). Possible values are: `originalFiles`, `text`, `pdfReplacement`,  `tags`.|
|exportStructure|microsoft.graph.security.exportFileStructure|The options that specify the structure of the export. For more information, see [reviewSet: export](../api/security-ediscoveryreviewset-export.md). Possible values are: `none`, `directory`, `pst`.|
|id|String| The ID for the operation. Read-only. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|outputName|String| The name provided for the export.|
|percentProgress|Int32| The progress of the operation. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|resultInfo|[resultInfo](../resources/resultinfo.md)|Contains success and failure-specific result information. Inherited from [caseOperation](../resources/security-caseoperation.md).|
|status|[microsoft.graph.security.caseOperationStatus](../resources/security-caseoperation.md#caseoperationstatus-values)| The status of the case operation. Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`. Inherited from [caseOperation](../resources/security-caseoperation.md).|


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
|pst|Mails are grouped in pst format.|

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
