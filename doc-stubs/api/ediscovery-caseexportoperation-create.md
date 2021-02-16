---
title: "Create caseExportOperation"
description: "Create a new caseExportOperation object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Create caseExportOperation
Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [caseExportOperation](../resources/ediscovery-caseexportoperation.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|**TODO: Provide applicable permissions.**|
|Delegated (personal Microsoft account)|**TODO: Provide applicable permissions.**|
|Application|**TODO: Provide applicable permissions.**|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST ** Collection URI for microsoft.graph.ediscovery.caseExportOperation not found
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [caseExportOperation](../resources/ediscovery-caseexportoperation.md) object.

The following table shows the properties that are required when you create the [caseExportOperation](../resources/ediscovery-caseexportoperation.md).

|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/ediscovery-entity.md)|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [caseOperation](../resources/ediscovery-caseoperation.md)|
|completedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [caseOperation](../resources/ediscovery-caseoperation.md)|
|percentProgress|Int32|**TODO: Add Description** Inherited from [caseOperation](../resources/ediscovery-caseoperation.md)|
|status|caseOperationStatus|**TODO: Add Description** Inherited from [caseOperation](../resources/ediscovery-caseoperation.md). Possible values are: `notStarted`, `submissionFailed`, `running`, `succeeded`, `partiallySucceeded`, `failed`.|
|action|caseAction|**TODO: Add Description** Inherited from [caseOperation](../resources/ediscovery-caseoperation.md). Possible values are: `contentExport`, `applyTags`, `convertToPdf`, `index`, `estimateStatistics`, `addToReviewSet`, `unknownFutureValue`.|
|createdBy|[identitySet](../resources/ediscovery-identityset.md)|**TODO: Add Description** Inherited from [caseOperation](../resources/ediscovery-caseoperation.md)|
|resultInfo|[resultInfo](../resources/ediscovery-resultinfo.md)|**TODO: Add Description** Inherited from [caseOperation](../resources/ediscovery-caseoperation.md)|
|outputName|String|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|outputFolderId|String|**TODO: Add Description**|
|azureBlobContainer|String|**TODO: Add Description**|
|azureBlobToken|String|**TODO: Add Description**|
|exportOptions|exportOptions|**TODO: Add Description**. Possible values are: `originalFiles`, `text`, `pdfReplacement`, `fileInfo`, `tags`, `unknownFutureValue`.|
|exportStructure|exportFileStructure|**TODO: Add Description**. Possible values are: `none`, `directory`, `pst`, `unknownFutureValue`.|



## Response

If successful, this method returns a `201 Created` response code and a [caseExportOperation](../resources/ediscovery-caseexportoperation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "create_caseexportoperation_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta** Collection URI for microsoft.graph.ediscovery.caseExportOperation not found
Content-Type: application/json
Content-length: 559

{
  "@odata.type": "#microsoft.graph.ediscovery.caseExportOperation",
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


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.ediscovery.caseExportOperation"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.ediscovery.caseExportOperation",
  "id": "7d1aaf48-af48-7d1a-48af-1a7d48af1a7d",
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

