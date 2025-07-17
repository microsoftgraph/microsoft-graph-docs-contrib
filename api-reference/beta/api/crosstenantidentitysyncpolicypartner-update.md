---
title: "Update crossTenantIdentitySyncPolicyPartner"
description: "Update the user synchronization policy of a partner-specific configuration."
author: "rolyon"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 10/17/2024
---

# Update crossTenantIdentitySyncPolicyPartner

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the user synchronization policy of a partner-specific configuration.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "crosstenantidentitysyncpolicypartner_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/crosstenantidentitysyncpolicypartner-update-permissions.md)]

[!INCLUDE [rbac-xtap-apis-write](../includes/rbac-for-apis/rbac-xtap-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /policies/crossTenantAccessPolicy/partners/{id}/identitySynchronization
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Display name for the cross-tenant user synchronization policy. Generally, this should be the tenant name of the partner Microsoft Entra organization. Optional.|
|userSyncInbound|[crossTenantUserSyncInbound](../resources/crosstenantusersyncinbound.md)|Determines whether users can be synchronized from the partner tenant. `false` causes any current user synchronization from the source tenant to the target tenant to stop. This property has no impact on existing users who have already been synchronized.|

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_crosstenantidentitysyncpolicypartner"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/policies/crossTenantAccessPolicy/partners/90e29127-71ad-49c7-9ce8-db3f41ea06f1/identitySynchronization
Content-Type: application/json

{
  "userSyncInbound": {
    "isSyncAllowed": true
  }
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-crosstenantidentitysyncpolicypartner-javascript-snippets.md)]
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
