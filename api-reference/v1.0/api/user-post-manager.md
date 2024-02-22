---
title: "Assign manager"
description: "Assign a user's manager."
ms.localizationpriority: medium
author: "yyuank"
ms.reviewer: "iamut"
ms.prod: "users"
doc_type: apiPageType
---

# Assign manager

Namespace: microsoft.graph

Assign a user's manager.

> **Note:** You cannot assign direct reports; instead, use this API.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "user_post_manager" } -->
[!INCLUDE [permissions-table](../includes/permissions/user-post-manager-permissions.md)]

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PUT /users/{id}/manager/$ref
```
## Request headers
| Header       | Value |
|:---------------|:----------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-type   | application/json. Required.|

## Request body
In the request body, supply a JSON object and pass an `@odata.id` parameter with the read URL of the [directoryObject](../resources/directoryobject.md), [user](../resources/user.md), or [organizational contact](../resources/orgcontact.md) object to be added.

## Response

If successful, this method returns `204 No Content` response code. It doesn't return anything in the response body.

## Example
### Request
The following example shows a request. The request body is a JSON object with an `@odata.id` parameter and the read URL for the [user](../resources/user.md) object to be assigned as a manager.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_manager_from_group"
}-->
```http
PUT https://graph.microsoft.com/v1.0/users/10f17b99-784c-4526-8747-aec8a3159d6a/manager/$ref
Content-type: application/json

{
  "@odata.id": "https://graph.microsoft.com/v1.0/users/6ea91a8d-e32e-41a1-b7bd-d2d185eed0e0"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-manager-from-group-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-manager-from-group-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-manager-from-group-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-manager-from-group-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-manager-from-group-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-manager-from-group-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-manager-from-group-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-manager-from-group-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note**: The response object shown here might be shortened for readability. 
<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!-- {
  "type": "#page.annotation",
  "description": "Create member",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}-->

