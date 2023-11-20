---
title: "Get whether teams is enabled for the organization, along with organization region."
description: "Get the teamwork settings of the organization."
author: "mea"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Get region and enablement status of Microsoft teams for a tenant

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get organization level region information along with Microsoft teams enablement status of a [teamwork](../resources/teamwork.md) settings of the organization. This API specifies the teamwork properties of a organization.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission Type                        | Permissions (from least to most privileged)  |
| :------------------------------------- | :------------------------------------------------------------------------------------------------ |
| Delegated (work or school account)     | Teamwork.Read.All                                                                                 |
| Delegated (personal Microsoft account) | Not supported.                                                                                    |
| Application                            |  Teamwork.Read.All                                                                            |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /teamwork
```

## Request headers

| Header           | Value                      |
| :--------------- | :------------------------- |
| Authorization    | Bearer {token}. Required.  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code along with region and teams enablement status of an organization of [teamwork](../resources/teamwork.md) object in the response body.

## Examples

### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "teamwork_get_region_enablement_status",
  "sampleKeys": ["2f39ffba-51ca-4d2d-a66f-a020a83ce208"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/teamwork
```

### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamwork"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#teamwork",
  "id": "teamwork",
  "isTeamsEnabled": true,
  "region": "Americas"
}
```

## See also

- [Get user's licensing details](user-get-teamslicensingdetails.md)
- [Get user's region and locale](user-get-regionlocale.md)
