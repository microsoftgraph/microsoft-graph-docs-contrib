---
title: "contentType: getCompatibleHubContentTypes"
description: "Get compatible content types in content type hub that can be added to a target site or a list."
author: "swapnil1993"
ms.localizationpriority: medium
ms.prod: "sites-and-lists"
doc_type: apiPageType
---

# contentType: getCompatibleHubContentTypes
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get compatible content types in the content type hub that can be added to a target [site](../resources/site.md) or a [list](../resources/list.md).

This method is part of the content type publishing changes to optimize the syncing of published content types to sites and lists, effectively switching from a "push everywhere" to "pull as needed" approach. The method allows users to pull content types directly from the content type hub to a site or list. For more information, see [addCopyFromContentTypeHub](contenttype-addcopyfromcontenttypehub.md) and the blog post [Syntex Product Updates – August 2021](https://techcommunity.microsoft.com/t5/sharepoint-syntex-blog/syntex-product-updates-august-2021/ba-p/2606438).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account) | Sites.Manage.All, Sites.FullControl.All |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Sites.Manage.All, Sites.FullControl.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /sites/{siteId}/lists/{listId}/contentTypes/getCompatibleHubContentTypes
GET /sites/{siteId}/contentTypes/getCompatibleHubContentTypes
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [contentType](../resources/contenttype.md) collection in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "contenttype_getcompatiblehubcontenttypes"
}
-->
``` http
GET https://graph.microsoft.com/beta/sites/{siteId}/lists/{listId}/contentTypes/getCompatibleHubContentTypes
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/contenttype-getcompatiblehubcontenttypes-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/contenttype-getcompatiblehubcontenttypes-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/contenttype-getcompatiblehubcontenttypes-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/contenttype-getcompatiblehubcontenttypes-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/contenttype-getcompatiblehubcontenttypes-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.contentType)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.contentType",
      "id": "0x0101",
      "description": "Document content type",
      "group": "Document Content Types",
      "hidden": false,
      "isBuiltIn": true,
      "name": "Document"
    }
  ]
}
```

