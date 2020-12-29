---
title: "caseExportOperation resource type"
description: "Export operation entity"
localization_priority: Normal
author: "mahage-msft"
ms.prod: "compliance"
doc_type: resourcePageType
---

# caseExportOperation resource type

Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**caseExportOperation** represents the process of an eDiscovery export.  The **caseExportOperation** can only be retrieved with the Location header in the response to a [reviewset export](../api/reviewset-export.md).

Inherits from [caseOperation](../resources/caseoperation.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[getDownloadUrl](../api/caseexportoperation-getdownloadurl.md)|String| Returns the url for the export.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|action|caseAction| The type of operation - `contentExport`. Inherited from [caseOperation](../resources/caseoperation.md).|
|azureBlobContainer|String| The name of the Azure storage location where the export will be stored. This only applies to exports stored in your own Azure storage location. |
|azureBlobToken|String| The SAS token for the Azure storage location.  This only applies to exports stored in your own Azure storage location. |
|completedDateTime|DateTimeOffset| The date and time the export was completed.  Inherited from [caseOperation](../resources/caseoperation.md)|
|createdBy|[identitySet](../resources/identityset.md)| The user who initiated the export operation. Inherited from [caseOperation](../resources/caseoperation.md)|
|createdDateTime|DateTimeOffset| The date and time the export was created. Inherited from [caseOperation](../resources/caseoperation.md)|
|description|String| The description provided for the export. |
|exportOptions|exportOptions| The options provided for the export. See [reviewSet: export](../api/reviewset-export.md) for more details. Possible values are: `originalFiles`, `text`, `pdfReplacement`, `fileInfo`, `tags`, `unknownFutureValue`.|
|exportStructure|exportFileStructure|The options provided that specify the structure of the export. See [reviewSet: export](../api/reviewset-export.md) for more details. Possible values are: `none`, `directory`, `pst`, `unknownFutureValue`.|
|id|String| The ID for the operation. Read-only. Inherited from [caseOperation](../resources/caseoperation.md).|
|outputName|String| The name provided for the export.|
|percentProgress|Int32| The progress of the operation. Inherited from [caseOperation](../resources/caseoperation.md)|
|resultInfo|[resultInfo](../resources/resultinfo.md)|Contains success and failure-specific result information. Inherited from [caseOperation](../resources/caseoperation.md)|
|status|caseOperationStatus|The status of the case operation. Inherited from [caseOperation](../resources/caseoperation.md). Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|reviewSet|[reviewSet](../resources/reviewset.md)| The review set the content is being exported from. |

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
