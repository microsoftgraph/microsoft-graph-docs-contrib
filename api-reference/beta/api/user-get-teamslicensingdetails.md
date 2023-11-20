---
title: "Gets the License Status of the user in Microsoft Teams."
description: "Gets the License Status of the user in Microsoft Teams."
author: "mea"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Get teams licensing details for a user

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Gets whether a [user](../resources/user.md) has a valid teams license. This API specifies the licensing properties of a user.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission Type                        | Permissions (from least to most privileged)  |
| :------------------------------------- | :------------------------------------------------------------------------------------------------ |
| Delegated (work or school account)     | UserRead.All, DirectoryRead.All, UserReadWrite.All ,DirectoryReadWrite.All                                                                         |
| Delegated (personal Microsoft account) | Not supported.                                                                                    |
| Application                            | Not Supported.                                                                            |

## HTTP request
<!-- { "blockType": "ignored" } -->
```http
GET /users/{user-id}/licenseDetails/getTeamsLicensingDetails
```

## Request headers

| Header           | Value                      |
| :--------------- | :------------------------- |
| Authorization    | Bearer {token}. Required.  |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code along with a boolean which tells whether a user is licensed for Microsoft teams or not. [teamsLicensingDetails](../resources/teamslicensingdetails.md).

## Examples

### Request

The following is an example of the request.

<!-- {
  "blockType": "request",
  "name": "user_get_teams_licensing_details",
  "sampleKeys": ["2f39ffba-51ca-4d2d-a66f-a020a83ce208"]
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/users/2f39ffba-51ca-4d2d-a66f-a020a83ce208/licenseDetails/getTeamsLicensingDetails
```

### Response

The following is an example of the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamsLicensingDetails"
} -->
```http
HTTP/1.1 200 OK
Content-type: application/json
{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.teamsLicensingDetails",
  "hasTeamsLicense": true
}
```

## See also

- [Get user's region and locale](user-get-regionlocale.md)
- [Get organization region and enablement status](teamwork-get-regionandenablementstatus.md)
