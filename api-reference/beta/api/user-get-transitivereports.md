---
title: "user: Get transitiveReports"
description: "Get the count of transitive reports for a user."
author: "dkershaw10"
localization_priority: Normal
ms.prod: "microsoft-identity-platform"
doc_type: apiPageType
---

# user: Get transitiveReports

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve a count of transitive reports for a user.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).


| Permission type | Permissions (from least to most privileged) |
|:--------------------|:---------------------------------------------------------|
| Delegated (work or school account) | User.Read, User.Read.All, Directory.Read.All |
| Delegated (personal Microsoft account) | Not supported. |
| Application | User.Read, User.Read.All, Directory.Read.All |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /users/{id}/transitiveReports/$count
```
## Optional query parameters

This method does not support the use of query parameters, but does require the `$count` query segment.

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| ConsistencyLevel | eventual. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a count of transitive reports for the user in the response body.

## Examples

### Get the count of transitive reports for a user

#### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "get_transitivereports"
}-->
```http
GET https://graph.microsoft.com/beta/users/45b7d2e7-b882-4a80-ba97-10b7a63b8fa4/transitiveReports/$count
```

#### Response

The following is an example of the response.
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 200 OK
Content-type: text/plain
```

5

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get transitiveReports",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->
