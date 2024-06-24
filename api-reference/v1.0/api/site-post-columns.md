---
author: swapnil1993
title: "Create a columnDefinition in a site"
description: "Create a site column."
ms.localizationpriority: medium
doc_type: apiPageType
ms.subservice: "sharepoint"
---

# Create a columnDefinition in a site
Namespace: microsoft.graph

Create a column for a [site][site] with a request that specifies a [columnDefinition][columnDefinition].

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

  

<!-- { "blockType": "permissions", "name": "site_post_columns" } -->
[!INCLUDE [permissions-table](../includes/permissions/site-post-columns-permissions.md)]

  

## HTTP request

<!-- { "blockType": "ignored" } -->
```http
POST /sites/{site-id}/columns
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [columnDefinition][] resource to add.  

## Response

If successful, this method returns a `201 Created` response code and [columnDefinition][] object in the response body.

## Example

### Request

# [HTTP](#tab/http)
<!-- { "blockType": "request", "name": "site_post_columns" } -->
```http
POST https://graph.microsoft.com/v1.0/sites/{site-id}/columns
Content-Type: application/json

{
   "description":"test",
   "enforceUniqueValues":false,
   "hidden":false,
   "indexed":false,
   "name":"Title",
   "text":{
      "allowMultipleLines":false,
      "appendChangesToExistingText":false,
      "linesForEditing":0,
      "maxLength":255
   }
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/site-post-columns-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/site-post-columns-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/site-post-columns-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/site-post-columns-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/site-post-columns-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/site-post-columns-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/site-post-columns-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/site-post-columns-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- { "blockType": "response", "@type": "microsoft.graph.columnDefinition", "truncated": true } -->

  

```http
HTTP/1.1 201 Created
Content-type: application/json

{
   "description":"test",
   "displayName":"Title",
   "enforceUniqueValues":false,
   "hidden":false,
   "id":"99ddcf45-e2f7-4f17-82b0-6fba34445103",
   "indexed":false,
   "name":"Title",
   "text":{
      "allowMultipleLines":false,
      "appendChangesToExistingText":false,
      "linesForEditing":0,
      "maxLength":255
   }
}
```

  

[columnDefinition]: ../resources/columnDefinition.md
[site]: ../resources/site.md
  

