---
title: "Delete Microsoft 365 capability for partner"
description: "Delete a Microsoft 365 cross-tenant capability from a partner organization in the cross-tenant access policy."
author: "lasharma"
ms.date: 07/07/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
toc.title: Delete Microsoft 365 capability
---

# Delete Microsoft 365 capability for partner

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a Microsoft 365 cross-tenant capability from a partner organization in the [cross-tenant access policy](../resources/crosstenantaccesspolicy-overview.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "crosstenantaccesspolicyconfigurationpartner_delete_m365capabilities" } -->
[!INCLUDE [permissions-table](../includes/permissions/crosstenantaccesspolicyconfigurationpartner-delete-m365capabilities-permissions.md)]

[!INCLUDE [rbac-xtap-m365capabilities-apis-write](../includes/rbac-for-apis/rbac-xtap-m365capabilities-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /policies/crossTenantAccessPolicy/partners/{crossTenantAccessPolicyConfigurationPartner-id}/m365Capabilities/{m365CapabilityBase-name}
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
<!-- {
  "blockType": "request",
  "name": "delete_m365capabilitybase_partner",
  "sampleKeys": ["e8c338c6-d070-466e-a3d5-ca735b9261b4", "crossTenantOpenProfileCard"]
}
-->
``` http
DELETE https://graph.microsoft.com/beta/policies/crossTenantAccessPolicy/partners/e8c338c6-d070-466e-a3d5-ca735b9261b4/m365Capabilities/crossTenantOpenProfileCard
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
