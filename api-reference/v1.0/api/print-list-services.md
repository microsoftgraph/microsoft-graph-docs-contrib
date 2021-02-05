---
title: List printServices
description: Retrieve a list of printService objects that represent the services available to your tenant.
author: nilakhan
localization_priority: Normal
ms.prod: cloud-printing
doc_type: apiPageType
---

# List services
Namespace: microsoft.graph

Get the printService resources from the services navigation property.

## Permissions
One of the **delegated** Universal Print [permissions](/graph/permissions-reference#universal-print-permissions) is required to call this API.

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /print/services
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

If successful, this method returns a `200 OK` response code and a collection of [printService](../resources/printservice.md) objects in the response body.

## Examples

### Request
<!-- {
  "blockType": "request",
  "name": "list_printservice"
}
-->
# [HTTP](#tab/http)
``` http
GET https://graph.microsoft.com/v1.0/print/services
```


### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.printService)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.printService",
      "id": "f83e0f77-0f77-f83e-770f-3ef8770f3ef8"
    }
  ]
}
```

