---
title: "List inherited OAuth2 permission grants for an agent identity"
description: "Retrieve the delegated permission grants (oAuth2PermissionGrant objects) that an agent identity inherits from its parent agent identity blueprint principal."
author: "mvoznyarskiy"
ms.date: 04/13/2026
ms.localizationpriority: medium
ms.subservice: "entra-agent-id"
doc_type: apiPageType
---

# List inherited OAuth2 permission grants for an agent identity

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the delegated permission grants ([oAuth2PermissionGrant](../resources/oauth2permissiongrant.md) objects) that an [agent identity](../resources/agentidentity.md) inherits from its parent agent identity blueprint principal. These inherited grants represent the effective delegated permissions applied at token issuance time.

This endpoint returns only inherited grants where `consentType` is `AllPrincipals` (admin-consented, tenant-wide grants). Grants where `consentType` is `Principal` (user-specific grants) are not returned by this endpoint.

The inherited collection is strictly read-only. POST, PATCH, and DELETE requests return `405 Method Not Allowed`. To modify the permissions that agent identities inherit, update the parent agent identity blueprint principal's `oauth2PermissionGrants` instead.

Pagination is not supported. All results are returned in a single response. `$top`, `$skip`, and `$skiptoken` are not supported.

Calling this endpoint on a service principal that is not an agent identity returns `404 Not Found`.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentity-list-inheritedoauth2permissiongrants-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentity-list-inheritedoauth2permissiongrants-permissions.md)]

[!INCLUDE [rbac-oauth2permissiongrant-serviceprincipal-apis-read](../includes/rbac-for-apis/rbac-oauth2permissiongrant-serviceprincipal-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /servicePrincipals/microsoft.graph.agentIdentity/{agentIdentity-id}/inheritedOauth2PermissionGrants
```

## Optional query parameters

This method does not support OData query parameters.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [oAuth2PermissionGrant](../resources/oauth2permissiongrant.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_inheritedoauth2permissiongrant"
}
-->
``` http
GET https://graph.microsoft.com/beta/servicePrincipals/microsoft.graph.agentIdentity/b3f37624-8113-471c-9de3-0234828e3ca2/inheritedOauth2PermissionGrants
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.oAuth2PermissionGrant)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "id": "abc123def456",
      "clientId": "b3f37624-8113-471c-9de3-0234828e3ca2",
      "consentType": "AllPrincipals",
      "principalId": null,
      "resourceId": "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee",
      "scope": "User.Read Mail.Read",
      "startTime": "2026-06-15T00:00:00Z",
      "expiryTime": "2027-06-15T00:00:00Z"
    }
  ]
}
```

