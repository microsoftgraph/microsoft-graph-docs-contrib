---
title: "Get caseExportOperation"
description: "Read the properties and relationships of a caseExportOperation object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get caseExportOperation
Namespace: microsoft.graph

Read the properties and relationships of a [caseExportOperation](../resources/caseexportoperation.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from most to least privileged)|
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
GET /caseExportOperation
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [caseExportOperation](../resources/caseexportoperation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_caseexportoperation"
}
-->
``` http
GET https://graph.microsoft.com/beta/caseExportOperation
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.caseExportOperation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.caseExportOperation",
    "id": "359c4f92-4f92-359c-924f-9c35924f9c35",
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
}
```

