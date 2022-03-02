---
title: "Get team photo"
description: "Get the photo (picture) for a team."
author: "akjo"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Get team photo

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the photo (picture) for a team, or metadata for the photo.

This method first attempts to retrieve the specified photo from Microsoft 365. If the photo is not available in Microsoft 365, it attempts to retrieve the photo from Azure Active Directory instead.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | Team.ReadBasic.All, TeamSettings.Read.All, TeamSettings.ReadWrite.All, Group.Read.All**, Group.ReadWrite.All**, Directory.Read.All**, Directory.ReadWrite.All** |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | TeamSettings.Read.Group*, TeamSettings.ReadWrite.Group*, Team.ReadBasic.All, TeamSettings.Read.All, TeamSettings.ReadWrite.All, Group.Read.All**, Group.ReadWrite.All**, Directory.Read.All**, Directory.ReadWrite.All**  |

[!INCLUDE [teamwork-permissions-note](../../../includes/teamwork-permissions-note.md)]

> **Note**: This API supports admin permissions. Global admins and Microsoft Teams service admins can access teams that they are not a member of.

## HTTP request

### Get the metadata of the photo

This endpoint will return the metadata of the photo.

<!-- {
  "blockType": "ignored"
}-->

```http
GET /teams/{id}/photo
```

### Get the photo

This endpoint will retrieve the binary data for the photo.

<!-- {
  "blockType": "ignored"
}-->

```http
GET /teams/{id}/photo/$value
```

## Request headers

| Header        | Value           |
|:--------------|:--------------  |
| Authorization | Bearer {token}. Required.  |

## Request body

Do not supply a body for this request.

## Response

### Response for getting the metadata of a photo

If successful, this method returns a `200 OK` response code, and metadata about the photo.

### Response for getting the photo

If successful, this method returns a `200 OK` response code, and the binary data for the photo.

## Examples

### Example 1: Get the photo metadata

#### Request

Here is an example of the request to get the metadata of the team photo.

<!-- {
  "blockType": "ignored",
  "name": "get_team_photo_metadata"
}-->
```http
GET https://graph.microsoft.com/beta/teams/{id}/photo
```

#### Response

Here is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response"
} -->

```http
HTTP/1.1 200 OK
Content-type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#teams('ddfcd489-628b-7d04-b48b-20075df800e5')/photo/$entity",
    "@odata.id": "https://graph.microsoft.com/beta/teams('ddfcd489-628b-7d04-b48b-20075df800e5')/photo",
    "@odata.mediaContentType": "image/jpeg",
    "@odata.mediaEtag": "\"BA09D118\"",
    "id": "240X240",
    "width": 240,
    "height": 240
}
```

### Example 2: Get the team photo's binary data

Here is an example of the request to get the team photo's binary data.

#### Request

<!-- {
  "blockType": "ignored",
  "name": "get_team_photo"
}-->
```http
GET https://graph.microsoft.com/beta/teams/{id}/photo/$value
```

#### Response

Contains the binary data of the requested photo. The HTTP response code is 200.

<!-- uuid: 8fcb5dbc-d5aa-4681-8e31-b001d5168d79
2015-10-25 14:57:30 UTC -->
<!--
{
  "type": "#page.annotation",
  "description": "Get team photo",
  "keywords": "",
  "section": "documentation",
  "tocPath": "",
  "suppressions": [
  ]
}
-->