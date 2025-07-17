---
title: "List multiTenantOrganizationMembers"
description: "List the tenants and their properties in the multi-tenant organization."
author: "rolyon"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 04/05/2024
---

# List multiTenantOrganizationMembers
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the tenants and their properties in the multi-tenant organization.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "multitenantorganization_list_tenants" } -->
[!INCLUDE [permissions-table](../includes/permissions/multitenantorganization-list-tenants-permissions.md)]

If called with MultiTenantOrganization.Read.All or MultiTenantOrganization.ReadWrite.All permissions, this API returns both active and pending tenants. If called with MultiTenantOrganization.ReadBasic.All permission, the caller can only read the **displayName** and **tenantId** properties.

[!INCLUDE [rbac-multitenantorganization-apis-read](../includes/rbac-for-apis/rbac-multitenantorganization-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/multiTenantOrganization/tenants
```

## Optional query parameters
This method supports the `$select` and `$filter` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [multiTenantOrganizationMember](../resources/multitenantorganizationmember.md) objects in the response body.

## Examples

The following example lists the tenants and their properties in the multi-tenant organization.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_multitenantorganizationmember"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/multiTenantOrganization/tenants
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-multitenantorganizationmember-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-multitenantorganizationmember-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-multitenantorganizationmember-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-multitenantorganizationmember-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-multitenantorganizationmember-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-multitenantorganizationmember-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-multitenantorganizationmember-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-multitenantorganizationmember-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.multiTenantOrganizationMember)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#tenantRelationships/multiTenantOrganization/tenants",
    "value": [
        {
            "tenantId": "1fd6544e-e994-4de2-9f1b-787b51c7d325",
            "displayName": "Contoso",
            "addedDateTime": "2023-05-26T22:05:23Z",
            "joinedDateTime": null,
            "addedByTenantId": "1fd6544e-e994-4de2-9f1b-787b51c7d325",
            "role": "owner",
            "state": "active",
            "transitionDetails": null
        },
        {
            "tenantId": "4a12efe6-aa14-4d03-8dff-88fc89e2e2ad",
            "displayName": "Fabrikam",
            "addedDateTime": "2023-05-27T19:24:29Z",
            "joinedDateTime": null,
            "addedByTenantId": "1fd6544e-e994-4de2-9f1b-787b51c7d325",
            "role": "member",
            "state": "pending",
            "transitionDetails": null
        },
        {
            "tenantId": "5036a0a0-a7a4-4933-9086-5dd54535dd6e",
            "displayName": "Woodgrove Bank",
            "addedDateTime": "2023-05-27T20:41:56Z",
            "joinedDateTime": null,
            "addedByTenantId": "1fd6544e-e994-4de2-9f1b-787b51c7d325",
            "role": "member",
            "state": "pending",
            "transitionDetails": null
        }
    ]
}
```

