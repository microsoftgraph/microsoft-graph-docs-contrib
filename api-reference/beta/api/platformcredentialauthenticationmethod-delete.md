---
title: "Delete platformCredentialAuthenticationMethod"
description: "Delete a platformCredentialAuthenticationMethod object."
author: "Veena11"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# Delete platformCredentialAuthenticationMethod
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a [platformCredentialAuthenticationMethod](../resources/platformcredentialauthenticationmethod.md) object.


## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### Permissions acting on self

|Permission type      | Permissions (from least to most privileged)              |
|:---------------------------------------|:-------------------------|
| Delegated (work or school account)     | UserAuthenticationMethod.ReadWrite |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | Not supported. |

### Permissions acting on other users

|Permission type      | Permissions (from least to most privileged)              |
|:---------------------------------------|:-------------------------|
| Delegated (work or school account)     | UserAuthenticationMethod.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | UserAuthenticationMethod.ReadWrite.All |

[!INCLUDE [rbac-authentication-methods-apis-write-others](../includes/rbac-for-apis/rbac-authentication-methods-apis-write-others.md)]

## HTTP request

Delete your own Platform Credential authentication method.
<!-- { "blockType": "ignored" } -->
``` http
DELETE /me/authentication/platformCredentialMethods/{platformCredentialAuthenticationMethodId}
```

Delete your own or another user's Platform Credential authentication method.
<!-- { "blockType": "ignored" } -->
``` http
DELETE /users/{id | userPrincipalName}/authentication/platformCredentialMethods/{platformCredentialAuthenticationMethodId}
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content`. It does not return anything in the response body.

## Examples

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "delete_platformcredentialauthenticationmethod",
  "sampleKeys": ["kim@contoso.com", "R18B3t8Ogh9XIOGmPt81d6p_KXJs1YTxfGgGqeVFJSM1"]
}
-->
``` http
DELETE https://graph.microsoft.com/beta/users/kim@contoso.com/authentication/platformCredentialMethods/R18B3t8Ogh9XIOGmPt81d6p_KXJs1YTxfGgGqeVFJSM1
```

#### Response

The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```
