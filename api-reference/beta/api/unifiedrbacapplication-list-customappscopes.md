---
title: "List customAppScopes"
description: "Get a list of customAppScope objects for an RBAC provider."
ms.localizationpriority: medium
author: "cubika"
ms.subservice: "entra-directory-management"
doc_type: "apiPageType"
ms.date: 04/04/2024
---

# List customAppScopes

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [customAppScope](../resources/customappscope.md) objects for an RBAC provider.

Currently only the Exchange Online RBAC provider is supported.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "unifiedrbacapplication_list_customappscopes" } -->
[!INCLUDE [permissions-table](../includes/permissions/unifiedrbacapplication-list-customappscopes-permissions.md)]

## HTTP request

For an Exchange Online provider:

<!-- { "blockType": "ignored" } -->

```http
GET /roleManagement/exchange/customAppScopes
```

## Optional query parameters

This method supports the `$filter` and `$count` [OData query parameters](/graph/query-parameters) to help customize the response. Note that `$filter` doesn't work for nested properties stored in the **customAttributes** property.

## Request headers

| Name      |Description|
|:----------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [customAppScope](../resources/customappscope.md) objects in the response body.

## Examples

<!--### Example 1: Request all custom app scope objects for Exchange Online Provider-->

### Request

The following example shows how to request all **customAppScope** objects of an Exchange Online provider.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_customAppScope_ExchangeOnlineProvider"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/roleManagement/exchange/customAppScopes
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-customappscope-exchangeonlineprovider-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-customappscope-exchangeonlineprovider-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-customappscope-exchangeonlineprovider-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-customappscope-exchangeonlineprovider-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-customappscope-exchangeonlineprovider-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-customappscope-exchangeonlineprovider-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-customappscope-exchangeonlineprovider-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-customappscope-exchangeonlineprovider-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.customAppScope)"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#roleManagement/exchange/customAppScopes",
    "value": [
        {
            "id": "a6a7ef59-ff39-46b1-ae6b-2d9c4d6380cd",
            "type": "RecipientScope",
            "displayName": "scope 1",
            "customAttributes": {
                "Exclusive": false,
                "RecipientFilter": "City -eq 'Seattle'"
            }
        },
        {
            "id": "0b708633-b2ea-4673-b630-18922c345560",
            "type": "RecipientScope",
            "displayName": "scope 2",
            "customAttributes": {
                "Exclusive": false,
                "RecipientFilter": "ExternalDirectoryObjectId -eq '45ad6645-57a8-4fef-ad2f-ac5bd3de7d7c'"
            }
        }
    ]
}
```
