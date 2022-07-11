---
title: "Delete browserSiteList"
description: "Deletes a browserSiteList object."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.prod: "sites-and-lists"
doc_type: apiPageType
---

# Delete browserSiteList
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Deletes a [browserSiteList](../resources/browsersitelist.md) object.

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
DELETE /admin/edge/internetExplorerMode/siteLists/{browserSiteListId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "delete_browsersitelist"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/admin/edge/internetExplorerMode/siteLists/{browserSiteListId}
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
HTTP/1.1 204 No Content
```

