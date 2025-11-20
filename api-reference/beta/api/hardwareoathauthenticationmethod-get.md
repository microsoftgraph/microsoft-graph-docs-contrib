---
title: "Get hardwareOathAuthenticationMethod"
description: "Get the details of the hardware token assigned to a user."
author: "luc-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 12/06/2024
---

# Get hardwareOathAuthenticationMethod

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the details of the [hardware token](../resources/hardwareoathauthenticationmethod.md) assigned to a user.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

## Permissions acting on self
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
[!INCLUDE [permissions-table](../includes/permissions/hardwareoathauthenticationmethod-get-permissions.md)]

## Permissions acting on another user
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
[!INCLUDE [permissions-table](../includes/permissions/hardwareoathauthenticationmethod-get-2-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-read-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-read-others.md)]

## HTTP request

Get details of a hardware OATH authentication method assigned to you.
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /me/authentication/hardwareOathMethods/{hardwareOathAuthenticationMethodId}
```

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

Get details of a hardware OATH authentication method assigned to another user.
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /users/{usersId}/authentication/hardwareOathMethods/{hardwareOathAuthenticationMethodId}
```

## Optional query parameters

This method does not support optional query parameters to customize the response.

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [hardwareOathAuthenticationMethod](../resources/hardwareoathauthenticationmethod.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_hardwareoathauthenticationmethod"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/authentication/hardwareOathMethods/{hardwareOathAuthenticationMethodId}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-hardwareoathauthenticationmethod-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-hardwareoathauthenticationmethod-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-hardwareoathauthenticationmethod-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-hardwareoathauthenticationmethod-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-hardwareoathauthenticationmethod-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-hardwareoathauthenticationmethod-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-hardwareoathauthenticationmethod-python-snippets.md)]
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
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.hardwareOathAuthenticationMethod",
    "id": "aad49556-####-####-####-############",
    "lastUsedDateTime": "2022-11-06T23:16:12Z",
    "device": {
        "id": "aad49556-####-####-####-############",
        "displayName": "Amy Masters Token",
        "serialNumber": "TOTP123456",
        "manufacturer": "Contoso",
        "model": "Hardware Token 1000",
        "secretKey": null,
        "timeIntervalInSeconds": 30,
        "status": "activated",
        "hashFunction": "hmacsha1",
        "assignedTo": {
            "id": "0cadbf92-####-####-####-############",
            "displayName": "Amy Masters"
        }
    }
  }
}
```

