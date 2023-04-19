---
title: "List browserSites"
description: "Get a list of the browserSite objects and their properties."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.prod: "browser-management"
doc_type: apiPageType
---

# List browserSites
Namespace: microsoft.graph

Get a list of the [browserSite](../resources/browsersite.md) objects and their properties.

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
GET /admin/edge/internetExplorerMode/siteLists/{browserSiteListId}/sites
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

If successful, this method returns a `200 OK` response code and a collection of [browserSite](../resources/browsersite.md) objects in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_browsersite",
  "sampleKeys": ["e370d818-f650-5ab1-499e-5915e83f4573"]
}
-->
``` http
GET https://graph.microsoft.com/v1.0/admin/edge/internetExplorerMode/siteLists/e370d818-f650-5ab1-499e-5915e83f4573/sites
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-browsersite-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-browsersite-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-browsersite-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-browsersite-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-browsersite-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.browserSite",
  "isCollection": true
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "value": [
        {
            "status": "pendingEdit",
            "id": "a22cbc85-d5d2-4e61-8414-42e6704c36f7",
            "webUrl": "www.microsoft.com",
            "targetEnvironment": "microsoftEdge",
            "mergeType": "default",
            "compatibilityMode": "default",
            "allowRedirect": false,
            "comment": "Updating to Edge.",
            "lastModifiedDateTime": "2022-06-29T15:44:27.2154899Z",
            "createdDateTime": "2022-06-29T14:51:23.8662595Z",
            "deletedDateTime": null,
            "lastModifiedBy": {
                "user": {
                    "id": "f6ff107e-bc40-4918-a432-8d7b60030a7c",
                    "displayName": "Joe Smith"
                },
                "application": null
            },
            "history": [
                {
                    "publishedDateTime": "2022-06-29T14:51:23.8662592Z",
                    "allowRedirect": true,
                    "comment": "A site that opens in InternetExplorer11",
                    "compatibilityMode": "default",
                    "targetEnvironment": "internetExplorer11",
                    "mergeType": "default",
                    "lastModifiedBy": {
                        "user": {
                            "id": "f6ff107e-bc40-4918-a432-8d7b60030a7c",
                            "displayName": "Joe Smith"
                        },
                        "application": null
                    }
                }
            ]
        }
    ]
}
```

