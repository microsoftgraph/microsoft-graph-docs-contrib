---
title: "List multiTenantOrganizationMembers"
description: "List the tenants and their properties in the multi-tenant organization."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# List multiTenantOrganizationMembers
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

List the tenants and their properties in the multi-tenant organization. If called with Read or ReadWrite permissions, returns both active and pending tenants. If called with ReadBasic permissions, returns active tenants.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|MultiTenantOrganization.ReadBasic.All, MultiTenantOrganization.Read.All, MultiTenantOrganization.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|MultiTenantOrganization.ReadBasic.All, MultiTenantOrganization.Read.All, MultiTenantOrganization.ReadWrite.All|

MultiTenantOrganization.ReadBasic.All permission can only read the `displayName` and `tenantId` properties.

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
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [multiTenantOrganizationMember](../resources/multitenantorganizationmember.md) objects in the response body.

## Examples

The following example lists the tenants and their properties in the multi-tenant organization.

### Request

<!-- {
  "blockType": "request",
  "name": "list_multitenantorganizationmember"
}
-->
``` http
GET https://graph.microsoft.com/beta/tenantRelationships/multiTenantOrganization/tenants
```


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

