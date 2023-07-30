---
title: "List recentPrinterShares"
description: "Get a list of printer shares recently used by the signed-in user."
author: "mayankbansal018"
ms.localizationpriority: medium
ms.prod: "cloud-printing"
doc_type: apiPageType
---

# List recentPrinterShares

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [printerShares](../resources/printershare.md) recently used by the signed-in user.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

To use the Universal Print service, the user or app's tenant must have an active Universal Print subscription, in addition to the permissions listed in the following table.

|Permission type | Permissions (from least to most privileged) |
|:---------------|:--------------------------------------------|
|Delegated (work or school account)| PrinterShare.ReadBasic.All, PrinterShare.Read.All, PrinterShare.ReadWrite.All |
|Delegated (personal Microsoft account)|Not supported.|
|Application|Not supported.|

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /me/print/recentPrinterShares
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

### Exceptions
The following operators are not supported: `$count`, `$orderby`, and `$search`.

## Request headers
| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token}. Required. |

## Request body
Do not supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [printerShare](../resources/printershare.md) objects in the response body.

## Example
### Request
The following is an example of the request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_recentprintershares"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/print/recentPrinterShares
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-recentprintershares-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-recentprintershares-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.printerShare",
  "isCollection": true
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('74157b7f-9fa7-41b6-9ee9-97c382ba1189')/print/recentPrinterShares",
    "value": [
        {
            "id": "04ccb929-9e71-4aef-9f83-36e4a7fd53e3",
            "name": "4c1cf503-efde-48fb-9db7-12c159da0ab3_FTPrinter",
            "displayName": "4c1cf503-efde-48fb-9db7-12c159da0ab3_FTPrinter",
            "viewPoint": {
                "lastUsedDateTime": "2021-10-24T05:11:07Z"
            }
        }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List shares",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->


