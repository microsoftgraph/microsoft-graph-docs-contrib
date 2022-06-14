# Promoting change update the photo (picture) for a team from /beta to /v1.0
---
title: "Update team photo"
description: "Update the photo (picture) for a team."
author: "sumitgupta"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: apiPageType

---

# Update team photo

Namespace: microsoft.graph

Update the photo (picture) for a team.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type      | Permissions (from least to most privileged)              |
|:--------------------|:---------------------------------------------------------|
|Delegated (work or school account) | GraphPermissionConstants.TeamSettingsReadWriteAll, GraphPermissionConstants.GroupReadWriteAll, GraphPermissionConstants.DirectoryReadWriteAll |
|Delegated (personal Microsoft account) | Not supported.    |
|Application | GraphPermissionConstants.TeamSettingsReadWriteAll, GraphPermissionConstants.GroupReadWriteAll, GraphPermissionConstants.DirectoryReadWriteAll |


## HTTP request

### Update the photo

This endpoint will update the binary data for the photo.

<!-- {
  "blockType": "ignored"
}-->

```http
PUT /teams/{id}/photo/$value
```

## Request headers

| Header        | Value           |
|:--------------|:--------------  |
| Authorization | Bearer {token}. Required.  |

## Request body

Binary data of the image.
Content-type : image/jpeg

## Response

### Response for updating the photo

If successful, this method returns a `200 OK` response code.

## Examples

### Update the team photo

Here is an example of the request to update the team photo.

#### Request

<!-- {
  "blockType": "ignored",
  "name": "update_team_photo"
}-->
```http
PUT https://graph.microsoft.com/v1.0/teams/{id}/photo/$value
Content-type: image/jpeg

Binary data for the image
```

#### Response
```
HTTP/1.1 200 OK
```