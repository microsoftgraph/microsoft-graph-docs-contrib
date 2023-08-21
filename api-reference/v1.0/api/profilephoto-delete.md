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


## Permissions

The following tables show the least privileged permission or permissions required to call this API on each supported resource type. Follow [best practices](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions) to request least privileged permissions. For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).


### To delete the profile photo of a group

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type      | Least privileged permissions             | Higher privileged permissions             |
|:--------------------|:-----------------------------------------|:------------------------------------------|
|Delegated (work or school account)      |   Group.ReadWrite.All           | Not supported. |
|Delegated (personal Microsoft account)      |   Not supported.            | Not supported. |
|Application      |    Not supported.           | Not supported. |


### To delete the profile photo of the signed-in user

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type      | Least privileged permissions             | Higher privileged permissions             |
|:--------------------|:-----------------------------------------|:------------------------------------------|
|Delegated (work or school account)      |   User.ReadWrite | User.ReadWrite.All           |
|Delegated (personal Microsoft account)      |   Not supported.            | Not supported. |
|Application      |    User.ReadWrite.All           | Not supported. |

> [!NOTE]
>
> - There is currently a [known issue](/graph/known-issues#groups) to accessing group photos using application permissions.
> - To delete the photo of any user in the organization, your app must have the *User.ReadWrite.All* application permission and call this API under its own identity, not on behalf of a user. To learn more, see [get access without a signed-in user](/graph/auth-v2-service). Deleting the photo of the signed-in user only requires *User.ReadWrite* permission.
> - Deleting a user's photo using the Microsoft Graph API is currently not supported in Azure AD B2C tenants.

## HTTP request

To delete a group photo:
<!-- { "blockType": "ignored" } -->
```http
DELETE /groups/{id}/photo/$value
```

To delete a user's profile photo:
<!-- { "blockType": "ignored" } -->
```http
DELETE /me/photo/$value
DELETE /users/{id | userPrincipalName}/photo/$value
```

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | image/jpeg. Required.  |


## Response

If successful, this method returns a `200 OK` response code.

## Examples

### Example 1: DELETE the photo of the user

#### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "delete_profilephoto"
}-->
```http
DELETE https://graph.microsoft.com/v1.0/me/photo/$value
```

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/delete-profilephoto-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/delete-profilephoto-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/delete-profilephoto-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/delete-profilephoto-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following is an example of the response.

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 200 OK
```