---
title: "Update multiTenantOrganizationMember"
description: "Update the properties of a tenant in a multi-tenant organization."
author: "rolyon"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Update multiTenantOrganizationMember
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a tenant in a multi-tenant organization. Only owner tenants can call this API.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|MultiTenantOrganization.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported.|
|Application|MultiTenantOrganization.ReadWrite.All|

[!INCLUDE [rbac-multitenantorganization-apis-write](../includes/rbac-for-apis/rbac-multitenantorganization-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
PATCH /tenantRelationships/multiTenantOrganization/tenants/{tenantId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body
[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]


|Property|Type|Description|
|:---|:---|:---|
|role|multiTenantOrganizationMemberRole|Role of the tenant in the multi-tenant organization. The possible values are: `owner`, `member` (default), `unknownFutureValue`. Optional.|


## Response

If successful, this method returns a `204 No Content` response code.

## Examples

The following example changes the role of a tenant in a multi-tenant organization from member to owner.

### Request

<!-- {
  "blockType": "request",
  "name": "update_multitenantorganizationmember"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/tenantRelationships/multiTenantOrganization/tenant/5036a0a0-a7a4-4933-9086-5dd54535dd6e
Content-Type: application/json

{
    "role": "owner"
}
```


### Response

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

