---
title: "Update bookmark"
description: "Update the properties of a bookmark object."
author: "jakeost-msft"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: apiPageType
---

# Update bookmark
Namespace: microsoft.graph.search

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [bookmark](../resources/search-bookmark.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "search_bookmark_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/search-bookmark-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /search/bookmarks/{bookmarksId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

>**Note:** Updates to collection properties will update the entire collection. Any updates to a collection, such as keywords or categories, will replace the collection entirely.

|Property|Type|Description|
|:---|:---|:---|
|availabilityEndDateTime|DateTimeOffset|Timestamp of when the bookmark will stop to appear as a search result. Set as `null` for always available.|
|availabilityStartDateTime|DateTimeOffset|Timestamp of when the bookmark will start to appear as a search result. Set as `null` for always available.|
|categories|String collection|Categories commonly used to describe this bookmark. For example, IT and HR.|
|description|String|Bookmark description shown on search results page. Inherited from [searchAnswer](../resources/search-searchAnswer.md).|
|displayName|String|Bookmark name displayed in search results. Inherited from [searchAnswer](../resources/search-searchAnswer.md).|
|groupIds|String collection|List of security groups able to view this bookmark.|
|keywords|[microsoft.graph.search.answerKeyword](../resources/search-answerKeyword.md)|Keywords that trigger this bookmark to appear in search results.|
|languageTags|String collection|List of countries or regions able to view this bookmark.|
|platforms|microsoft.graph.devicePlatformType collection|List of devices and operating systems able to view this bookmark. Possible values are: `unknown`, `android`, `androidForWork`, `ios`, `macOS`, `windowsPhone81`, `windowsPhone81AndLater`, `windows10AndLater`, `androidWorkProfile`, `androidASOP`.|
|powerAppIds|String collection|List of Power Apps associated with this bookmark. If users add existing Power Apps to a bookmark, they can complete tasks, such as to enter vacation time or to report expenses on the search results page.|
|state|microsoft.graph.search.answerState|State of the bookmark. Possible values are: `published`, `draft`, `excluded`, or `unknownFutureValue`.|
|targetedVariations|[microsoft.graph.search.answerVariant](../resources/search-answerVariant.md) collection|Variations of a bookmark for different countries or devices. Use when you need to show different content to users based on their device, country/region, or both. The date and group settings will apply to all variations.|
|webUrl|String|Bookmark URL link. When users click this bookmark in search results, they will go to this URL. Inherited from [searchAnswer](../resources/search-searchAnswer.md).|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_bookmark"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/search/bookmarks/{bookmarksId}
Content-Type: application/json

{
  "description": "Book a fancy vacation in Tuscany or browse museums in Florence."
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-bookmark-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-bookmark-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-bookmark-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-bookmark-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-bookmark-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-bookmark-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-bookmark-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-bookmark-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

