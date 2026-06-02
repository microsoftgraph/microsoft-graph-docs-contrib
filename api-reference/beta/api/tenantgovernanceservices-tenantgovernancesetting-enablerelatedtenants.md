---
title: "tenantGovernanceSetting: enableRelatedTenants"
description: "Enable the related tenants feature for tenant discovery."
author: "hafowler"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# tenantGovernanceSetting: enableRelatedTenants

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Enable the related tenants feature for tenant discovery. After calling this action, the **isRelatedTenantsEnabled** property of [tenantGovernanceSetting](../resources/tenantgovernanceservices-tenantgovernancesetting.md) is set to `true`, which allows the use of related tenant APIs.

> [!IMPORTANT]
> This action must be called before using any related tenant APIs. Related tenant APIs won't run successfully unless this feature is explicitly enabled.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "tenantgovernanceservices_tenantgovernancesetting_enablerelatedtenants" } -->
[!INCLUDE [permissions-table](../includes/permissions/tenantgovernanceservices-tenantgovernancesetting-enablerelatedtenants-permissions.md)]

[!INCLUDE [rbac-tenant-governance-apis-write](../includes/rbac-for-apis/rbac-tenant-governance-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /directory/tenantGovernance/settings/enableRelatedTenants
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "tenantgovernancesettingthis.enablerelatedtenants"
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/tenantGovernance/settings/enableRelatedTenants
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/tenantgovernancesettingthisenablerelatedtenants-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/tenantgovernancesettingthisenablerelatedtenants-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/tenantgovernancesettingthisenablerelatedtenants-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/tenantgovernancesettingthisenablerelatedtenants-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/tenantgovernancesettingthisenablerelatedtenants-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/tenantgovernancesettingthisenablerelatedtenants-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/tenantgovernancesettingthisenablerelatedtenants-python-snippets.md)]
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

