---
title: "List account"
description: "Retrieve a list of useraccountinformation objects."
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "people"
doc_type: "apiPageType"
---

# List account

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieves properties related to the user's account from the [profile](../resources/profile.md).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                      |
|:---------------------------------------|:---------------------------------------------------------------------------------|
| Delegated (work or school account)     | User.Read, User.ReadWrite, User.ReadBasic.All, User.Read.All, User.ReadWrite.All |
| Delegated (personal Microsoft account) | User.Read, User.ReadWrite, User.ReadBasic.All, User.Read.All, User.ReadWrite.All |
| Application                            | User.ReadBasic.All, User.Read.All, User.ReadWrite.All                            |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /me/profile/account
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name           |Description                  |
|:---------------|:----------------------------|
| Authorization  | Bearer {token}. Required.   |
| Content-Type   | application/json. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [userAccountInformation](../resources/useraccountinformation.md) objects in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_account"
}-->

```http
GET https://graph.microsoft.com/beta/me/profile/account
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userAccountInformation",
  "isCollection": true
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "value": [
    {
      "ageGroup": "ageGroup-value",
      "countryCode": "countryCode-value",
      "preferredLanguageTag": {
        "locale": "locale-value",
        "displayName": "displayName-value"
      },
      "userPrincipalName": "userPrincipalName-value"
    }
  ]
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "List account",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->