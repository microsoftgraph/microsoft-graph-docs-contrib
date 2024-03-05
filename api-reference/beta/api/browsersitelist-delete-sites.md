---
title: "Delete browserSite"
description: "Delete a browserSite from a browserSiteList."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.prod: "browser-management"
doc_type: apiPageType
---

# Delete browserSite
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [browserSite](../resources/browsersite.md) from a [browserSiteList](../resources/browsersitelist.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "browsersitelist_delete_sites" } -->
[!INCLUDE [permissions-table](../includes/permissions/browsersitelist-delete-sites-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /admin/edge/internetExplorerMode/siteLists/{browserSiteListId}/sites/{browserSiteId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If the site was not previously published, then this method returns a `204 No Content` response code on a successful delete. If the site was previously published, then this method returns a `200 OK` response code and a [browserSiteList](../resources/browsersitelist.md) object in the response body with the status as `pendingDelete`. You must publish (for example, via the [browserSiteList: publish](../api/browsersitelist-publish.md) API) the site to fully remove it from the site list.

## Examples

### Example 1: Delete a site that was not previously published

#### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_browsersite_e1",
  "sampleKeys": ["07f4030f-45ff-4ad1-9277-3b8f6ee74141", "a22cbc85-d5d2-4e61-8414-42e6704c36f7"]
}
-->
``` http
DELETE https://graph.microsoft.com/beta/admin/edge/internetExplorerMode/siteLists/07f4030f-45ff-4ad1-9277-3b8f6ee74141/sites/a22cbc85-d5d2-4e61-8414-42e6704c36f7
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-browsersite-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/delete-browsersite-e1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-browsersite-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-browsersite-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-browsersite-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-browsersite-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-browsersite-e1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-browsersite-e1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 2: Delete a site that was previously published

#### Request
The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_browsersite_e2",
  "sampleKeys": ["07f4030f-45ff-4ad1-9277-3b8f6ee74141", "a22cbc85-d5d2-4e61-8414-42e6704c36f7"]
}
-->
``` http
DELETE https://graph.microsoft.com/beta/admin/edge/internetExplorerMode/siteLists/07f4030f-45ff-4ad1-9277-3b8f6ee74141/sites/a22cbc85-d5d2-4e61-8414-42e6704c36f7
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-browsersite-e2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/delete-browsersite-e2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-browsersite-e2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-browsersite-e2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-browsersite-e2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-browsersite-e2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-browsersite-e2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-browsersite-e2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
The following is an example of the response where the status has changed to `pendingDelete` but the site is still published. You must publish the site to fully remove it from the site list.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.browserSite"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "status": "pendingDelete",
    "id": "a22cbc85-d5d2-4e61-8414-42e6704c36f7",
    "webUrl": "www.microsoft.com",
    "targetEnvironment": "microsoftEdge",
    "mergeType": "default",
    "compatibilityMode": "default",
    "allowRedirect": false,
    "comment": "Site for Microsoft Edge",
    "lastModifiedDateTime": "2022-06-29T15:44:27.2154899Z",
    "createdDateTime": "2022-06-29T14:51:23.8662595Z",
    "createdDateTime": "2022-06-29T14:55:23.8662595Z",
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
