---
author: "vanshisingh"
title: "List recycleBinItems"
description: "Get a list of recycleBinItems under the specified site."
ms.localizationpriority: "medium"
ms.prod: "sharepoint"
doc_type: apiPageType
---

# List recycleBinItems

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [recycleBinItems](../resources/recyclebinitem.md) under the specified site.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                                           |
|:---------------------------------------|:------------------------------------------------------------------------------------------------------|
| Delegated (work or school account)     | Files.Read, Files.Read.All, Files.ReadWrite, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All |
| Delegated (personal Microsoft account) | Files.Read, Files.ReadWrite, Files.Read.All, Files.ReadWrite.All                                      |
| Application                            | Files.Read.All, Files.ReadWrite.All, Sites.Read.All, Sites.ReadWrite.All                              |

## HTTP request

<!-- { "blockType": "ignored" } -->
``` http
GET /sites/{siteId}/recycleBin/items
```

## Optional query parameters

This method supports the `$select` and `$top` OData query parameters to customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name          |Description              |
|:-------------|:------------------------|
|Authorization |Bearer {token}. Required.|

## Request Body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [recycleBinItem](../resources/recyclebinitem.md) objects in the response body.

## Examples

### Request

The following example shows a request to list all **recycleBinItems** under a specific site.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_recycleBinItems",
  "sampleKeys": ["contoso.sharepoint.com,48f1898f-77d9-4a1b-bddc-1f49bb6dc134,7206fc09-e4af-48b3-8730-ed7321396d7a"]
}-->
``` http
GET https://graph.microsoft.com/beta/sites/contoso.sharepoint.com,48f1898f-77d9-4a1b-bddc-1f49bb6dc134,7206fc09-e4af-48b3-8730-ed7321396d7a/recycleBin/items
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-recyclebinitems-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-recyclebinitems-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-recyclebinitems-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-recyclebinitems-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-recyclebinitems-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-recyclebinitems-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-recyclebinitems-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.recycleBinItem)"
} -->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
   "value": [
    {
        "id": "825e764f-c118-438f-b5c4-b8fbe60ab569",
        "name": "file1.txt",
        "size": 469,
        "deletedDateTime": "2023-03-27T12:06:59Z",
        "deletedFromLocation": "Shared Documents/folder1"
    }
  ]
}
```

<!-- {
"type": "#page.annotation",
"section": "documentation"
}-->
