---
title: "Remove sponsor"
description: "Remove a user's sponsor."
author: "sadia353"
ms.localizationpriority: medium
ms.subservice: entra-users
doc_type: apiPageType
ms.date: 10/15/2024
---

# Remove sponsor

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Remove a user's sponsor.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "user_delete_sponsors" } -->
[!INCLUDE [permissions-table](../includes/permissions/user-delete-sponsors-permissions.md)]

[!INCLUDE [rbac-user-sponsors-apis-write](../includes/rbac-for-apis/rbac-user-sponsors-apis-write.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
DELETE /users/{id}/sponsors/{id}/$ref
```

> [!CAUTION]
> If `/$ref` is not appended to the request and the calling app has permissions to manage the sponsor object type, the sponsor object is also deleted from Microsoft Entra ID; otherwise, a `403 Forbidden` error is returned. For example, an app with `User.ReadWrite.All` permissions deletes a user who is a sponsor. You can restore specific objects through the [Restore deleted items API](directory-deleteditems-restore.md).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `204 No Content` response code. It doesn't return anything in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_sponsors_from_user"
}
-->
```http
DELETE https://graph.microsoft.com/beta/users/{user-id}/sponsors/{directory-object-id}/$ref
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-sponsors-from-user-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-sponsors-from-user-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-sponsors-from-user-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-sponsors-from-user-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-sponsors-from-user-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-sponsors-from-user-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```
