---
title: "Get teamwork."
description: "Get organization settings for teamwork, such as the region of the organization and the Microsoft Teams enablement status."
author: "mea"
ms.localizationpriority: high
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Get teamwork

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the properties and relationships of a [teamwork](../resources/teamwork.md) object, such as the region of the organization and whether Microsoft Teams is enabled.

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

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_teamworkSettings_for_organization",
}-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/teamwork
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-teamworksettings-for-organization-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-teamworksettings-for-organization-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-teamworksettings-for-organization-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-teamworksettings-for-organization-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-teamworksettings-for-organization-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-teamworksettings-for-organization-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-teamworksettings-for-organization-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-teamworksettings-for-organization-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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

- [licenseDetails: getTeamsLicensingDetails](licenseDetails-getteamslicensingdetails.md)
- [Get userTeamwork](userteamwork-get.md)
