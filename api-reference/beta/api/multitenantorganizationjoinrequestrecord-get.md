---
title: "Get multiTenantOrganizationJoinRequestRecord"
description: "Get the status of a tenant joining a multi-tenant organization."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get multiTenantOrganizationJoinRequestRecord
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the status of a tenant joining a multi-tenant organization.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "multitenantorganizationjoinrequestrecord_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/multitenantorganizationjoinrequestrecord-get-permissions.md)]

[!INCLUDE [rbac-multitenantorganization-apis-read](../includes/rbac-for-apis/rbac-multitenantorganization-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/multiTenantOrganization/joinRequest
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

If successful, this method returns a `200 OK` response code and a [multiTenantOrganizationJoinRequestRecord](../resources/multitenantorganizationjoinrequestrecord.md) object in the response body.

## Examples

The following example gets the status of a tenant joining a multi-tenant organization.

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_multitenantorganizationjoinrequestrecord"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/multiTenantOrganization/joinRequest
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-multitenantorganizationjoinrequestrecord-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-multitenantorganizationjoinrequestrecord-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-multitenantorganizationjoinrequestrecord-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-multitenantorganizationjoinrequestrecord-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-multitenantorganizationjoinrequestrecord-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-multitenantorganizationjoinrequestrecord-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-multitenantorganizationjoinrequestrecord-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-multitenantorganizationjoinrequestrecord-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response before an added tenant joins a multi-tenant organization.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.multiTenantOrganizationJoinRequestRecord"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#tenantRelationships/multiTenantOrganization/joinRequest/$entity",
    "id": "7149c406-fac5-4be9-ad4b-f46fac7fe60c",
    "addedByTenantId": "00000000-0000-0000-0000-000000000000",
    "memberState": null,
    "role": null,
    "transitionDetails": null
}
```

The following example shows the response after an added tenant [requests to join a multi-tenant organization](multitenantorganizationjoinrequestrecord-update.md) and the state is still `pending`.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#tenantRelationships/multiTenantOrganization/joinRequest/$entity",
    "id": "3e536776-7489-43e9-9637-742d62ec3fc5",
    "addedByTenantId": "1fd6544e-e994-4de2-9f1b-787b51c7d325",
    "memberState": "pending",
    "role": null,
    "transitionDetails": {
        "desiredMemberState": "active",
        "status": "notStarted",
        "details": ""
    }
}
```

The following example shows the response after an added tenant successfully joins a multi-tenant organization and the state is changed to `active`.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#tenantRelationships/multiTenantOrganization/joinRequest/$entity",
    "id": "3e536776-7489-43e9-9637-742d62ec3fc5",
    "addedByTenantId": "1fd6544e-e994-4de2-9f1b-787b51c7d325",
    "memberState": "active",
    "role": member,
    "transitionDetails": null
}
```

The following example shows the response when an added tenant fails to join a multi-tenant organization. To reset a failed join request, see [Update multiTenantOrganizationJoinRequestRecord](multitenantorganizationjoinrequestrecord-update.md).

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#tenantRelationships/multiTenantOrganization/joinRequest/$entity",
    "id": "3e536776-7489-43e9-9637-742d62ec3fc5",
    "addedByTenantId": "1fd6544e-e994-4de2-9f1b-787b51c7d325",
    "memberState": "pending",
    "role": null,
    "transitionDetails": {
        "desiredMemberState": "active",
        "status": "failed",
        "details": "DirectoryService Exception"
    }
}
```
