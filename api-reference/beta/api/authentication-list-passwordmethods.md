---
title: "List passwordMethods"
description: "Retrieve a list of passwordauthenticationmethod objects."
localization_priority: Normal
author: "mmcla"
ms.prod: "microsoft-identity-platform"
doc_type: "apiPageType"
---

# List passwordMethods

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a list of [password authentication method](../resources/passwordauthenticationmethod.md) objects. This will return exactly one object, as a user can have exactly one password.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | UserAuthenticationMethod.Read, UserAuthenticationMethod.Read.All, UserAuthenticationMethod.ReadWrite, UserAuthenticationMethod.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | UserAuthenticationMethod.Read.All, UserAuthenticationMethod.ReadWrite.All |


## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /me/authentication/passwordMethods
GET /users/{id}/authentication/passwordMethods
```

## Optional query parameters

None

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization | Bearer {token} |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [passwordAuthenticationMethod](../resources/passwordauthenticationmethod.md) objects in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_passwordmethods"
}-->

```http
GET https://graph.microsoft.com/beta/me/authentication/passwordMethods
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.passwordAuthenticationMethod",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "id": "28c10230-6103-485e-b985-444c60001490",
      "password": null,
      "creationDateTime": null
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List passwordMethods",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->