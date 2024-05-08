---
title: "Delete profilePhoto"
description: "Delete the photo for the signed-in user or the specified group."
ms.localizationpriority: medium
author: "kristinmcleod"
ms.prod: "people"
doc_type: apiPageType
---

# Delete profilePhoto

Namespace: microsoft.graph

Delete the photo for the signed-in user or the specified group. 

> [!NOTE]
> 
> The delete operation supports only user or group photos, but _not Outlook contact nor Teams photos_.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

The following tables show the least privileged permission or permissions required to call this API on each supported resource type. Follow [best practices](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions) to request the least privileged permissions. For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### To delete the profile photo of the signed-in user

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type      | Least privileged permissions             | Higher privileged permissions             |
|:--------------------|:-----------------------------------------|:------------------------------------------|
|Delegated (work or school account)      |   User.ReadWrite | User.ReadWrite.All           |
|Delegated (personal Microsoft account)      |   Not supported.            | Not supported. |
|Application      |    User.ReadWrite.All           | Not supported. |

### To delete the profile photo of a group

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type      | Least privileged permissions             | Higher privileged permissions             |
|:--------------------|:-----------------------------------------|:------------------------------------------|
|Delegated (work or school account)      |   Group.ReadWrite.All           | Not supported. |
|Delegated (personal Microsoft account)      |   Not supported.            | Not supported. |
|Application      |    Not supported.           | Not supported. |

> [!NOTE]
> - An app with only application permissions cannot delete a group's photo.
> - Global and user admins can delete the photo of any user in the organization using delegated permissions. This operation also supports application permissions. Deleting the photo of any user in the organization requires *User.ReadWrite.All* permissions. Deleting the photo of the signed-in user only requires *User.ReadWrite* permissions.

## HTTP request

To delete a user's profile photo:
<!-- { "blockType": "ignored" } -->
```http
DELETE /me/photo/$value
DELETE /users/{id | userPrincipalName}/photo/$value
```

To delete a group photo:
<!-- { "blockType": "ignored" } -->
```http
DELETE /groups/{id}/photo/$value
```

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_profilephoto"
}-->
```http
DELETE https://graph.microsoft.com/beta/me/photo/$value
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/delete-profilephoto-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/delete-profilephoto-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/delete-profilephoto-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-profilephoto-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-profilephoto-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/delete-profilephoto-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/delete-profilephoto-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 200 OK
```
