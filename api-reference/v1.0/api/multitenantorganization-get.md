---
title: "Get multiTenantOrganization"
description: "Get properties of the multitenant organization."
author: "rolyon"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Get multiTenantOrganization
Namespace: microsoft.graph

Get properties of the multitenant organization.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "multitenantorganization_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/multitenantorganization-get-permissions.md)]

[!INCLUDE [rbac-multitenantorganization-apis-read](../includes/rbac-for-apis/rbac-multitenantorganization-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /tenantRelationships/multiTenantOrganization
```

## Optional query parameters
This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [multiTenantOrganization](../resources/multitenantorganization.md) object in the response body.

## Examples

The following example gets properties of the multitenant organization.

### Request

<!-- {
  "blockType": "request",
  "name": "get_multitenantorganization"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/tenantRelationships/multiTenantOrganization
```

### Response

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.multiTenantOrganization"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/v1.0/$metadata#tenantRelationships/multiTenantOrganization/$entity",
    "id": "6d8b39e5-039a-4034-bf3a-e0b4f8cd60b6",
    "createdDateTime": "2023-05-26T22:05:23Z",
    "displayName": "Contoso organization",
    "description": "Multitenant organization between Contoso, Fabrikam, and Woodgrove Bank",
    "state": "active"
}
```

The following response shows when the requesting tenant is not part of any multitenant organization.

``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "createdDateTime": null,
    "displayName": null,
    "description": null,
    "state": "inactive"
}
```

