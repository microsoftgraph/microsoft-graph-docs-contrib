---
title: "Update profilePhoto"
description: "Update the photo for any user in the tenant, including the signed-in user, or the specified group or contact or team."
ms.localizationpriority: medium
author: "kevinbellinger"
ms.subservice: "people"
doc_type: apiPageType
ms.date: 09/23/2024
---

# Update profilePhoto

Namespace: microsoft.graph

Update the photo for the specified contact, group, team, or user in a tenant. The size of the photo you can update to is limited to 4 MB.

You can use either PATCH or PUT for this operation.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

The following tables show the least privileged permission or permissions required to call this API on each supported resource type. Follow [best practices](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions) to request least privileged permissions. For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

### To update the profile photo of a contact

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type      | Least privileged permissions             | Higher privileged permissions             |
|:--------------------|:-----------------------------------------|:------------------------------------------|
|Delegated (work or school account)      |   Contacts.ReadWrite           | Not supported. |
|Delegated (personal Microsoft account)      |   Not supported.            | Not supported. |
|Application      |    Contacts.ReadWrite           | Not supported. |

### To update the profile photo of a group

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type      | Least privileged permissions             | Higher privileged permissions             |
|:--------------------|:-----------------------------------------|:------------------------------------------|
|Delegated (work or school account)      |    ProfilePhoto.ReadWrite.All           | Group.ReadWrite.All |
|Delegated (personal Microsoft account)      |    Not supported.            | Not supported. |
|Application      |    ProfilePhoto.ReadWrite.All           | Group.ReadWrite.All |

### To update the profile photo of a team

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type      | Least privileged permissions             | Higher privileged permissions             |
|:--------------------|:-----------------------------------------|:------------------------------------------|
| Delegated (work or school account)        | TeamSettings.ReadWrite.All | Not supported. |
| Delegated (personal Microsoft account)    | Not supported.     | Not supported. |
| Application                               | TeamSettings.ReadWrite.All | Not supported. |

### To update the profile photo of a user

<!-- { "blockType": "ignored"  } // Note: Removing this line will result in the permissions autogeneration tool overwriting the table. -->
|Permission type      | Least privileged permissions             | Higher privileged permissions             |
|:--------------------|:-----------------------------------------|:------------------------------------------|
|Delegated (work or school account)      |   ProfilePhoto.ReadWrite.All  | User.ReadWrite, User.ReadWrite.All           |
|Delegated (personal Microsoft account)      |   User.ReadWrite           | Not supported. |
|Application      |     ProfilePhoto.ReadWrite.All           | User.ReadWrite.All |

> [!NOTE]
>
> - Users with admin roles such as User admins, Global admins, or People admins can update the photo of any user in the organization by using delegated permissions. This operation is also supported with application permissions. Updating the photo of any user in the organization requires *ProfilePhoto.ReadWrite.All* or *User.ReadWrite.All* permission. Updating the photo of the signed-in user only requires *User.ReadWrite* permission.
> - Updating a user's photo using the Microsoft Graph API is currently not supported in Azure AD B2C tenants.

## HTTP request

To update a contact's profile photo:
<!-- { "blockType": "ignored" } -->
```http
PATCH /me/contacts/{id}/photo/$value
PATCH /users/{id | userPrincipalName}/contacts/{id}/photo/$value
PATCH /me/contactfolders/{contactFolderId}/contacts/{id}/photo/$value
PATCH /users/{id | userPrincipalName}/contactfolders/{contactFolderId}/contacts/{id}/photo/$value

PUT /me/contacts/{id}/photo/$value
PUT /users/{id | userPrincipalName}/contacts/{id}/photo/$value
PUT /me/contactfolders/{contactFolderId}/contacts/{id}/photo/$value
PUT /users/{id | userPrincipalName}/contactfolders/{contactFolderId}/contacts/{id}/photo/$value
```

To update a group photo:
<!-- { "blockType": "ignored" } -->
```http
PATCH /groups/{id}/photo/$value

PUT /groups/{id}/photo/$value
```

To update a team photo:
<!-- { "blockType": "ignored" } -->
```http
PUT /teams/{id}/photo/$value
```

To update a user's profile photo:
<!-- { "blockType": "ignored" } -->
```http
PATCH /me/photo/$value
PATCH /users/{id | userPrincipalName}/photo/$value

PUT /me/photo/$value
PUT /users/{id | userPrincipalName}/photo/$value
```

## Request headers

| Header       | Value |
|:---------------|:--------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | image/jpeg. Required.  |

## Request body

In the request body, include the binary data of the photo.

## Response

If successful, this method returns a `200 OK` response code or a `204 No Content` response code for updating the photo of a **team**.

## Examples

### Example 1: Update the photo of a user

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_profilephoto"
}-->
```http
PUT https://graph.microsoft.com/v1.0/me/photo/$value
Content-type: image/jpeg

Binary data for the image

```

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-profilephoto-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-profilephoto-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-profilephoto-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 200 OK
```

### Example 2: Update the photo of a team

#### Request

The following example shows a request to update a team photo.


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_team_photo"
}-->
```http
PUT https://graph.microsoft.com/v1.0/teams/172b0cce-e65d-44ce-9a49-91d9f2e8491e/photo/$value
Content-type: image/jpeg

Binary data for the image
```

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/update-team-photo-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-team-photo-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-team-photo-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```
