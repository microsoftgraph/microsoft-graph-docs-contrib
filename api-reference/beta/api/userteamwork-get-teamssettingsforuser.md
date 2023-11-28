---
title: "Get the Microsoft Teams settings for user"
description: "Get user's locale and region properties of user teamwork for a user."
author: "mea"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Get the Microsoft Teams settings for user

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get [userTeamwork](../resources/userteamwork.md) settings for the specified [user](../resources/user.md), which includes the user's chosen locale on Microsoft Teams and the user's region.

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

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "user_get_region_locale",
  "sampleKeys": ["2f39ffba-51ca-4d2d-a66f-a020a83ce208"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/2f39ffba-51ca-4d2d-a66f-a020a83ce208/teamwork
```

### Response

The following is an example of the response.

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

- [Get user's licensing details](user-get-teamslicensingdetails.md)
- [Get organization region and enablement status](teamwork-get-settingsfororganization.md)
