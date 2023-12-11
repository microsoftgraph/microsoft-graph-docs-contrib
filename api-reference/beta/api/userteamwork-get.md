---
title: "Get Microsoft Teams settings for a user"
description: "Get user teamwork settings for a user such as user locale and user region."
author: "mea"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Get Microsoft Teams settings for a user

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [userTeamwork](../resources/userteamwork.md) settings for a specified [user](../resources/user.md), which includes the region on Microsoft Teams and the locale chosen by the user.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission Type                        | Permissions (from least to most privileged)  |
| :------------------------------------- | :------------------------------------------------------------------------------------------------ |
| Delegated (work or school account)     | UserTeamwork.Read                                                                                 |
| Delegated (personal Microsoft account) | Not supported.                                                                                    |
| Application                            | UserTeamwork.Read.All                                                                            |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /users/{user-id}/teamwork
```

## Request headers

| Header           | Value                      |
| :--------------- | :------------------------- |
| Authorization    | Bearer {token}. Required.  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code with a [userTeamwork](../resources/userteamwork.md) object in the response body.

## Examples

### Request

The following example shows the request.

<!-- {
  "blockType": "request",
  "name": "user_get_region_locale",
  "sampleKeys": ["2f39ffba-51ca-4d2d-a66f-a020a83ce208"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/2f39ffba-51ca-4d2d-a66f-a020a83ce208/teamwork
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.userteamwork"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#users('2f39ffba-51ca-4d2d-a66f-a020a83ce208')/teamwork",
  "id": "userTeamwork",
  "locale": "en-us",
  "region": "Americas"
}
```

## See also

- [Get the licensing details of a user](licenseDetails-getteamslicensingdetails.md)
- [Get Microsoft Teams settings for organization](teamwork-get.md)
