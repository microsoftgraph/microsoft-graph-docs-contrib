---
title: "Add multiTenantOrganizationMember"
description: "Add a tenant to a multitenant organization."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Add multiTenantOrganizationMember
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Add a tenant to a multitenant organization. The administrator of an owner tenant has the permissions to add tenants to the multitenant organization. The added tenant is in the pending state until the administrator of the added tenant joins the multitenant organization by submitting a join request. A tenant can be part of only one multitenant organization.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "multitenantorganization_post_tenants" } -->
[!INCLUDE [permissions-table](../includes/permissions/multitenantorganization-post-tenants-permissions.md)]

[!INCLUDE [rbac-multitenantorganization-apis-write](../includes/rbac-for-apis/rbac-multitenantorganization-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /tenantRelationships/multiTenantOrganization/tenants
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [multiTenantOrganizationMember](../resources/multitenantorganizationmember.md) object.

You can specify the following properties when creating a **multiTenantOrganizationMember**.

|Property|Type|Description|
|:---|:---|:---|
|tenantId|String|Tenant ID of the Microsoft Entra tenant to add to the multitenant organization. Required.|
|displayName|String|Display name of the tenant added to the multitenant organization. Currently, can't be changed once set. Required.|
|role|multiTenantOrganizationMemberRole|Role of the tenant in the multitenant organization. The possible values are: `owner`, `member` (default), `unknownFutureValue`. Optional.|


## Response

If successful, this method returns a `201 Created` response code and a [multiTenantOrganizationMember](../resources/multitenantorganizationmember.md) object in the response body. If the tenant is already pending or active in this multitenant organization, you get a 'Request_BadRequest' error.

## Examples

The following example adds the Fabrikam tenant to the multitenant organization.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_multitenantorganizationmember_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/tenantRelationships/multiTenantOrganization/tenants
Content-Type: application/json

{
  "tenantId": "4a12efe6-aa14-4d03-8dff-88fc89e2e2ad",
  "displayName": "Fabrikam"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-multitenantorganizationmember-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-multitenantorganizationmember-from--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-multitenantorganizationmember-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-multitenantorganizationmember-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-multitenantorganizationmember-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-multitenantorganizationmember-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-multitenantorganizationmember-from--powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-multitenantorganizationmember-from--python-snippets.md)]
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
HTTP/1.1 201 Created
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#tenantRelationships/multiTenantOrganization/tenants/$entity",
    "tenantId": "4a12efe6-aa14-4d03-8dff-88fc89e2e2ad",
    "displayName": "Fabrikam",
    "addedDateTime": "2023-05-27T19:24:29Z",
    "joinedDateTime": null,
    "addedByTenantId": "1fd6544e-e994-4de2-9f1b-787b51c7d325",
    "role": "member",
    "state": "pending",
    "transitionDetails": null
}
```

If tenant is already pending or active in this multitenant organization, you get a 'Request_BadRequest' error.

```http
HTTP/1.1 400 Bad Request
Content-Type: application/json

{
    "error": {
        "code": "Request_BadRequest",
        "message": "Tenant is already being added in Multi-Tenant Organization.",
        "innerError": {
            "date": "2023-05-27T20:56:14",
            "request-id": "a1e5973c-66f1-4853-9e3d-39e6b4f606d1",
            "client-request-id": "651548c3-e864-4509-837b-4f5d4cf546a5"
        }
    }
}
```
