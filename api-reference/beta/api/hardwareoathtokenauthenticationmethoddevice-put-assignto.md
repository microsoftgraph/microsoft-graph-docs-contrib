---
title: "Assign user a hardware OATH token"
description: "Assign a hardware OATH token to a user."
author: "luc-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 12/06/2024
toc.title: Assign user
---

# Assign user a hardware OATH token

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Assign a hardware OATH token, represented by a [hardwareOathTokenAuthenticationMethodDevice](../resources/hardwareoathtokenauthenticationmethoddevice.md) object, to a user. Self-service operations are supported.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

## Permissions acting on self
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
[!INCLUDE [permissions-table](../includes/permissions/hardwareoathtokenauthenticationmethoddevice-put-assignto-permissions.md)]

## Permissions acting on another user
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
[!INCLUDE [permissions-table](../includes/permissions/hardwareoathtokenauthenticationmethoddevice-put-assignto-2-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-write-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-write-others.md)]

## HTTP request
Assign a hardware OATH authentication method for yourself.
<!-- {
  "blockType": "ignored"
}
-->
```http
PUT /me/authentication/hardwareOathMethods/{hardwareOathAuthenticationMethodId}/device/assignTo/$ref
```

Assign a hardware OATH authentication method for another user.
<!-- {
  "blockType": "ignored"
}
-->
```http
PUT /users/{usersId}/authentication/hardwareOathMethods/{hardwareOathAuthenticationMethodId}/device/assignTo/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [user](../resources/user.md) object.

You can specify the following properties when creating a **user**.

|Property|Type|Description|
|:---|:---|:---|
|odata.id|String|A link to the user entity with using objectId as key. Example: "https://graph.microsoft-ppe.com/beta/users/{usersId}"|

## Response

If successful, this method returns a `204 No Content` response code and a [user](../resources/user.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_user_from_users"
}
-->
```http
PUT https://graph.microsoft.com/beta/users/{usersId}/authentication/hardwareOathMethods/{hardwareOathAuthenticationMethodId}/device/assignTo/$ref
Content-Type: application/json

{
    "@odata.id": "https://graph.microsoft.com/beta/users/0cadbf92-####-####-####-############"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-user-from-users-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```
