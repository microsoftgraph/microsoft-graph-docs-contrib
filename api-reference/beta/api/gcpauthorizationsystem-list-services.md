---
title: "List gcpAuthorizationSystemTypeServices"
description: "Get all services in a GCP authorization system."
author: "mrudulahg01"
ms.localizationpriority: medium
ms.prod: "multicloud-permissions-management"
doc_type: apiPageType
---

# List services
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get all services in a GCP authorization system.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|Not supported.|
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

[!INCLUDE [epm-rbac-servicenow-apis-read](../includes/rbac-for-apis/epm-rbac-servicenow-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/authorizationSystems/{id}/graph.gcpAuthorizationSystem/services
```

## Optional query parameters
This method supports the `$filter` and `$expand` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [authorizationSystemTypeService](../resources/authorizationsystemtypeservice.md) objects in the response body.

## Examples

### Request
The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_authorizationsystemtypeservice"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/authorizationSystems/{id}/graph.gcpAuthorizationSystem/services
```


### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.authorizationSystemTypeService)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/authorizationSystems/{id}/graph.gcpAuthorizationSystem/services",
  "value": [
    {
      "id": "compute",
    },
    {
      "id": "storage",
    }
  ]
}
```

