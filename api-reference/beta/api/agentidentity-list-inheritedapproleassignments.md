---
title: "List inherited app role assignments for an agent identity"
description: "Retrieve the application role assignments (appRoleAssignment objects) that an agent identity inherits from its parent agent identity blueprint principal."
author: "mvoznyarskiy"
ms.date: 04/13/2026
ms.localizationpriority: medium
ms.subservice: "entra-agent-id"
doc_type: apiPageType
---

# List inherited app role assignments for an agent identity

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the application role assignments ([appRoleAssignment](../resources/approleassignment.md) objects) that an [agent identity](../resources/agentidentity.md) inherits from its parent agent identity blueprint principal. These inherited assignments represent the effective application-level permissions applied at token issuance time.

The inherited collection is strictly read-only. POST, PATCH, and DELETE requests return `405 Method Not Allowed`. To modify the permissions that agent identities inherit, update the parent agent identity blueprint principal's `appRoleAssignments` instead.

Pagination is not supported. All results are returned in a single response. `$top`, `$skip`, and `$skiptoken` are not supported.

Calling this endpoint on a service principal that is not an agent identity returns `404 Not Found`.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentity-list-inheritedapproleassignments-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentity-list-inheritedapproleassignments-permissions.md)]

[!INCLUDE [rbac-approleassignments-apis-read](../includes/rbac-for-apis/rbac-approleassignments-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /servicePrincipals/microsoft.graph.agentIdentity/{agentIdentity-id}/inheritedAppRoleAssignments
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

If successful, this method returns a `200 OK` response code and a collection of [appRoleAssignment](../resources/approleassignment.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_inheritedapproleassignment"
}
-->
``` http
GET https://graph.microsoft.com/beta/servicePrincipals/microsoft.graph.agentIdentity/b3f37624-8113-471c-9de3-0234828e3ca2/inheritedAppRoleAssignments
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-inheritedapproleassignment-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.appRoleAssignment)"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "aabbccdd-1122-3344-5566-778899001122",
      "creationTimestamp": "2026-01-15T10:30:00Z",
      "appRoleId": "11112222-aaaa-3333-bbbb-4444cccc5555",
      "principalDisplayName": "My Agent Identity",
      "principalId": "b3f37624-8113-471c-9de3-0234828e3ca2",
      "principalType": "ServicePrincipal",
      "resourceDisplayName": "Microsoft Graph",
      "resourceId": "aaaaaaaa-bbbb-cccc-dddd-eeeeeeeeeeee"
    }
  ]
}
```

