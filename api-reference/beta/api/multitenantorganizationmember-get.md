---
title: "Get multiTenantOrganizationMember"
description: "Get a tenant and its properties in the multi-tenant organization."
author: "rolyon"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get multiTenantOrganizationMember
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a tenant and its properties in the multi-tenant organization.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "multitenantorganizationmember_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/multitenantorganizationmember-get-permissions.md)]

If called with MultiTenantOrganization.ReadBasic.All permission, the caller can only read the **displayName** and **tenantId** properties.

[!INCLUDE [rbac-multitenantorganization-apis-read](../includes/rbac-for-apis/rbac-multitenantorganization-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/multiTenantOrganization/tenants/{tenantId}
```

## Optional query parameters
This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [multiTenantOrganizationMember](../resources/multitenantorganizationmember.md) object in the response body.

## Examples

The following example gets a tenant and its properties in the multi-tenant organization.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_multitenantorganizationmember"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/multiTenantOrganization/tenants/1fd6544e-e994-4de2-9f1b-787b51c7d325
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-multitenantorganizationmember-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-multitenantorganizationmember-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-multitenantorganizationmember-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-multitenantorganizationmember-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-multitenantorganizationmember-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-multitenantorganizationmember-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-multitenantorganizationmember-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-multitenantorganizationmember-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.multiTenantOrganizationMember"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#tenantRelationships/multiTenantOrganization/tenants/$entity",
    "tenantId": "1fd6544e-e994-4de2-9f1b-787b51c7d325",
    "displayName": "Contoso",
    "addedDateTime": "2023-05-26T22:05:23Z",
    "joinedDateTime": null,
    "addedByTenantId": "1fd6544e-e994-4de2-9f1b-787b51c7d325",
    "role": "owner",
    "state": "active",
    "transitionDetails": null
}
```

If an update is in progress, `transitionDetails` lists information about the update. The following response indicates the role is being changed from member to owner.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#tenantRelationships/multiTenantOrganization/tenants/$entity",
    "tenantId": "5036a0a0-a7a4-4933-9086-5dd54535dd6e",
    "displayName": "Woodgrove Bank",
    "addedDateTime": "2023-05-27T21:52:40Z",
    "joinedDateTime": null,
    "addedByTenantId": "1fd6544e-e994-4de2-9f1b-787b51c7d325",
    "role": "member",
    "state": "pending",
    "transitionDetails": {
        "desiredState": "active",
        "desiredRole": "owner",
        "status": "notStarted",
        "details": null
    }
}
```

