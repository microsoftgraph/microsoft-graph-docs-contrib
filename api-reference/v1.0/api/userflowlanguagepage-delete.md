---
title: "Delete userFlowLanguagePage"
description: "Deletes the values in an userFlowLanguagePage object."
author: "nanguil"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 07/09/2024
---

# Delete userFlowLanguagePage

Namespace: microsoft.graph

Deletes the values in an [userFlowLanguagePage](../resources/userflowlanguagepage.md) object. You may only delete the values in an overridesPage, which is used to customize the values shown to a user during a user journey defined by a user flow.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "userflowlanguagepage_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/userflowlanguagepage-delete-permissions.md)]

[!INCLUDE [rbac-b2xb2c-user-flows-apis](../includes/rbac-for-apis/rbac-b2xb2c-user-flows-apis.md)]

## HTTP request

To reference the content within the object, you must use `$value`. This returns the content within the object and allows you to reference it directly.

<!-- {
  "blockType": "ignored"
}
-->

``` http
DELETE /identity/b2xUserFlows/{id}/languages/{id}/overridesPages/$value
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_userflowlanguagepage",
  "sampleKeys": ["B2X_1_Partner", "en", "selfasserted1_1"]
}
-->

``` http
DELETE https://graph.microsoft.com/beta/identity/b2xUserFlows/B2X_1_Partner/languages/en/overridesPages/selfasserted1_1/$value
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-userflowlanguagepage-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/delete-userflowlanguagepage-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-userflowlanguagepage-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-userflowlanguagepage-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-userflowlanguagepage-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-userflowlanguagepage-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-userflowlanguagepage-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-userflowlanguagepage-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
