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

Assign a user a sponsor. Sponsors are users and groups that are responsible for this guest user's privileges in the tenant and for keeping the guest user's information and access up to date.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "user_post_sponsors" } -->
[!INCLUDE [permissions-table](../includes/permissions/user-post-sponsors-permissions.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON object and pass an `@odata.id` parameter with the read URL of the [user](../resources/user.md) or [group](../resources/group.md) object to be added.

## Response

If successful, this method returns `204 No Content` response code. It doesn't return anything in the response body.

## Examples

### Example 1: Assign a user as a sponsor

#### Request

The following example shows a request. The request body is a JSON object with an `@odata.id` parameter and the read URL for the [user](../resources/user.md) object to be assigned as a sponsor.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_userSponsors"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/users/d8ab5060-f636-4cff-ae97-d4687f5c83f3/sponsors/$ref
Content-Type: application/json

{
  "@odata.id": "https://graph.microsoft.com/v1.0/users/{user-id}"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-usersponsors-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

### Example 2: Assign a group as a sponsor

#### Request

The following example shows a request. The request body is a JSON object with an `@odata.id` parameter and the read URL for the [group](../resources/group.md) object to be assigned as a sponsor.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_groupSponsors"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/users/d8ab5060-f636-4cff-ae97-d4687f5c83f3/sponsors/$ref
Content-Type: application/json

{
  "@odata.id": "https://graph.microsoft.com/v1.0/groups/{group-id}"
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-groupsponsors-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```
