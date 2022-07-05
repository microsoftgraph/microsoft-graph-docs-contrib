---
title: "Update browserSharedCookie"
description: "Update the properties of a browserSharedCookie object."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.prod: "sites-and-lists"
doc_type: apiPageType
---

# Update browserSharedCookie
Namespace: microsoft.graph



Update the properties of a [browserSharedCookie](../resources/browsersharedcookie.md) object.

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
PATCH /admin/edge/internetExplorerMode/siteLists/{browserSiteListId}/sharedCookies/{browserSharedCookieId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|hostOrDomain|String|The URL of the cookie. Required.|
|sourceEnvironment|browserSharedCookieSourceEnvironment|Specifies how the cookies are shared between Microsoft Edge and Internet Explorer. The possible values are: `microsoftEdge`, `internetExplorer11`, `both`, `unknownFutureValue`. Required.|
|displayName|String|The name of the cookie Required.|
|path|String|The path of the cookie. Required.|
|hostOnly|Boolean|Boolean attribute that determines whether a cookie is  a host-only or domain cookie. Required.|
|comment|String|The comment of the cookie. Required.|


## Response

If successful, this method returns a `200 OK` response code and an updated [browserSharedCookie](../resources/browsersharedcookie.md) object in the response body.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_browsersharedcookie"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/admin/edge/internetExplorerMode/siteLists/{browserSiteListId}/sharedCookies/{browserSharedCookieId}
Content-Type: application/json
Content-length: 349

{
  "hostOrDomain": "www.microsoft.com",
  "sourceEnvironment": "micrsoftEdge",
  "displayName": "Microsoft Cookie",
  "path": "/",
  "hostOnly": true,
  "comment": "Updating source environment.",
}
```


### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
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
        }
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
                }
                "application": null
            },
        }
    ]
}
```

