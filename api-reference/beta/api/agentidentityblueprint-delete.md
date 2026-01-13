---
title: "Delete agentIdentityBlueprint"
description: "Delete an agentIdentityBlueprint object."
author: "zallison22"
ms.date: 10/27/2025
ms.localizationpriority: medium
ms.subservice: "entra-agent-id"
doc_type: apiPageType
---

# Delete agentIdentityBlueprint

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete an [agentIdentityBlueprint](../resources/agentidentityblueprint.md) object. When deleted, agent identity blueprints are moved to a temporary container and can be restored within 30 days. After that time, they are permanently deleted.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "agentidentityblueprint-delete-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/agentidentityblueprint-delete-permissions.md)]

[!INCLUDE [rbac-agentid-apis-write](../includes/rbac-for-apis/rbac-agentid-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /applications/{id}/microsoft.graph.agentIdentityBlueprint
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code.

For information about errors returned by agent identity APIs, see [Agent identity error codes](/entra/agent-id/identity-platform/error-codes).

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_agentidentityblueprint"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/applications/{id}/microsoft.graph.agentIdentityBlueprint
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-agentidentityblueprint-javascript-snippets.md)]
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

