---
title: "Update profilePhoto"
description: "Update the photo for the signed-in user, or the specified group or contact or team."
ms.localizationpriority: medium
author: "kevinbellinger"
ms.prod: "people"
doc_type: apiPageType
---

# Update profilePhoto

Namespace: microsoft.graph

Update the photo for the specified contact, group, team, or user in a tenant. The size of the photo you can update to must be under 8 MB.

Due to the current limit of 4 MB on the total size of each REST request, the size of the photo you can add is also limited to 4 MB. The following are the supported dimensions for HD photos on Exchange Online: `48x48`, `64x64`, `96x96`, `120x120`, `240x240`, `360x360`, `432x432`, `504x504`, and `648x648`.

You can use either PATCH or PUT for this operation.

> **Note:** This operation supports only a user's work or school mailboxes and not personal mailboxes.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

### To update the profile photo of a contact

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)      |   Contacts.ReadWrite           |
|Delegated (personal Microsoft account)      |   Not supported.            |
|Application      |    Contacts.ReadWrite           |

### To update the profile photo of a group

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)      |   Group.ReadWrite.All           |
|Delegated (personal Microsoft account)      |   Not supported.            |
|Application      |    Group.ReadWrite.All           |

### To update the profile photo of a team

| Permission Type | Permissions (from least to most privileged)  |
| --------------- | -------------------------------------------- |
| Delegated (work or school account)        | TeamSettingsReadWriteAll |
| Delegated (personal Microsoft account)    | Not supported.     |
| Application                               | TeamSettingsReadWriteAll |

### To update the profile photo of the signed-in user

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account)      |   User.ReadWrite, User.ReadWrite.All           |
|Delegated (personal Microsoft account)      |   Not supported.            |
|Application      |    User.ReadWrite.All           |

> [!NOTE]
>
> 1. To update the photo of any user in the organization, your app must have the *User.ReadWrite.All* application permission and call this API under its own identity, not on behalf of a user. To learn more, see [get access without a signed-in user](/graph/auth-v2-service). Updating the photo of the signed-in user only requires *User.ReadWrite* permission.
> 2. There is currently a [known issue](/graph/known-issues#groups) with accessing group photos using application permissions.
> 3. Updating a user's photo using the Microsoft Graph API is currently not supported in Azure AD B2C tenants.

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
PATCH /me/photo/$value
PATCH /users/{id | userPrincipalName}/photo/$value
PATCH /groups/{id}/photo/$value
PATCH /me/contacts/{id}/photo/$value
PATCH /users/{id | userPrincipalName}/contacts/{id}/photo/$value
PATCH /me/contactfolders/{contactFolderId}/contacts/{id}/photo/$value
PATCH /users/{id | userPrincipalName}/contactfolders/{contactFolderId}/contacts/{id}/photo/$value

PUT /me/photo/$value
PUT /users/{id | userPrincipalName}/photo/$value
PUT /groups/{id}/photo/$value
PUT /me/contacts/{id}/photo/$value
PUT /users/{id | userPrincipalName}/contacts/{id}/photo/$value
PUT /me/contactfolders/{contactFolderId}/contacts/{id}/photo/$value
PUT /users/{id | userPrincipalName}/contactfolders/{contactFolderId}/contacts/{id}/photo/$value
PUT /team/{id}/photo/$value
```

## Request headers

| Header       | Value |
|:---------------|:--------|
| Authorization  | Bearer {token}. Required.  |
| Content-Type  | image/jpeg. Required.  |

## Request body

In the request body, include the binary data of the photo in the request body.

## Response

If successful, this method returns a `200 OK` response code or a `204 No Content` response code for updating the photo of a **team**.

## Examples

### Example 1: Update the photo of the user

#### Request

The following is an example of a request.

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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-profilephoto-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-profilephoto-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-profilephoto-java-snippets.md)]
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

### Example 2: Update the photo of a team

#### Request

The following is an example of a request to update a team photo.


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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-team-photo-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-team-photo-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-team-photo-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---


#### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```
