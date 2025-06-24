---
title: "Delete externalAuthenticationMethod"
description: "Delete an externalAuthenticationMethod object."
author: "rannderson"
ms.date: 04/01/2025
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
---

# Delete externalAuthenticationMethod

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete an externalAuthenticationMethod object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### Permissions acting on self

<!-- {
  "blockType": "permissions",
  "name": "authentication-delete-externalauthenticationmethods-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/authentication-delete-externalauthenticationmethods-permissions.md)]

### Permissions acting on other users
<!-- {
  "blockType": "permissions",
  "name": "authentication-delete-externalauthenticationmethods-2-permissions"
} -->
[!INCLUDE [permissions-table](../includes/permissions/authentication-delete-externalauthenticationmethods-2-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-write-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-write-others.md)]

## HTTP request

To delete your own external authentication method:
<!-- { "blockType": "ignored" } -->
``` http
DELETE /me/authentication/externalAuthenticationMethods/{externalAuthenticationMethodId}/$ref
```

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

To delete your own or another user's external authentication method:
<!-- { "blockType": "ignored" } -->
``` http
DELETE /users/{usersId}/authentication/externalAuthenticationMethods/{externalAuthenticationMethodId}/$ref
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
  "name": "delete_externalauthenticationmethod"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/me/authentication/externalAuthenticationMethods/{externalAuthenticationMethodId}
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

