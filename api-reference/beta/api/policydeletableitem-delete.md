---
title: "Delete policyDeletableItem"
description: "Permanently delete a policyDeletableItem object."
author: "ashyasingh"
ms.date: 10/07/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Delete policyDeletableItem

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]


Permanently delete a [policyDeletableItem](../resources/policydeletableitem.md) object, which might be one of the following deleted policy types:
- [crossTenantAccessPolicyConfigurationPartner](../resources/crosstenantaccesspolicyconfigurationpartner.md)
- [crossTenantIdentitySyncPolicyPartner](../resources/crosstenantidentitysyncpolicypartner.md)
- [conditionalAccessPolicy](../resources/conditionalaccesspolicy.md)
- [namedLocation](../resources/namedlocation.md)

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### Permissions for restoring cross-tenant access policy objects

<!-- {
  "blockType": "permissions",
  "name": "policydeletableitem-delete-permissions",
  "requestUrls": ["DELETE /policies/deletedItems/crossTenantPartners/{id}", "DELETE /policies/deletedItems/crossTenantSyncPolicyPartners/{id}"],
  "mergePermissions": true 
}
-->
[!INCLUDE [permissions-table](../includes/permissions/policydeletableitem-delete-permissions.md)]

[!INCLUDE [rbac-xtap-apis-write](../includes/rbac-for-apis/rbac-xtap-apis-write.md)]

### Permissions for restoring conditional access policy objects

<!-- {
  "blockType": "permissions",
  "name": "policydeletableitem-delete-permissions",
  "requestUrls": ["DELETE /identity/conditionalAccess/deletedItems/policies/{id}", "DELETE /identity/conditionalAccess/deletedItems/namedLocations/{id}"],
  "mergePermissions": true 
}
-->
[!INCLUDE [permissions-table](../includes/permissions/policydeletableitem-delete-2-permissions.md)]

[!INCLUDE [rbac-conditionalaccess-apis-write](../includes/rbac-for-apis/rbac-conditionalaccess-apis-write.md)]

## HTTP request

Permanently delete a **crossTenantAccessPolicyConfigurationPartner** object:
<!-- {
  "blockType": "ignored"
}
-->
```http
DELETE /policies/deletedItems/crossTenantPartners/{id}
```


Permanently delete a **crossTenantIdentitySyncPolicyPartner** object:
<!-- {
  "blockType": "ignored"
}
-->
```http
DELETE /policies/deletedItems/crossTenantSyncPolicyPartners/{id}
```

Permanently delete a  **conditionalAccessPolicy** object:
<!-- {
  "blockType": "ignored"
}
-->
```http
DELETE /identity/conditionalAccess/deletedItems/policies/{id}
```

Permanently delete a  **namedLocation** object:
<!-- {
  "blockType": "ignored"
}
-->
```http
DELETE /identity/conditionalAccess/deletedItems/namedLocations/{id}
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
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_policydeletableitem_crossTenantAccessPolicyConfigurationPartner"
}
-->
```HTTP
DELETE https://graph.microsoft.com/beta/policies/deletedItems/crossTenantPartners/809cbbd2-2325-4c17-bd51-f8f098db19c8
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-policydeletableitem-crosstenantaccesspolicyconfigurationpartner-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-policydeletableitem-crosstenantaccesspolicyconfigurationpartner-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-policydeletableitem-crosstenantaccesspolicyconfigurationpartner-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-policydeletableitem-crosstenantaccesspolicyconfigurationpartner-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-policydeletableitem-crosstenantaccesspolicyconfigurationpartner-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-policydeletableitem-crosstenantaccesspolicyconfigurationpartner-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

### Example 2: Permanently delete a deleted crossTenantIdentitySyncPolicyPartner object

#### Request

The following example shows a request for crossTenantIdentitySyncPolicyPartner.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_policydeletableitem_crossTenantIdentitySyncPolicyPartner"
}
-->
```HTTP
DELETE https://graph.microsoft.com/beta/policies/deletedItems/crossTenantSyncPolicyPartners/809cbbd2-2325-4c17-bd51-f8f098db19c8
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-policydeletableitem-crosstenantidentitysyncpolicypartner-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-policydeletableitem-crosstenantidentitysyncpolicypartner-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-policydeletableitem-crosstenantidentitysyncpolicypartner-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-policydeletableitem-crosstenantidentitysyncpolicypartner-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-policydeletableitem-crosstenantidentitysyncpolicypartner-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-policydeletableitem-crosstenantidentitysyncpolicypartner-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

### Example 3: Permanently delete a deleted conditionalAccessPolicy object

#### Request

The following example shows a request for conditionalAccessPolicy.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_policydeletableitem_conditionalAccessPolicy"
}
-->
```HTTP
DELETE https://graph.microsoft.com/beta/identity/conditionalAccess/deletedItems/policies/4fa582af-f900-495c-9772-ccf34d5a95fc
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-policydeletableitem-conditionalaccesspolicy-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-policydeletableitem-conditionalaccesspolicy-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-policydeletableitem-conditionalaccesspolicy-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-policydeletableitem-conditionalaccesspolicy-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-policydeletableitem-conditionalaccesspolicy-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-policydeletableitem-conditionalaccesspolicy-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

### Example 4: Permanently delete a deleted namedLocation object

#### Request

The following example shows a request for namedLocation.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_policydeletableitem_namedLocation"
}
-->
```HTTP
DELETE https://graph.microsoft.com/beta/identity/conditionalAccess/deletedItems/namedLocations/b5b69bc9-3e36-4fa0-bc7f-f0e5fd3aebf1
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-policydeletableitem-namedlocation-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-policydeletableitem-namedlocation-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-policydeletableitem-namedlocation-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-policydeletableitem-namedlocation-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-policydeletableitem-namedlocation-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-policydeletableitem-namedlocation-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

