---
title: "Update qna"
description: "Update the properties of a qna object."
author: "jakeost-msft"
ms.localizationpriority: medium
ms.prod: "search"
doc_type: apiPageType
---

# Update qna
Namespace: microsoft.graph.search

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [qna](../resources/search-qna.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)| SearchConfiguration.Read.All, SearchConfiguration.ReadWrite.All |
|Delegated (personal Microsoft account)| Not supported. |
|Application| SearchConfiguration.Read.All, SearchConfiguration.ReadWrite.All |

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
In the request body, supply a JSON representation of the [qna](../resources/search-qna.md) object. Supply the values for relevant fields that should be updated. Existing properties that aren't included in the request body will maintain their previous values or be recalculated based on changes to other property values. For best performance you shouldn't include existing values that haven't changed.
>**Note:** Updates to collection properties will update the entire collection. Any updates to a collection, such as keywords or categories, will replace the collection entirely.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Question displayed in search results. Inherited from [searchAnswer](../resources/search-searchAnswer.md).|
|description|String|Answer displayed in search results. Inherited from [searchAnswer](../resources/search-searchAnswer.md).|
|webUrl|String|Qna URL link. When users click this qna in search results, they will go to this URL. Inherited from [searchAnswer](../resources/search-searchAnswer.md).|
|availabilityStartDateTime|DateTimeOffset|Timestamp of when the qna will start to appear as a search result. Set as `null` for always available.|
|availabilityEndDateTime|DateTimeOffset|Timestamp of when the qna will stop to appear as a search result. Set as `null` for always available.|
|languageTags|String collection|List of countries or regions able to view this qna.|
|platforms|microsoft.graph.devicePlatformType collection|List of devices and operating systems able to view this qna. Possible values are: `unknown`, `android`, `androidForWork`, `ios`, `macOS`, `windowsPhone81`, `windowsPhone81AndLater`, `windows10AndLater`, `androidWorkProfile`, `androidASOP`.|
|targetedVariations|[microsoft.graph.search.answerVariant](../resources/search-answerVariant.md) collection|Variations of a qna for different countries or devices. Use when you need to show different content to users based on their device, country/region, or both. The date and group settings will apply to all variations.|
|keywords|[microsoft.graph.search.answerKeyword](../resources/search-answerKeyword.md)|Keywords that trigger this qna to appear in search results.|
|state|microsoft.graph.search.answerState|State of the qna. Possible values are: `published`, `draft`, `excluded`, or `unknownFutureValue`.|
|groupIds|String collection|List of security groups able to view this qna.|



## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_qna"
}-->
``` http
PATCH https://graph.microsoft.com/beta/search/qnas/{qnaId}
Content-Type: application/json

{
    "description": "The dates that Contoso offices will be closed to observe holidays. These dates may differ from the actual date of the holiday in cases where the holiday falls on a wee​kend."
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-qna-csharp-snippets.md)]
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
<!-- {
  "blockType": "response",
  "truncated": true
}-->
``` http
HTTP/1.1 204 No Content
```

