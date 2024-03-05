---
title: "Delete customAppScope"
description: "Delete a customAppScope object of an RBAC provider."
ms.localizationpriority: medium
author: "cubika"
ms.prod: "directory-management"
doc_type: "apiPageType"
---

# Delete customAppScope

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [customAppScope](../resources/customappscope.md) object of an RBAC provider.

Currently only the Exchange Online RBAC provider is supported.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "customappscope_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/customappscope-delete-permissions.md)]

## HTTP request

For an Exchange Online provider:
<!-- { "blockType": "ignored" } -->
```http
DELETE /roleManagement/exchange/customAppScopes/{id}
```

## Request headers

| Name | Description |
|:---- |:----------- |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Example

<!--### Example 1: Delete a customAppScope object in an Exchange Online provider-->

### Request

The following example shows how to delete a **customAppScope** object in an Exchange Online provider.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_customAppScope_ExchangeOnlineProvider",
  "sampleKeys": ["d101e64d-4684-4970-ba7b-735b6b27628f"]
}
-->
```http
DELETE https://graph.microsoft.com/beta/roleManagement/exchange/customAppScopes/d101e64d-4684-4970-ba7b-735b6b27628f
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-customappscope-exchangeonlineprovider-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/delete-customappscope-exchangeonlineprovider-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-customappscope-exchangeonlineprovider-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-customappscope-exchangeonlineprovider-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-customappscope-exchangeonlineprovider-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-customappscope-exchangeonlineprovider-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-customappscope-exchangeonlineprovider-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-customappscope-exchangeonlineprovider-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```
