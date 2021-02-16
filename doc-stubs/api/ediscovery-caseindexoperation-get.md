---
title: "Get caseIndexOperation"
description: "Read the properties and relationships of a caseIndexOperation object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
localization_priority: Normal
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get caseIndexOperation
Namespace: microsoft.graph.ediscovery

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [caseIndexOperation](../resources/ediscovery-caseindexoperation.md) object.

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
GET /dataSourceContainer/lastIndexOperation
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

If successful, this method returns a `200 OK` response code and a [caseIndexOperation](../resources/ediscovery-caseindexoperation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_caseindexoperation"
}
-->
``` http
GET https://graph.microsoft.com/beta/dataSourceContainer/lastIndexOperation
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.ediscovery.caseIndexOperation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.ediscovery.caseIndexOperation",
    "id": "1e3aae0d-ae0d-1e3a-0dae-3a1e0dae3a1e",
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
    }
  }
}
```

