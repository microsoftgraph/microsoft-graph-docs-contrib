---
title: "storyline: unfollow"
description: "Stop following a user."
author: "aditijha4"
ms.date: 02/06/2026
ms.localizationpriority: medium
ms.subservice: "viva-engage"
doc_type: apiPageType
---

# storyline: unfollow

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Stop following a user's [storyline](../resources/storyline.md). Removes the specified user from the signed-in user's following list.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "storyline-unfollow-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/storyline-unfollow-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users/{user-id}/employeeExperience/storyline/unfollow
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

For **delegated** permissions (user context), leave the request body empty:
``` json
{}
```

For **application** permissions (app-only context), provide the following parameter:

|Parameter|Type|Description|
|:---|:---|:---|
|unfollowBy|[engagementIdentitySet](../resources/engagementidentityset.md)|The identity information of the user who is unfollowing. Required for application permissions.|



## Response

If successful, this action returns a `204 No Content` response code.

## Examples

### Example 1: Unfollow a user with delegated permissions

The following example shows how to unfollow a user using delegated permissions.

#### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "storyline_unfollow_delegated"
}
-->
``` http
POST https://graph.microsoft.com/beta/users/f2a84916-d735-41d9-a04a-4ecf6266ae71/employeeExperience/storyline/unfollow
Content-Type: application/json

{}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/storyline-unfollow-delegated-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 2: Unfollow a user with application permissions

The following example shows how to unfollow a user using application permissions.

#### Request
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "storyline_unfollow_app_only"
}
-->
``` http
POST https://graph.microsoft.com/beta/users/b3c29da7-ff83-4a92-b14e-7c91fe830b96/employeeExperience/storyline/unfollow
Content-Type: application/json

{
  "unfollowBy": {
    "user": {
      "id": "e7f439cd-2e84-4b15-a903-f6d82a7b9c21"
    }
  }
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/storyline-unfollow-app-only-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

