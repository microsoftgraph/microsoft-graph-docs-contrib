---
title: "Remove agentIdentityBlueprint sponsors"
description: "Remove a sponsor from an agentIdentityBlueprint object."
author: "zallison22"
ms.date: 02/26/2026
ms.localizationpriority: medium
ms.subservice: "entra-agent-id"
doc_type: apiPageType
---


# Remove agentIdentityBlueprint sponsors

Namespace: microsoft.graph

Remove a sponsor from an [agentIdentityBlueprint](../resources/agentidentityblueprint.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprint-delete-sponsors-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprint-delete-sponsors-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /applications/{id}/microsoft.graph.agentIdentityBlueprint/sponsors/{sponsorObjectId}/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_sponsors_from_agentidentityblueprint"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/applications/{id}/microsoft.graph.agentIdentityBlueprint/sponsors/{sponsorObjectId}/$ref
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-sponsors-from-agentidentityblueprint-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

