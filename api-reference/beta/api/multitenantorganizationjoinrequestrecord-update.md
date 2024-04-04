---
title: "Update multiTenantOrganizationJoinRequestRecord"
description: "Join a multi-tenant organization."
author: "rolyon"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.topic: reference
---

# Update multiTenantOrganizationJoinRequestRecord
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Join a multi-tenant organization, after the owner of the multi-tenant organization has added your tenant to the multi-tenant organization as pending.

Before a tenant added to a multi-tenant organization can participate in the multi-tenant organization, the administrator of the joining tenant must submit a join request.

To allow for asynchronous processing, you must wait a **minimum of 2 hours** between creation and joining a multi-tenant organization.

Furthermore, to allow for asynchronous processing, you must wait **up to 4 hours** before joining a multi-tenant organization is completed.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "multitenantorganizationjoinrequestrecord_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/multitenantorganizationjoinrequestrecord-update-permissions.md)]

[!INCLUDE [rbac-multitenantorganization-apis-write](../includes/rbac-for-apis/rbac-multitenantorganization-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /tenantRelationships/multiTenantOrganization/joinRequest
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
|addedByTenantId|String|Tenant ID of the Microsoft Entra tenant that added the current tenant to the multi-tenant organization. To reset a failed join request, set `addedByTenantId` to `00000000-0000-0000-0000-000000000000`. Required.|


## Response

If successful, this method returns a `204 No Content` response code.

A join request might be unsuccessful. The following are some scenarios:

* The joining tenant has not been added to the multi-tenant organization by its owner.
* The owner or joiner tenant exceeds the maximum number of internal users per tenant.
* The multi-tenant organization would exceed the maximum number of tenants.
* The joining tenant is already part of a different multi-tenant organization.

## Examples

### Example 1: Join a multi-tenant organization

The following example shows a request by the current tenant to join a multi-tenant organization. It can take a few minutes for the join to complete. If the join succeeds, the state of the tenant is changed to `active`.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_multitenantorganizationjoinrequestrecord"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/tenantRelationships/multiTenantOrganization/joinRequest
Content-Type: application/json

{
    "addedByTenantId": "1fd6544e-e994-4de2-9f1b-787b51c7d325"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-multitenantorganizationjoinrequestrecord-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-multitenantorganizationjoinrequestrecord-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-multitenantorganizationjoinrequestrecord-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-multitenantorganizationjoinrequestrecord-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-multitenantorganizationjoinrequestrecord-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-multitenantorganizationjoinrequestrecord-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-multitenantorganizationjoinrequestrecord-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-multitenantorganizationjoinrequestrecord-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 2: Reset a failed join request

The following example shows a request by the current tenant to reset a failed join request. To reset a failed join request, set `addedByTenantId` to `00000000-0000-0000-0000-000000000000`.

#### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_multitenantorganizationjoinrequestrecord_joinfailed"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/tenantRelationships/multiTenantOrganization/joinRequest
Content-Type: application/json

{
    "addedByTenantId": "00000000-0000-0000-0000-000000000000"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-multitenantorganizationjoinrequestrecord-joinfailed-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-multitenantorganizationjoinrequestrecord-joinfailed-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-multitenantorganizationjoinrequestrecord-joinfailed-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-multitenantorganizationjoinrequestrecord-joinfailed-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-multitenantorganizationjoinrequestrecord-joinfailed-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-multitenantorganizationjoinrequestrecord-joinfailed-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-multitenantorganizationjoinrequestrecord-joinfailed-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-multitenantorganizationjoinrequestrecord-joinfailed-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
