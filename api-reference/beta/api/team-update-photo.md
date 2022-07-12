---
title: "Update team photo"
description: "Update the photo (picture) of a team."
author: "sumitgupta"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: apiPageType

---

# Update team photo

Namespace: microsoft.graph

Update the photo (picture) of a team.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                            |
|:---------------------------------------|:-----------------------------------------------------------------------|
| Delegated (work or school account)     | TeamSettingsReadWriteAll, GroupReadWriteAll**, DirectoryReadWriteAll** |
| Delegated (personal Microsoft account) | Not supported.                                                         |
| Application                            | Not supported.                                                         |

[!INCLUDE [teamwork-permissions-note](../../../includes/teamwork-permissions-note.md)]


> **Note**: This API supports admin permissions. Global admins and Microsoft Teams service admins can access teams that they are not a member of.

## HTTP request

<!-- {
  "blockType": "ignored"
}-->

```http
PUT /teams/{id}/photo/$value
```

## Request headers

| Header        | Value                     |
|:--------------|:--------------------------|
| Authorization | Bearer {token}. Required. |

## Request body

In the request body, include the binary data of the photo.
Content-type : image/jpeg

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following is an example of a request to update a team photo.

<!-- {
  "blockType": "request",
  "name": "update_team_photo"
}-->
```http
PUT https://graph.microsoft.com/beta/teams/172b0cce-e65d-44ce-9a49-91d9f2e8491e/photo/$value
Content-type: image/jpeg

Binary data for the image
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
} -->

```http
HTTP/1.1 204 No Content
```
