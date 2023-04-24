---
title: "List browserSharedCookies"
description: "Get a list of the browserSharedCookie objects and their properties."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.prod: "browser-management"
doc_type: apiPageType
---

# List browserSharedCookies
Namespace: microsoft.graph

Get a list of the [browserSharedCookie](../resources/browsersharedcookie.md) objects and their properties.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|BrowserSiteLists.Read.All, BrowserSiteLists.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|BrowserSiteLists.Read.All, BrowserSiteLists.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /admin/edge/internetExplorerMode/siteLists/{browserSiteListId}/sharedCookies
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

If successful, this method returns a `200 OK` response code and a collection of [browserSharedCookie](../resources/browsersharedcookie.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_browsersharedcookie",
  "sampleKeys": ["e370d818-f650-5ab1-499e-5915e83f4573"]
}
-->
``` http
GET https://graph.microsoft.com/v1.0/admin/edge/internetExplorerMode/siteLists/e370d818-f650-5ab1-499e-5915e83f4573/sharedCookies
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-browsersharedcookie-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-browsersharedcookie-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-browsersharedcookie-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-browsersharedcookie-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-browsersharedcookie-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.browserSharedCookie",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "status": "published",
            "id": "07f4030f-45ff-4ad1-9277-3b8f6ee74141",
            "hostOrDomain": "www.microsoft.com",
            "sourceEnvironment": "internetExplorer11",
            "displayName": "Microsoft Cookie",
            "path": "/",
            "hostOnly": true,
            "comment": "A cookie for microsoft.com",
            "lastModifiedDateTime": "2022-06-29T11:32:39.6732721-04:00",
            "createdDateTime": "2022-06-29T11:32:39.673272-04:00",
            "lastModifiedBy": {
                "user": {
                    "id": "f6ff107e-bc40-4918-a432-8d7b60030a7c",
                    "displayName": "Joe Smith"
                },
                "application": null
            },
            "history": []
        }
    ]
}
```

