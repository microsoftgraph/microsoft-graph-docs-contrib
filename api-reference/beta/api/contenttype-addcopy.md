---
author: swapnil1993
title: "contentType: addCopy"
description: "Add a copy of a site content type to a list."
ms.localizationpriority: medium
doc_type: apiPageType
ms.subservice: "sharepoint"
ms.topic: reference
---

# contentType: addCopy
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]
Add a copy of a [content type][contentType] from a [site][site] to a [list][list].
 
  

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions  

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

  

<!-- { "blockType": "permissions", "name": "contenttype_addcopy" } -->
[!INCLUDE [permissions-table](../includes/permissions/contenttype-addcopy-permissions.md)]

  

## HTTP request
<!-- {
  "blockType": "ignored"
}
-->
```http
POST /sites/{site-id}/lists/{list-id}/contentTypes/addCopy
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|-|-|-|
|contentType| string | Canonical URL to the site content type that is copied to the list. Required.|

## Response

If successful, this call returns a `201 Created` response code and a [contentType][] object in the response body.

## Example

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "contenttype_addcopy"
}
-->
```http
POST https://graph.microsoft.com/beta/sites/{site-id}/lists/{list-id}/contentTypes/addCopy
Content-Type: application/json

{
  "contentType": "https://graph.microsoft.com/beta/sites/id/contentTypes/0x0101"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/contenttype-addcopy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/contenttype-addcopy-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/contenttype-addcopy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/contenttype-addcopy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/contenttype-addcopy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/contenttype-addcopy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/contenttype-addcopy-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/contenttype-addcopy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- { "blockType": "response", "@type": "microsoft.graph.contentType", "truncated": true} -->

```http
HTTP/1.1 201 Created

{
    "id": "0x0101",
    "description": "Create a new custom CSR JavaScript Display Template.",
    "group": "Display Template Content Types",
    "hidden": false,
    "name": "JavaScript Display Template",
    "parentId": "0x01",
    "readOnly": false,
    "sealed": false,
    "base": {
        "id": "0x01",
        "description": "Create a new custom CSR JavaScript Display Template.",
        "group": "Display Template Content Types",
        "hidden": false,
        "name": "JavaScript Display Template",
        "readOnly": false,
        "sealed": false
    }
}
```

[site]: ../resources/site.md
[list]: ../resources/list.md
[contentType]: ../resources/contentType.md
