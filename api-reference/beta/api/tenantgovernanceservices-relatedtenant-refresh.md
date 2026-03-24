---
title: "relatedTenant: refresh"
description: "Refresh the related tenants list"
author: "akhil-potturi"
ms.date: 03/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-id"
doc_type: apiPageType
---

# relatedTenant: refresh

Namespace: microsoft.graph.tenantGovernanceServices

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Manually refresh the list of [related tenants](../resources/tenantgovernanceservices-relatedtenant.md). The list is also automatically refreshed daily.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "tenantgovernanceservices_relatedtenant_refresh" } -->
[!INCLUDE [permissions-table](../includes/permissions/tenantgovernanceservices-relatedtenant-refresh-permissions.md)]

[!INCLUDE [rbac-tenant-governance-apis-write](../includes/rbac-for-apis/rbac-tenant-governance-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /directory/tenantGovernance/relatedTenants/refresh
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
<!-- {
  "blockType": "request",
  "name": "relatedtenantthis.refresh"
}
-->
``` http
POST https://graph.microsoft.com/beta/directory/tenantGovernance/relatedTenants/refresh
```


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

