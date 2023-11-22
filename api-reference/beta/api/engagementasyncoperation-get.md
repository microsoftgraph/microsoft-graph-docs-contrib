---
title: "Get engagementAsyncOperation"
description: "Read the properties and relationships of an engagementAsyncOperation object."
author: "aditijha4"
ms.localizationpriority: medium
ms.prod: "employee-engagement"
doc_type: apiPageType
---

# Get engagementAsyncOperation

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [engagementAsyncOperation](../resources/engagementasyncoperation.md) object.

## Permissions

<!-- {
  "blockType": "permissions",
  "name": "engagementasyncoperation-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/engagementasyncoperation-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /employeeExperience/engagementAsyncOperations/{engagementAsyncOperationId}
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

If successful, this method returns a `200 OK` response code and an [engagementAsyncOperation](../resources/engagementasyncoperation.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_engagementasyncoperation"
}
-->
``` http
GET https://graph.microsoft.com/beta/employeeExperience/engagementAsyncOperations/a6fdce1-c261-48bc-89de-1cfef658c0d5
```


### Response

The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.engagementAsyncOperation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.id":"https://graph.microsoft.com/beta/employeeExperience/engagementOperations('3a6fdce1-c261-48bc-89de-1cfef658c0d5')",
    "id": "3a6fdce1-c261-48bc-89de-1cfef658c0d5",
    "createdDateTime": "2015-06-19T12-01-03.45Z",
    "lastActionDateTime": "2015-06-19T12-06-03.0024Z",
    "operationType": "createCommunity",
    "status": "succeeded",
    "resourceLocation": "https://graph.microsoft.com/beta/employeeExperience/communities('eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0')",
    "resourceId": "eyJfdHlwZSI6Ikdyb3VwIiwiaWQiOiI4MzIxMjc1In0"
  }
}
```

