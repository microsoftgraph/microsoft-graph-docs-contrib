---
title: "List recentPrinterShares"
description: "Get a list of printer shares recently used by the signed-in user."
author: "venkatnagula"
ms.localizationpriority: medium
ms.subservice: "universal-print"
doc_type: apiPageType
ms.date: 03/06/2024
---

# List recentPrinterShares

Namespace: microsoft.graph

Get a list of [printerShares](../resources/printershare.md) recently used by the signed-in user.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "print_list_recentprintershares" } -->
[!INCLUDE [permissions-table](../includes/permissions/print-list-recentprintershares-permissions.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response
If successful, this method returns a `200 OK` response code and a collection of [printerShare](../resources/printershare.md) objects in the response body.

## Example
### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_recentprintershares"
}-->
```msgraph-interactive
GET https://graph.microsoft.com/v1.0/me/print/recentPrinterShares
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-recentprintershares-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
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
  "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#users('74157b7f-9fa7-41b6-9ee9-97c382ba1189')/print/recentPrinterShares",
    "value": [
        {
            "id": "04ccb929-9e71-4aef-9f83-36e4a7fd53e3",
            "name": "4c1cf503-efde-48fb-9db7-12c159da0ab3_FTPrinter",
            "displayName": "4c1cf503-efde-48fb-9db7-12c159da0ab3_FTPrinter",
            "viewPoint": {
                "lastUsedDateTime": "2023-06-12T05:11:07Z"
            }
        }
  ]
}
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2023-06-12 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List printer shares",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
