---
title: "Delete hardwareOathAuthenticationMethod"
description: "Unassign a hardware token from a user. The token remains in the directory."
author: "luc-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 12/06/2024
---

# Delete hardwareOathAuthenticationMethod

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Unassign a [hardware token](../resources/hardwareoathauthenticationmethod.md) from a user. The token remains in the directory and its details can be retrieved by [List hardwareOathDevices](authenticationmethoddevice-list-hardwareoathdevices.md) API.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### Permissions acting on self
<!-- {
  "blockType": "permissions",
  "name": "authentication-delete-hardwareoathmethods-permissions"
}
-->
<!-- { "blockType": "permissions", "name": "authentication_delete_hardwareoathmethods" } -->
[!INCLUDE [permissions-table](../includes/permissions/authentication-delete-hardwareoathmethods-permissions.md)]

## Permissions acting on other users
<!-- {
  "blockType": "permissions",
  "name": "authentication-delete-hardwareoathmethods-2-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/authentication-delete-hardwareoathmethods-2-permissions.md)]

## HTTP request

Unassign yourself a hardware OATH authentication method.
<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /me/authentication/hardwareOathMethods/{hardwareOathAuthenticationMethodId}
```

Unassign another user their hardware OATH authentication method.
<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /users/{usersId}/authentication/hardwareOathMethods/{hardwareOathAuthenticationMethodId}
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
  "name": "delete_hardwareoathauthenticationmethod"
}
-->
``` http
DELETE https://graph.microsoft.com/beta/me/authentication/hardwareOathMethods/{hardwareOathAuthenticationMethodId}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-hardwareoathauthenticationmethod-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/delete-hardwareoathauthenticationmethod-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-hardwareoathauthenticationmethod-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-hardwareoathauthenticationmethod-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-hardwareoathauthenticationmethod-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-hardwareoathauthenticationmethod-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-hardwareoathauthenticationmethod-python-snippets.md)]
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

