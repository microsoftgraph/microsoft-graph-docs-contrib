---
title: "Add sponsor (for agentUser)"
description: "Assign an agent user a sponsor."
author: "yyuank"
ms.reviewer: "iamut"
ms.date: 11/06/2025
ms.localizationpriority: medium
ms.subservice: "entra-agent-id"
doc_type: apiPageType
---

# Add sponsors (for agentUser)

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Assign an [agentUser](../resources/agentuser.md) a sponsor. Sponsors are users and groups that are responsible for this agent user's privileges in the tenant and for keeping the agent user's information and access up to date.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "agentuser_post_sponsors" } -->
[!INCLUDE [permissions-table](../includes/permissions/agentuser-post-sponsors-permissions.md)]

[!INCLUDE [rbac-user-sponsors-apis-write](../includes/rbac-for-apis/rbac-user-sponsors-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /users/{usersId}/sponsors/$ref
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON object and pass an `@odata.id` parameter with the read URL of the [user](../resources/user.md) or [group](../resources/group.md) object to be added.

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_sponsor_agentuser"
}
-->
``` http
POST https://graph.microsoft.com/beta/users/{usersId}/sponsors/$ref
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.directoryObject"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-sponsor-agentuser-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-sponsor-agentuser-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-sponsor-agentuser-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-sponsor-agentuser-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-sponsor-agentuser-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-sponsor-agentuser-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.directoryObject"
}
-->
``` http
HTTP/1.1 204 No Content
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.directoryObject",
  "id": "a6c034b8-621b-dee3-6abb-52cbce801fe9",
  "deletedDateTime": "String (timestamp)"
}
```

