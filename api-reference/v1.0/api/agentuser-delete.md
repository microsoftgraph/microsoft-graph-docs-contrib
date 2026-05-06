---
title: "Delete agentUser"
description: "Delete an agentUser object."
author: "yyuank"
ms.reviewer: "iamut"
ms.date: 4/27/2026
ms.localizationpriority: medium
ms.subservice: "entra-agent-id"
doc_type: apiPageType
---

# Delete agentUser

Namespace: microsoft.graph

Delete an [agentUser](../resources/agentuser.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "agentuser_delete" } -->
[!INCLUDE [permissions-table](../includes/permissions/agentuser-delete-permissions.md)]

> [!IMPORTANT]
> The calling user must be assigned at least one of the following [Microsoft Entra roles](/entra/identity/role-based-access-control/permissions-reference?toc=%2Fgraph%2Ftoc.json):
> - User Administrator
> - Privileged Authentication Administrator
> - Agent ID Administrator
> 
> To delete users with privileged administrator roles in delegated scenarios, the app must be assigned the *Directory.AccessAsUser.All* delegated permission, and the calling user must have a higher privileged administrator role as indicated in [Who can perform sensitive actions](../resources/users.md#who-can-perform-sensitive-actions).
>
> In app-only scenarios, the *User.ReadWrite.All* application permission isn't enough privilege to delete users with privileged administrative roles. The agent must be assigned a higher privileged administrator role as indicated in [Who can perform sensitive actions](../resources/users.md#who-can-perform-sensitive-actions).
## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /users/microsoft.graph.agentUser/{userId}
```
Note: An agent user can be deleted through the standard users' endpoint as well: DELETE /users/userId. No special odata type needs to be specified in the request. 

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
  "name": "delete_agentuser"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/users/microsoft.graph.agentUser/ba9a3254-9f18-4209-aeb3-9e42a35b5be4 
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-agentuser-javascript-snippets.md)]
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


