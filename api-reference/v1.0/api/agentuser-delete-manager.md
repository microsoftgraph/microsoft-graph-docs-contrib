---
title: "Remove manager (for agentUser)"
description: "Remove an agent user's manager."
author: "yyuank"
ms.reviewer: "iamut"
ms.date: 4/27/2026
ms.localizationpriority: medium
ms.subservice: "entra-agent-id"
doc_type: apiPageType
---

# Remove manager (for agentUser)

Namespace: microsoft.graph

Remove an [agentUser's](../resources/agentuser.md) manager.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "agentuser_delete_manager" } -->
[!INCLUDE [permissions-table](../includes/permissions/agentuser-delete-manager-permissions.md)]

[!INCLUDE [rbac-agent-user-apis-write](../includes/rbac-for-apis/rbac-agent-user-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /users/{usersId}/manager/{id}/$ref
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
<!-- {
  "blockType": "request",
  "name": "delete_manager_from_agentuser"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/users/{usersId}/manager/{id}/$ref
```

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


