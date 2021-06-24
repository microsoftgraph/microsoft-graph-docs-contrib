---
title: "user: changePassword"
description: "Update the password of the currently signed-in user."
localization_priority: Normal
author: "jpettere"
ms.prod: "users"
doc_type: apiPageType
---

# user: changePassword

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the password of the currently signed-in user. This API does not allow resetting passwords of other users. To reset the password of other users, update the **passwordProfile** property of the [user](../resources/user.md) resource. See an example to [Update the passwordProfile of a user](../api/user-update.md#example-3-update-the-passwordprofile-of-a-user).

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).


|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Directory.AccessAsUser.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | Not supported. |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
POST /me/changePassword
```
## Request headers
| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | application/json  |

## Request body
In the request body, provide a JSON object with the following parameters.

| Parameter	   | Type	|Description|
|:---------------|:--------|:----------|
| currentPassword | String | The signed-in user's current password.|
| newPassword | String | The signed-in user's new password.|

## Response

If successful, this method returns `204 No Content` response code.

## Example
The following is an example of the request.

### Request

<!-- {
  "blockType": "request",
  "name": "user_changepassword"
}-->
```http
POST https://graph.microsoft.com/beta/me/changePassword
Content-type: application/json

{
    "currentPassword": "xWwvJ]6NMw+bWH-d",
    "newPassword": "0eM85N54wFxWwvJ]"
}
```


##### Response
<!-- {
  "blockType": "response",
  "truncated": true
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: a7c9a0de-8324-4f80-8d88-2e6d5838f3be
2021-06-24 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "user: changePassword",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->


