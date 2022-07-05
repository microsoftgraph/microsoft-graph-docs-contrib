---
title: "Delete browserSharedCookie"
description: "Deletes a browserSharedCookie object."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.prod: "sites-and-lists"
doc_type: apiPageType
---

# Delete browserSharedCookie
Namespace: microsoft.graph



Deletes a [browserSharedCookie](../resources/browsersharedcookie.md) object.

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
DELETE /admin/edge/internetExplorerMode/siteLists/{browserSiteListId}/sharedCookies/{browserSharedCookieId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If the shared cookie was not previously published then this method returns a `204 No Content` response code on a successful delete. If the shared cookie was previously published then this method returns a `200 OK` response code and a [browserSiteList](../resources/browsersitelist.md) object in the response body with the status as `pendingDelete`. The shared cookie must then be published to fully remove the shared cookie from the site list.

## Examples

### Example 1: Shared cookie that was not previously published.

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "delete_browsersharedcookie",
  "@odata.type": "microsoft.graph.browserSharedCookie"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/admin/edge/internetExplorerMode/siteLists/{browserSiteListId}/sharedCookies/{browserSharedCookieId}
```


#### Response
The following is an example of the response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 2: Shared cookie that was previously published.

#### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "delete_browsersharedcookie"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/admin/edge/internetExplorerMode/siteLists/{browserSiteListId}/sharedCookies/{browserSharedCookieId}
```


#### Response
The following is an example of the response. The status is changed to 
`pendingDelete` and the shared cookie must be published to fully remove.
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
    "status": "pendingDelete",
    "id": "07f4030f-45ff-4ad1-9277-3b8f6ee74141",
    "hostOrDomain": "www.microsoft.com",
    "sourceEnvironment": "internetExplorer11",
    "displayName": "Microsoft Cookie",
    "path": "/",
    "hostOnly": true,
    "comment": "A cookie for microsoft.com",
    "lastModifiedDateTime": "2022-06-29T11:38:39.6732721-04:00",
    "createdDateTime": "2022-06-29T11:32:39.673272-04:00",
    "deletedDateTime": "2022-06-29T11:38:39.673272-04:00",
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