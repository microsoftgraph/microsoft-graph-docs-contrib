---
title: "Assign sponsors"
description: "Assign a user or group as the user's sponsor."
author: "sadia353"
ms.localizationpriority: medium
ms.prod: "users"
doc_type: apiPageType
---

# Assign sponsors

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Assign a user or group as the user's sponsor.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account) | User.ReadWrite.All, Directory.ReadWrite.All    |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | User.ReadWrite.All, Directory.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users/{id}/sponsors/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON object and pass an `@odata.id` parameter with the read URL of the [user](../resources/user.md) or [group](../resources/group.md) object to be added.

## Response

If successful, this method returns `204 No Content` response code. It does not return anything in the response body.

## Example

### Request

The following is an example of the request. The request body is a JSON object with an `@odata.id` parameter and the read URL for the [user](../resources/user.md) object to be assigned as a sponsor.

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "create_sponsors"
}
-->
``` http
POST https://graph.microsoft.com/beta/users/{user-id}/sponsors/$ref
Content-Type: application/json

{
  "@odata.id": "https://graph.microsoft.com/beta/users/{user-id}"
}
```

### Response

The following is an example of the response.
>**Note**: The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```
