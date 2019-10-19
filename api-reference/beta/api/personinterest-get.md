---
title: "Get personInterest"
description: "Retrieve the properties and relationships of personinterest object."
localization_priority: Normal
author: "kevinbellinger"
ms.prod: "People"
doc_type: "apiPageType"
---

# Get personInterest

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve the properties and relationships of personinterest object in a users profile.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | User.Read, User.ReadWrite, User.ReadBasic.All, User.Read.All, User.ReadWrite.All |
| Delegated (personal Microsoft account) | User.Read, User.ReadWrite, User.ReadBasic.All, User.Read.All, User.ReadWrite.All |
| Application                            | User.ReadBasic.All, User.Read.All, User.ReadWrite.All |

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /user/profile/interests/{id}
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name      |Description|
|:----------|:----------|
| Authorization  | Bearer {token}. Required.|
| Content-Type   | application/json |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and the requested [personInterest](../resources/personinterest.md) object in the response body.

## Examples

### Request

The following is an example of the request.
<!-- {
  "blockType": "request",
  "name": "get_personinterest"
}-->

```http
GET https://graph.microsoft.com/Beta/user/profile/interests/{id}
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability. All the properties will be returned from an actual call.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.personInterest"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "categories": [
    "categories-value"
  ],
  "description": "description-value",
  "displayName": "displayName-value",
  "webUrl": "webUrl-value"
}
```

<!-- uuid: 16cd6b66-4b1a-43a1-adaf-3a886856ed98
2019-02-04 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Get personInterest",
  "keywords": "",
  "section": "documentation",
  "tocPath": ""
}-->