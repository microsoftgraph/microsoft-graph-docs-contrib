---
title: "Create bookmark"
description: "Create a new bookmark object."
author: "jakeost-msft"
ms.localizationpriority: medium
ms.subservice: "search"
doc_type: apiPageType
---

# Create bookmark

Namespace: microsoft.graph.search

Create a new [bookmark](../resources/search-bookmark.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "search_searchentity_post_bookmarks" } -->
[!INCLUDE [permissions-table](../includes/permissions/search-searchentity-post-bookmarks-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}-->
```http
POST /search/bookmarks
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [bookmark](../resources/search-bookmark.md) object.

The following table shows the properties that are available when you create a [bookmark](../resources/search-bookmark.md).

|Property|Type|Description|
|:---|:---|:---|
|availabilityEndDateTime|DateTimeOffset|Date and time when the bookmark stops appearing as a search result. Set as `null` for always available. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|availabilityStartDateTime|DateTimeOffset|Date and time when the bookmark starts to appear as a search result. Set as `null` for always available. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|categories|String collection|Categories commonly used to describe this bookmark. For example, `IT` and `HR`.|
|description|String|The bookmark description that is shown on the search results page. Inherited from [searchAnswer](../resources/search-searchanswer.md).|
|displayName|String|The bookmark name that is displayed in search results. Inherited from [searchAnswer](../resources/search-searchanswer.md).|
|groupIds|String collection|The list of security groups that are able to view this bookmark.|
|keywords|[microsoft.graph.search.answerKeyword](../resources/search-answerKeyword.md)|Keywords that trigger this bookmark to appear in search results.|
|languageTags|String collection|A list of geographically specific language names in which this bookmark can be viewed. Each language tag value follows the pattern {language}-{region}. For example, `en-us` is English as used in the United States. For the list of possible values, see [Supported language tags](../resources/search-api-answers-overview.md#supported-language-tags).|
|platforms|microsoft.graph.devicePlatformType collection|List of devices and operating systems that are able to view this bookmark. Possible values are: `android`, `androidForWork`, `ios`, `macOS`, `windowsPhone81`, `windowsPhone81AndLater`, `windows10AndLater`, `androidWorkProfile`, `unknown`, `androidASOP`, `androidMobileApplicationManagement`, `iOSMobileApplicationManagement`, `unknownFutureValue`.|
|powerAppIds|String collection|List of Power Apps associated with this bookmark. If users add existing Power Apps to a bookmark, they can complete tasks directly on the search results page, such as entering vacation time or reporting expenses.|
|state|microsoft.graph.search.answerState|State of the bookmark. Possible values are: `published`, `draft`, `excluded`, `unknownFutureValue`.|
|targetedVariations|[microsoft.graph.search.answerVariant](../resources/search-answervariant.md) collection|Variations of a bookmark for different countries or devices. Use when you need to show different content to users based on their device, country/region, or both. The date and group settings apply to all variations.|
|webUrl|String|The URL link for the bookmark. When users select this bookmark from the search results, they're directed to the specified URL. Inherited from [searchAnswer](../resources/search-searchanswer.md).|

## Response

If successful, this method returns a `201 Created` response code with the ID of the bookmark created.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_bookmark_from_bookmarks_e1"
}-->
```http
POST https://graph.microsoft.com/v1.0/search/bookmarks
Content-Type: application/json

{
  "displayName": "Contoso Install Site",
  "webUrl": "http://www.contoso.com/",
  "description": "Try or buy Contoso for Home or Business and view product information",
  "keywords":  {
    "keywords": ["Contoso", "install"],
    "reservedKeywords": ["Contoso"],
    "matchSimilarKeywords": true
  },
  "availabilityStartDateTime": null,
  "availabilityEndDateTime": null,
  "platforms": ["windows"],
  "targetedVariations": [
    {
      "languageTag": "es-es",
      "displayName": "Sitio de instalación Contoso",
      "description": "Pruebe o compre Contoso hogar o negocios y vea la información del producto"
    }
  ],
  "state": "published"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-bookmark-from-bookmarks-e1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-bookmark-from-bookmarks-e1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-bookmark-from-bookmarks-e1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-bookmark-from-bookmarks-e1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-bookmark-from-bookmarks-e1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-bookmark-from-bookmarks-e1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-bookmark-from-bookmarks-e1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-bookmark-from-bookmarks-e1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.search.bookmark"
}-->
```http
HTTP/1.1 201 Created
Location: /733b26d5-af76-4eea-ac69-1a0ce8716897
Content-Type: application/json

{
  "id": "733b26d5-af76-4eea-ac69-1a0ce8716897"
}
```
