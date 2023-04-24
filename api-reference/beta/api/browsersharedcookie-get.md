---
title: "Get browserSharedCookie"
description: "Get a session cookie that can be shared between a Microsoft Edge process and an Internet Explorer process, while using Internet Explorer mode."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.prod: "browser-management"
doc_type: apiPageType
---

# Get browserSharedCookie
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [session cookie](../resources/browsersharedcookie.md) that can be shared between a Microsoft Edge process and an Internet Explorer process, while using [Internet Explorer mode](/deployedge/edge-ie-mode).

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
GET /admin/edge/internetExplorerMode/siteLists/{browserSiteListId}/sharedCookies/{browserSharedCookieId}
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

If successful, this method returns a `200 OK` response code and a [browserSharedCookie](../resources/browsersharedcookie.md) object in the response body.

## Examples

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_browsersharedcookie",
  "sampleKeys": ["147713b8-4df2-4717-93a3-bfb1ebb54881", "07f4030f-45ff-4ad1-9277-3b8f6ee74141"]
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/edge/internetExplorerMode/siteLists/147713b8-4df2-4717-93a3-bfb1ebb54881/sharedCookies/07f4030f-45ff-4ad1-9277-3b8f6ee74141
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-browsersharedcookie-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-browsersharedcookie-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-browsersharedcookie-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-browsersharedcookie-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-browsersharedcookie-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.browserSharedCookie"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "status": "pendingEdit",
    "id": "07f4030f-45ff-4ad1-9277-3b8f6ee74141",
    "hostOrDomain": "www.microsoft.com",
    "sourceEnvironment": "microsoftEdge",
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
    "history": [
        {
            "publishedDateTime": "2022-06-29T14:51:23.8662592Z",
            "hostOrDomain": "www.microsoft.com",
            "comment": "A cookie for InternetExplorer11",
            "displayName": "Microsoft Cookie",
            "sourceEnvironment": "internetExplorer11",
            "hostOnly": true,
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
```

