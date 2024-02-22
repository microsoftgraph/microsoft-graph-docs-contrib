---
title: "crossTenantAccessPolicyConfigurationDefault: resetToSystemDefault"
description: "Reset any changes made to the default configuration in a cross-tenant access policy back to the system default."
author: "jkdouglas"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# crossTenantAccessPolicyConfigurationDefault: resetToSystemDefault

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Reset any changes made to the default configuration in a cross-tenant access policy back to the system default.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "crosstenantaccesspolicyconfigurationdefault_resettosystemdefault" } -->
[!INCLUDE [permissions-table](../includes/permissions/crosstenantaccesspolicyconfigurationdefault-resettosystemdefault-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

``` http
POST /policies/crossTenantAccessPolicy/default/resetToSystemDefault
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code. To confirm that the default configuration has been restored to the system defaults, run [Get crossTenantAccessPolicyConfigurationDefault](../api/crosstenantaccesspolicyconfigurationdefault-get.md) and confirm that **isSystemDefault** is set to `true`.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "crosstenantaccesspolicyconfigurationdefault_resettosystemdefault"
}
-->

``` http
POST https://graph.microsoft.com/beta/policies/crossTenantAccessPolicy/default/resetToSystemDefault
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/crosstenantaccesspolicyconfigurationdefault-resettosystemdefault-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/crosstenantaccesspolicyconfigurationdefault-resettosystemdefault-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/crosstenantaccesspolicyconfigurationdefault-resettosystemdefault-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/crosstenantaccesspolicyconfigurationdefault-resettosystemdefault-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/crosstenantaccesspolicyconfigurationdefault-resettosystemdefault-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/crosstenantaccesspolicyconfigurationdefault-resettosystemdefault-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/crosstenantaccesspolicyconfigurationdefault-resettosystemdefault-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/crosstenantaccesspolicyconfigurationdefault-resettosystemdefault-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

``` http
HTTP/1.1 204 No Content
```
