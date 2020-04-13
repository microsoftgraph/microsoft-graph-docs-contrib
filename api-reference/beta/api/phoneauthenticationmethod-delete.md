---
title: "Delete phoneAuthenticationMethod"
description: "Delete a user's phone authentication method."
localization_priority: Normal
author: "mmcla"
ms.prod: "microsoft-identity-platform"
doc_type: "apiPageType"
---

# Delete phoneAuthenticationMethod

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Delete a user's [phone authentication method](../resources/phoneauthenticationmethod.md). 

>**Note:** This removes the phone number from the user and they will no longer be able to use the number for authentication, whether via SMS or voice calls.

Remember that a user may not have an `alternateMobile` number without a `mobile` number. If you want to remove a `mobile` number from a user that also has an `alternateMobile` number, first [update](phoneauthenticationmethod-update.md) the `mobile` number to the desired new number, then delete the `alternateMobile` number.

If the phone number is the user's default Azure multi-factor authentication (MFA) authentication method, it cannot be deleted. Have the user change their default method to another method, and then delete the number.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions acting on self (from least to most privileged) | Permissions acting on others (from least to most privileged)|
|:---------------------------------------|:-------------------------|:-----------------|
| Delegated (work or school account)     | UserAuthenticationMethod.ReadWrite, UserAuthenticationMethod.ReadWrite.All | UserAuthenticationMethod.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. | Not supported. |
| Application                            | Not supported. | Not supported. |

For delegated scenarios where an admin is acting on another user, the admin needs [one of the following roles](https://docs.microsoft.com/azure/active-directory/users-groups-roles/directory-assign-admin-roles#available-roles):

* Global admin
* Privileged authentication admin
* Authentication admin

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
DELETE /me/authentication/phoneMethods/{id}
DELETE /users/{id}/authentication/phoneMethods/{id}
```

## Request headers

| Name          | Description   |
|:--------------|:--------------|
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. It does not return anything in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "delete_phoneauthenticationmethod"
}-->

```http
DELETE https://graph.microsoft.com/beta/me/authentication/phoneMethods/3179e48a-750b-4051-897c-87b9720928f7
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Delete phoneAuthenticationMethod",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->
