---
title: "Get Microsoft Teams settings for the organization."
description: "Get organization settings for teamwork, such as the region and Microsoft Teams enablement status."
author: "mea"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Get Microsoft Teams settings for the organization

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get organization settings for [teamwork](../resources/teamwork.md), such as the region and Microsoft Teams enablement status.

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

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code along with a [teamwork](../resources/teamwork.md) object in the response body.

## Examples

### Request

The following example shows the request.

<!-- {
  "blockType": "request",
  "name": "teamwork_get_region_enablement_status",
  "sampleKeys": ["2f39ffba-51ca-4d2d-a66f-a020a83ce208"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/teamwork
```

### Response

The following example shows the response.

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
- [Get user's settings for Microsoft Teams](userteamwork-get.md)
