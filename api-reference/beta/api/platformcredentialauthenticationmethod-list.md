---
title: "List platformCredentialAuthenticationMethods"
description: "Get a list of the platformCredentialAuthenticationMethod objects and their properties."
author: "Veena11"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: apiPageType
---

# List platformCredentialAuthenticationMethods
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [platformCredentialAuthenticationMethod](../resources/platformcredentialauthenticationmethod.md) objects and their properties.


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

Retrieve details of your own Platform Credential authentication methods.
<!-- { "blockType": "ignored" } -->
``` http
GET /me/authentication/platformCredentialMethods
```

Retrieve details of your own or another user's Platform Credential authentication methods.
<!-- { "blockType": "ignored" } -->
``` http
GET /users/{id | userPrincipalName}/authentication/platformCredentialMethods
```

## Optional query parameters

Not supported.

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [platformCredentialAuthenticationMethod](../resources/platformcredentialauthenticationmethod.md) objects in the response body.

## Examples

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_platformcredentialauthenticationmethod_2"
}
-->
``` http
GET https://graph.microsoft.com/beta/me/authentication/platformCredentialMethods
```

#### Response

The following is an example of the response.

**Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.platformCredentialAuthenticationMethod)"
}
-->
``` http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "R18B3t8Ogh9XIOGmPt81d6p_KXJs1YTxfGgGqeVFJSM1",
      "displayName": "My Macbook Pro",
      "creationDateTime": "2023-09-02T04:16:49Z"
    },
    {
      "id": "J18B378Ogh9XIOGmPt81d6p_KXJs1YTxfGgGqeVFJGM1",
      "displayName": "Kim's Macbook Pro",
      "creationDateTime": "2023-09-02T03:36:19Z"
    }
  ]
}
```
