---
title: "Add sponsor"
description: "Assign a user a sponsor."
author: "sadia353"
ms.localizationpriority: medium
ms.prod: "users"
doc_type: apiPageType
---

# Add sponsor

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Assign a user a sponsor. Sponsors are users and groups that are responsible for this guest user's privileges in the tenant and for keeping the guest user's information and access up to date.

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

## Examples

### Example 1: Assign a user as a sponsor

#### Request

The following is an example of the request. The request body is a JSON object with an `@odata.id` parameter and the read URL for the [user](../resources/user.md) object to be assigned as a sponsor.

The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_userSponsors"
}
-->
``` http
POST https://graph.microsoft.com/beta/users/d8ab5060-f636-4cff-ae97-d4687f5c83f3/sponsors/$ref
Content-Type: application/json

{
  "@odata.id": "https://graph.microsoft.com/beta/users/{user-id}"
}
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-usersponsors-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-usersponsors-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Example 2: Assign a group as a sponsor

#### Request

The following is an example of the request. The request body is a JSON object with an `@odata.id` parameter and the read URL for the [group](../resources/group.md) object to be assigned as a sponsor.

The following is an example of a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_groupSponsors"
}
-->
``` http
POST https://graph.microsoft.com/beta/users/d8ab5060-f636-4cff-ae97-d4687f5c83f3/sponsors/$ref
Content-Type: application/json

{
  "@odata.id": "https://graph.microsoft.com/beta/groups/{group-id}"
}
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-groupsponsors-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-groupsponsors-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```
