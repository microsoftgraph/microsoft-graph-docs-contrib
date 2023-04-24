---
title: "Update browserSite"
description: "Update the properties of a browserSite object."
author: "edward-day-vii"
ms.localizationpriority: medium
ms.prod: "browser-management"
doc_type: apiPageType
---

# Update browserSite
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [browserSite](../resources/browsersite.md) object.

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
PATCH /admin/edge/internetExplorerMode/siteLists/{browserSiteListId}/sites/{browserSiteId}
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
|allowRedirect|Boolean|Controls the behavior of redirected sites. If `true`, indicates that the site will open in Internet Explorer 11 or Microsoft Edge even if the site is navigated to as part of a HTTP or meta refresh redirection chain.|
|comment|String|The comment for the site.|
|compatibilityMode|browserSiteCompatibilityMode|Controls what compatibility setting is used for specific sites or domains. The possible values are: `default`, `internetExplorer8Enterprise`, `internetExplorer7Enterprise`, `internetExplorer11`, `internetExplorer10`, `internetExplorer9`, `internetExplorer8`, `internetExplorer7`, `internetExplorer5`, `unknownFutureValue`.|
|mergeType|browserSiteMergeType|The merge type of the site. The possible values are: `noMerge`, `default`, `unknownFutureValue`.|
|targetEnvironment|browserSiteTargetEnvironment|The target environment that the site should open in. The possible values are: `internetExplorerMode`, `internetExplorer11`, `microsoftEdge`, `configurable`, `none`, `unknownFutureValue`.<br /><br />Prior to June 15, 2022, the `internetExplorer11` option would allow opening a site in the Internet Explorer 11 (IE11) desktop application. Following the retirement of IE11 on June 15, 2022, the `internetExplorer11` option will no longer open an IE11 window and will instead behave the same as the `internetExplorerMode` option.|
|webUrl|String|The URL of the site.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_browsersite",
  "sampleKeys": ["972a5778-df43-45fd-9c2a-5dd944c7a1ce", "7cf831d2-8a9b-4826-b120-911566f6fd6a"]
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/edge/internetExplorerMode/siteLists/972a5778-df43-45fd-9c2a-5dd944c7a1ce/sites/7cf831d2-8a9b-4826-b120-911566f6fd6a
Content-Type: application/json
Content-length: 387

{
    "webUrl": "www.microsoft.com",
    "targetEnvironment": "microsoftEdge",
    "mergeType": "default",
    "compatibilityMode": "default",
    "allowRedirect": false,
    "comment": "Updating to Edge."
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-browsersite-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-browsersite-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-browsersite-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-browsersite-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-browsersite-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

