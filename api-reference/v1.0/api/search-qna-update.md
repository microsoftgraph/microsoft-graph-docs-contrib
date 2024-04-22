---
title: "Update qna"
description: "Update the properties of a qna object."
author: "jakeost-msft"
ms.localizationpriority: medium
ms.subservice: "search"
doc_type: apiPageType
---

# Update qna

Namespace: microsoft.graph.search

Update the properties of a [qna](../resources/search-qna.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "search_qna_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/search-qna-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /search/qnas/{qnaId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

>**Note:** Any updates to the properties of a collection, such as keywords, replace the entire collection.

|Property|Type|Description|
|:---|:---|:---|
|availabilityEndDateTime|DateTimeOffset|Date and time when the QnA stops appearing as a search result. Set as `null` for always available. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|availabilityStartDateTime|DateTimeOffset|Date and time when the QnA starts to appear as a search result. Set as `null` for always available. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2014 is `2014-01-01T00:00:00Z`.|
|description|String|Answer that is displayed in search results. Inherited from [searchAnswer](../resources/search-searchanswer.md).|
|displayName|String|Question that is displayed in search results. Inherited from [searchAnswer](../resources/search-searchanswer.md).|
|groupIds|String collection|The list of security groups that are able to view this QnA.|
|keywords|[microsoft.graph.search.answerKeyword](../resources/search-answerkeyword.md)|Keywords that trigger this QnA to appear in search results.|
|languageTags|String collection|A list of geographically specific language names in which this QnA can be viewed. Each language tag value follows the pattern {language}-{region}. For example, `en-us` is English as used in the United States. For the list of possible values, see [Supported language tags](../resources/search-api-answers-overview.md#supported-language-tags). |
|platforms|microsoft.graph.devicePlatformType collection|List of devices and operating systems that are able to view this QnA. Possible values are: `android`, `androidForWork`, `ios`, `macOS`, `windowsPhone81`, `windowsPhone81AndLater`, `windows10AndLater`, `androidWorkProfile`, `unknown`, `androidASOP`, `androidMobileApplicationManagement`, `iOSMobileApplicationManagement`, `unknownFutureValue`.|
|state|microsoft.graph.search.answerState|State of the QnA. Possible values are: `published`, `draft`, `excluded`, `unknownFutureValue`.|
|targetedVariations|[microsoft.graph.search.answerVariant](../resources/search-answervariant.md) collection|Variations of a QnA for different countries or devices. Use when you need to show different content to users based on their device, country/region, or both. The date and group settings apply to all variations.|
|webUrl|String|The URL link for the QnA. When users select this QnA from the search results, they're directed to the specified URL. Inherited from [searchAnswer](../resources/search-searchanswer.md).|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_qna"
}-->
``` http
PATCH https://graph.microsoft.com/v1.0/search/qnas/733b26d5-af76-4eea-ac69-1a0ce8716897
Content-Type: application/json

{
  "description": "The dates that Contoso offices will be closed to observe holidays. These dates may differ from the actual date of the holiday in cases where the holiday falls on a wee​kend."
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-qna-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-qna-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-qna-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-qna-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-qna-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-qna-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-qna-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-qna-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}-->
``` http
HTTP/1.1 204 No Content
```
