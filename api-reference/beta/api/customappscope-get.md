---
title: "Get customAppScope"
description: "Get the properties of a customAppScope object for an RBAC provider."
ms.localizationpriority: medium
author: "cubika"
ms.prod: "directory-management"
doc_type: "apiPageType"
---

# Get customAppScope

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties of a [customAppScope](../resources/customappscope.md) object for an RBAC provider.

Currently only the Exchange Online RBAC provider is supported.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "customappscope_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/customappscope-get-permissions.md)]

## HTTP request

For an Exchange Online provider:

<!-- { "blockType": "ignored" } -->

```http
GET /roleManagement/exchange/customAppScopes/{id}
```

## Optional query parameters

This method does not support [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [customAppScope](../resources/customappscope.md) object in the response body.

## Examples

<!-- ### Example 1 : Get details of a custom app scope object for Exchange Online Provider -->

### Request

The following example shows how to get details of a **customAppScope** object for an Exchange Online provider.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_customAppScope_ExchangeOnlineProvider",
  "sampleKeys": ["a6a7ef59-ff39-46b1-ae6b-2d9c4d6380cd"]
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/roleManagement/exchange/customAppScopes/a6a7ef59-ff39-46b1-ae6b-2d9c4d6380cd
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-customappscope-exchangeonlineprovider-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-customappscope-exchangeonlineprovider-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-customappscope-exchangeonlineprovider-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-customappscope-exchangeonlineprovider-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-customappscope-exchangeonlineprovider-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-customappscope-exchangeonlineprovider-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-customappscope-exchangeonlineprovider-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-customappscope-exchangeonlineprovider-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.customAppScope"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/exchange/customAppScopes/$entity",
    "id": "a6a7ef59-ff39-46b1-ae6b-2d9c4d6380cd",
    "type": "RecipientScope",
    "displayName": "test1",
    "customAttributes": {
        "Exclusive": false,
        "RecipientFilter": "City -eq 'Seattle'"
    }
}
```
