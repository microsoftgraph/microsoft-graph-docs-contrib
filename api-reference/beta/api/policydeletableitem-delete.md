---
title: "Permanently delete policyDeletableItem"
description: "Permanently delete a policyDeletableItem object."
author: "ashyasingh"
ms.date: 06/18/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Permanently delete policyDeletableItem

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Permanently delete a [policyDeletableItem](../resources/policydeletableitem.md) object, which might be one of the following deleted policy types:
- [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md)
- [crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md)

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "policydeletableitem-delete-permissions",
  "requestUrls": ["DELETE /policies/deletedItems/crossTenantPartners/{id}", "DELETE /policies/deletedItems/crossTenantSyncPolicyPartners/{id}"],
  "mergePermissions": true 
}
-->
[!INCLUDE [permissions-table](../includes/permissions/policydeletableitem-delete-permissions.md)]

## HTTP request

Permanently delete a **crossTenantAccessPolicyConfigurationPartner** object:
<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /policies/deletedItems/crossTenantPartners/{id}
```


Permanently delete a **crossTenantIdentitySyncPolicyPartner** object:
<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /policies/deletedItems/crossTenantSyncPolicyPartners/{id}
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

### Example 1: Permanently delete a deleted crossTenantAccessPolicyConfigurationPartner object

#### Request

The following example shows a request for crossTenantAccessPolicyConfigurationPartner.
<!-- {
  "blockType": "request",
  "name": "delete_policydeletableitem_crossTenantAccessPolicyConfigurationPartner"
}
-->
```HTTP
DELETE https://graph.microsoft.com/beta/policies/deletedItems/crossTenantPartners/809cbbd2-2325-4c17-bd51-f8f098db19c8
```


#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 2: Permanently delete a deleted crossTenantIdentitySyncPolicyPartner object

#### Request

The following example shows a request for crossTenantIdentitySyncPolicyPartner.
<!-- {
  "blockType": "request",
  "name": "delete_policydeletableitem_crossTenantIdentitySyncPolicyPartner"
}
-->
```HTTP
DELETE https://graph.microsoft.com/beta/policies/deletedItems/crossTenantSyncPolicyPartners/809cbbd2-2325-4c17-bd51-f8f098db19c8
```


#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
