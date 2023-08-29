---
title: "Get permissionsRequestChange"
description: "Read the properties and relationships of a permissionsRequestChange object."
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=Document-APIs/Guidelines/Metadata)**"
doc_type: apiPageType
---

# Get permissionsRequestChange
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [permissionsRequestChange](../resources/permissionsrequestchange.md) object.

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
GET /permissionsManagement/permissionsRequestChanges/{permissionsRequestChangeId}
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

If successful, this method returns a `200 OK` response code and a [permissionsRequestChange](../resources/permissionsrequestchange.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_permissionsrequestchange"
}
-->
``` http
GET https://graph.microsoft.com/beta/permissionsManagement/permissionsRequestChanges/{permissionsRequestChangeId}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.permissionsRequestChange"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.permissionsRequestChange",
    "id": "a03dd245-0607-518a-5ba5-fb339e9388f6",
    "modificationDateTime": "String (timestamp)",
    "statusDetail": "String",
    "activeOccurrenceStatus": "String",
    "ticketId": "String",
    "permissionsRequestId": "String"
  }
}
```

