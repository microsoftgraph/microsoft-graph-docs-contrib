---
title: "Get qna"
description: "Read the properties and relationships of a qna object."
author: "jakeost-msft"
ms.localizationpriority: medium
ms.subservice: "search"
doc_type: apiPageType
ms.topic: reference
---

# Get qna

Namespace: microsoft.graph.search

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [qna](../resources/search-qna.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "search_qna_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/search-qna-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /search/qnas/{qnaId}
```

## Optional query parameters

This method supports the `select`, `expand`, `filter`, `orderBy`, `maxTop`, and `count` [OData query parameters](/graph/query-parameters) to help customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoft.graph.search.qna](../resources/search-qna.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_qna"
}
-->
``` http
GET https://graph.microsoft.com/beta/search/qnas/733b26d5-af76-4eea-ac69-1a0ce8716897
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-qna-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-qna-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-qna-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-qna-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-qna-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-qna-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-qna-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-qna-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.search.qna"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "id": "733b26d5-af76-4eea-ac69-1a0ce8716897",
    "displayName": "Global Country Holidays",
    "webUrl": "http://www.contoso.com/",
    "description": "The dates that Contoso offices will be closed to observe holidays. These dates may differ from the actual date of the holiday in cases where the holiday falls on a wee​kend.",
    "lastModifiedDateTime": "2016-03-21T20:01:37Z",
    "lastModifiedBy": {
        "user": {
            "id": "efee1b77-fb3b-4f65-99d6-274c11914d12",
            "displayName": "Amalie Larsen"
        }
    },
    "keywords":  {
      "keywords": ["new years day", "martin luther king day", "presidents day", "memorial day", "independence day", "labor day", "thanksgiving", "christmas"],
      "reservedKeywords": ["holidays", "paid days off"],
      "matchSimilarKeywords": true
    },
    "availabilityStartDateTime": "2020-09-21T20:01:37Z",
    "availabilityEndDateTime": "2021-12-31T20:01:37Z",
    "languageTags": ["en-us"],
    "platforms": ["ios"],
    "groupIds": ["groupId"],
    "targetedVariations": null,
    "state": "published"
}
```
