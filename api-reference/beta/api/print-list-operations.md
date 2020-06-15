---
title: Get operations
description: Retrieve a list of long-running Universal Print operations.
author: braedenp-msft
localization_priority: Normal
ms.prod: universal-print
doc_type: apiPageType
---

# List operations

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of long-running Universal Print operations. Any long-running operation such as [registering a printer](print-printers-create.md) will be represented in this list.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type | Permissions (from least to most privileged) |
|:---------------|:--------------------------------------------|
|Delegated (work or school account)| Printer.Read.All, Printer.ReadWrite.All, Printer.FullControl.All |
|Delegated (personal Microsoft account)|Not Supported.|
|Application|Printer.Read.All, Printer.ReadWrite.All|

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /print/operations
```

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.
## Response
If successful, this method returns a `200 OK` response code and collection of [printOperation](../resources/printoperation.md) objects in the response body.
## Example
##### Request
The following is an example of the request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_operations"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/print/operations
```

---

##### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.printOperation",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
Content-length: 1289

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#print/operations",
  "value": [
    {
        "id": "016b5565-3bbf-4067-b9ff-4d68167eb1a6",
        "status": {
            "state": "running"
            "description": "The printer is currently being registered."
        },
        "createdDateTime": "2020-06-15T19:54:14.853Z"
    }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List operations",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
