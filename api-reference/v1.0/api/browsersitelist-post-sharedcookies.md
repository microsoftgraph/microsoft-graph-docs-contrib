---
title: "Create browserSharedCookie"
description: "Create a new browserSharedCookie object in a browserSiteList."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.prod: "browser-management"
doc_type: apiPageType
---

# Create browserSharedCookie
Namespace: microsoft.graph

Create a new [browserSharedCookie](../resources/browsersharedcookie.md) object in a [browserSiteList](../resources/browsersitelist.md).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|BrowserSiteLists.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|BrowserSiteLists.ReadWrite.All|

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /admin/edge/internetExplorerMode/siteLists/{browserSiteListId}/sharedCookies
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [browserSharedCookie](../resources/browsersharedcookie.md) object.

You can specify the following properties when you create a **browserSharedCookie**.

|Property|Type|Description|
|:---|:---|:---|
|comment|String|The comment of the cookie. Required.|
|displayName|String|The name of the cookie. Required.|
|hostOnly|Boolean|Determines whether a cookie is a host-only or domain cookie. Required.|
|hostOrDomain|String|The URL of the cookie. Required.|
|path|String|The path of the cookie. Required.|
|sourceEnvironment|browserSharedCookieSourceEnvironment|Specifies how the cookies are shared between Microsoft Edge and Internet Explorer. The possible values are: `microsoftEdge`, `internetExplorer11`, `both`, `unknownFutureValue`. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [browserSharedCookie](../resources/browsersharedcookie.md) object in the response body.

## Examples

### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_browsersharedcookie",
  "sampleKeys": ["e370d818-f650-5ab1-499e-5915e83f4573"]
}
-->
``` http
POST https://graph.microsoft.com/v1.0/admin/edge/internetExplorerMode/siteLists/e370d818-f650-5ab1-499e-5915e83f4573/sharedCookies
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.browserSharedCookie",
    "hostOrDomain": "www.microsoft.com",
    "sourceEnvironment": "InternetExplorer11",
    "displayName": "Microsoft Cookie",
    "hostOnly": true,
    "comment": "A cookie for microsoft.com",
    "path": "/"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-browsersharedcookie-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-browsersharedcookie-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-browsersharedcookie-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-browsersharedcookie-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-browsersharedcookie-php-snippets.md)]
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
HTTP/1.1 201 Created
Content-Type: application/json

{
    "status": "pendingAdd",
    "id": "07f4030f-45ff-4ad1-9277-3b8f6ee74141",
    "hostOrDomain": "www.microsoft.com",
    "sourceEnvironment": "internetExplorer11",
    "displayName": "Microsoft Cookie",
    "path": "/",
    "hostOnly": true,
    "comment": "A cookie for microsoft.com",
    "lastModifiedDateTime": "2022-06-29T15:32:39.6732721Z",
    "createdDateTime": "2022-06-29T15:32:39.673272Z",
    "deletedDateTime": null,
    "lastModifiedBy": {
        "user": {
            "id": "f6ff107e-bc40-4918-a432-8d7b60030a7c",
            "displayName": "Joe Smith"
        },
        "application": null
    },
    "history": []
}
```

