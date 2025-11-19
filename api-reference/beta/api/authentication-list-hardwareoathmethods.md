---
title: "List hardwareOathAuthenticationMethod objects"
description: "List all hardware tokens assigned to a user"
author: "luc-msft"
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: apiPageType
ms.date: 12/06/2024
---

# List hardwareOathAuthenticationMethod objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [hardware tokens](../resources/hardwareoathauthenticationmethod.md) assigned to a [user](../resources/user.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### Permissions acting on self
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
[!INCLUDE [permissions-table](../includes/permissions/authentication-list-hardwareoathmethods-permissions.md)]

### Permissions acting on other users
<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
[!INCLUDE [permissions-table](../includes/permissions/authentication-list-hardwareoathmethods-2-permissions.md)]

[!INCLUDE [rbac-authentication-methods-apis-read-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-read-others.md)]

## HTTP request
Get details of your own hardware OATH methods.
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /me/authentication/hardwareOathMethods
```

[!INCLUDE [me-apis-sign-in-note](../includes/me-apis-sign-in-note.md)]

Get details of another user's hardware OATH methods.
<!-- {
  "blockType": "ignored"
}
-->
```http
GET /users/{usersId}/authentication/hardwareOathMethods
```

## Optional query parameters

This method supports the `$select`, `$filter` and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [hardwareOathAuthenticationMethod](../resources/hardwareoathauthenticationmethod.md) objects in the response body.

## Examples

### Request

The following example shows a request to retrieve the hardware tokens for the signed-in user.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_hardwareoathauthenticationmethod"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/me/authentication/hardwareOathMethods
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-hardwareoathauthenticationmethod-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-hardwareoathauthenticationmethod-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-hardwareoathauthenticationmethod-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-hardwareoathauthenticationmethod-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-hardwareoathauthenticationmethod-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-hardwareoathauthenticationmethod-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-hardwareoathauthenticationmethod-python-snippets.md)]
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
  "value": [
    {
      "@odata.type": "#microsoft.graph.hardwareOathAuthenticationMethod",
      "id": "aad49556-####-####-####-############",
      "device": {
        "id": "aad49556-####-####-####-############",
        "displayName": "Amy Masters Token 1",
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
    },
    {
      "@odata.type": "#microsoft.graph.hardwareOathAuthenticationMethod",
      "id": "3dee0e53-####-####-####-############",
      "device": {
        "id": "3dee0e53-####-####-####-############",
        "displayName": "Amy Masters Token 2",
        "serialNumber": "TOTP654321",
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
  ]
}
```

