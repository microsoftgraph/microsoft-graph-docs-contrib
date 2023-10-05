---
title: "Get platformCredentialAuthenticationMethod"
description: "Read the properties and relationships of a platformCredentialAuthenticationMethod object."
author: "Veena11"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Get platformCredentialAuthenticationMethod
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [platformCredentialAuthenticationMethod](../resources/platformcredentialauthenticationmethod.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### Permissions acting on self

|Permission type      | Permissions (from least to most privileged)              |
|:---------------------------------------|:-------------------------|
| Delegated (work or school account)     | UserAuthenticationMethod.Read, UserAuthenticationMethod.ReadWrite |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

### Permissions acting on other users

|Permission type      | Permissions (from least to most privileged)              |
|:---------------------------------------|:-------------------------|
| Delegated (work or school account)     | UserAuthenticationMethod.Read.All, UserAuthenticationMethod.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | UserAuthenticationMethod.Read.All, UserAuthenticationMethod.ReadWrite.All |

[!INCLUDE [rbac-authentication-methods-apis-read-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-read-others.md)]

## HTTP request

Read details of your own Platform Credential authentication method.
<!-- { "blockType": "ignored" } -->
``` http
GET /me/authentication/platformCredentialMethods/{platformCredentialAuthenticationMethodId}
```

Read details of your own or another user's Platform Credential authentication method.
<!-- { "blockType": "ignored" } -->
``` http
GET /users/{id | userPrincipalName}/authentication/platformCredentialMethods/{platformCredentialAuthenticationMethodId}
```

>**Note:** To read the **device** navigation property for another user, specify it in an `$expand` query as follows: `/users/{id}/authentication/platformCredentialMethods/{id}?$expand=device`.

## Optional query parameters

Not supported.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [platformCredentialAuthenticationMethod](../resources/platformcredentialauthenticationmethod.md) object in the response body.

## Examples

### Request

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_platformcredentialauthenticationmethod",
  "sampleKeys": ["annie@contoso.com", "_jpuR-TGZtk6aQCLF3BQjA2"]
}
-->
``` http
GET https://graph.microsoft.com/beta/users/annie@contoso.com/authentication/platformCredentialMethods/_jpuR-TGZtk6aQCLF3BQjA2
```

---

### Response
**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.platformCredentialAuthenticationMethod"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.platformCredentialAuthenticationMethod",
    "id": "b5e01f81-1f81-b5e0-811f-e0b5811fe0b5",
    "displayName": "Jordan's MacBook Pro",
    "createdDateTime": "2020-11-27T23:12:49Z",
    "keyStrength": "normal",
    "platform": "macOS"
  }
}
```

