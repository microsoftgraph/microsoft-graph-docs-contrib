---
title: "Create hardwareOathAuthenticationMethod"
description: "Assign a hardware token to a user without activation."
author: "luc-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 12/06/2024
---

# Create hardwareOathAuthenticationMethod

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Assign a [hardware token](../resources/hardwareoathauthenticationmethod.md) to a user without activation. To activate, use the [activation](hardwareoathauthenticationmethod-activate.md) API operation.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

## Permissions acting on self
<!-- {
  "blockType": "permissions",
  "name": "authentication-post-hardwareoathmethods-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/authentication-post-hardwareoathmethods-permissions.md)]

## Permissions acting on other users
<!-- {
  "blockType": "permissions",
  "name": "authentication-post-hardwareoathmethods-2-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/authentication-post-hardwareoathmethods-2-permissions.md)]

## HTTP request
Assign a hardware OATH authentication method to yourself.
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /me/authentication/hardwareOathMethods
```

Assign a hardware OATH authentication method to another user.
<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users/{usersId}/authentication/hardwareOathMethods
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [hardwareOathAuthenticationMethod](../resources/hardwareoathauthenticationmethod.md) object.

You can specify the following properties when creating a **hardwareOathAuthenticationMethod**.

|Property|Type|Description|
|:---|:---|:---|
|id|String|ID of the hardware token that is to be assigned to the user and activated.|

## Response

If successful, this method returns a `201 Created` response code and a [hardwareOathAuthenticationMethod](../resources/hardwareoathauthenticationmethod.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_hardwareoathauthenticationmethod_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/me/authentication/hardwareOathMethods
Content-Type: application/json

{
  "device": {
        "id": "aad49556-####-####-####-############"
    },
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-hardwareoathauthenticationmethod-from--csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-hardwareoathauthenticationmethod-from--cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-hardwareoathauthenticationmethod-from--go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-hardwareoathauthenticationmethod-from--java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-hardwareoathauthenticationmethod-from--javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-hardwareoathauthenticationmethod-from--php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-hardwareoathauthenticationmethod-from--python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.hardwareOathAuthenticationMethod"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.hardwareOathAuthenticationMethod",
  "id": "658d0bfe-3cb9-d4d3-5296-147bc3b1f130",
  "createdDateTime": "String (timestamp)"
}
```

