---
title: "Update phoneauthenticationmethod"
description: "Update the properties of phoneauthenticationmethod object."
localization_priority: Normal
author: "mmcla"
ms.prod: "microsoft-identity-platform"
doc_type: "apiPageType"
---

# Update phoneauthenticationmethod

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the phone number of a [phone authentication method](../resources/phoneauthenticationmethod.md).

A phone's type cannot be changed. To change a phone's type, add a new number of the desired type and then delete the previous object with the former type.

If a user is enabled by policy to use SMS sign-in and the `mobile` number is changed, the system will attempt to register the number for use in that system.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions acting on self (from least to most privileged) | Permissions acting on others (from least to most privileged)|
|:---------------------------------------|:-------------------------|:-----------------|
| Delegated (work or school account)     | UserAuthenticationMethod.ReadWrite, UserAuthenticationMethod.ReadWrite.All | UserAuthenticationMethod.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application                            | UserAuthenticationMethod.ReadWrite.All | UserAuthenticationMethod.ReadWrite.All |

For delegated scenarios where an admin is acting on another user, the admin needs one of the following roles:

* Global admin
* Privileged authentication admin
* Authentication admin

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
PUT /me/authentication/phoneMethods/{id}
PUT /users/{id}/authentication/phoneMethods/{id}
```

## Request headers

| Name       | Description|
|:-----------|:-----------|
| Authorization | Bearer {token} |

## Request body

In the request body, supply the values for relevant fields that should be updated. Existing properties that are not included in the request body will be recalculated based on changes to other property values.

| Property     | Type        | Description |
|:-------------|:------------|:------------|
|phoneNumber|String|The phone number to text or call for authentication. Phone numbers use the format "+\<country code\> \<number\>x\<extension\>", with extension optional. For example, +1 5555551234 or +1 5555551234x123 are valid. Numbers are rejected when creating/updating if they do not match the required format.|
|phoneType|string| Possible values are: `mobile`, `alternateMobile`, or `office`.|

## Response

If successful, this method returns a `200 OK` response code and an updated [phoneAuthenticationMethod](../resources/phoneauthenticationmethod.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "update_phoneauthenticationmethod"
}-->

```http
PUT https://graph.microsoft.com/beta/me/authentication/phoneMethods/3179e48a-750b-4051-897c-87b9720928f7
Content-type: application/json

{
  "phoneNumber": "+1 2065555554",
  "phoneType": "mobile",
}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.phoneAuthenticationMethod"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "phoneNumber": "+1 2065555554",
  "phoneType": "mobile",
  "smsSignInState": "ready",
  "id": "3179e48a-750b-4051-897c-87b9720928f7"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Update phoneauthenticationmethod",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->