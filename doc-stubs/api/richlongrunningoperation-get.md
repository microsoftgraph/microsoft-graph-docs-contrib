---
title: "Get richLongRunningOperation"
description: "Read the properties and relationships of a richLongRunningOperation object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://msgo.azurewebsites.net/add/document/guidelines/metadata.html#topic-level-metadata)**"
doc_type: apiPageType
---

# Get richLongRunningOperation
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [richLongRunningOperation](../resources/richlongrunningoperation.md) object.

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
GET /drive/list/operations/{richLongRunningOperationId}
GET /sites/{sitesId}/operations/{richLongRunningOperationId}
GET /drives/{drivesId}/list/operations/{richLongRunningOperationId}
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

If successful, this method returns a `200 OK` response code and a [richLongRunningOperation](../resources/richlongrunningoperation.md) object in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "get_richlongrunningoperation"
}
-->
``` http
GET https://graph.microsoft.com/beta/drive/list/operations/{richLongRunningOperationId}
```


### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.richLongRunningOperation"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.richLongRunningOperation",
    "id": "a5761885-1885-a576-8518-76a5851876a5",
    "createdDateTime": "String (timestamp)",
    "lastActionDateTime": "String (timestamp)",
    "resourceLocation": "String",
    "status": "String",
    "statusDetail": "String",
    "error": {
      "@odata.type": "microsoft.graph.publicError"
    },
    "percentageComplete": "Integer",
    "resourceId": "String",
    "type": "String"
  }
}
```

