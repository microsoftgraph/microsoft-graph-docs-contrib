---
title: "Get teamsAppSettings"
description: "Read the properties and relationships of a teamsAppSettings object."
author: "subray2014"
ms.localizationpriority: medium
ms.prod: "microsoft-teams"
doc_type: apiPageType
---

# Get teamsAppSettings
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [teamsAppSettings](../resources/teamsappsettings.md) object.

## Permissions
One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

|Permission type|Permissions (from least to most privileged)|
|:---|:---|
|Delegated (work or school account)|TeamworkAppSettings.Read.All, TeamworkAppSettings.ReadWrite.All|
|Delegated (personal Microsoft account)|Not supported|
|Application|Not supported|

> [!NOTE]
> TeamworkAppSettings.* permissions might not be visible in the Azure portal. For details and workarounds, see [known issues](/graph/known-issues#teamworkappsettings-permissions-are-not-visible-in-the-azure-portal).

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /teamwork/teamsAppSettings
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|

## Request body
Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [teamsAppSettings](../resources/teamsappsettings.md) object in the response body.

## Examples

### Example 1: Get the tenant-wide settings for all Teams apps in the tenant.

#### Request


# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_teamsappsettings"
}
-->
``` http
GET https://graph.microsoft.com/beta/teamwork/teamsAppSettings
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-teamsappsettings-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-teamsappsettings-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-teamsappsettings-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-teamsappsettings-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-teamsappsettings-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-teamsappsettings-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.teamsAppSettings"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.teamsAppSettings",
    "id": "65bdf003-0c4c-4bca-b102-0821ab0d1364",
    "allowUserRequestsForAppAccess": true,
    "isChatResourceSpecificConsentEnabled": "true"
  }
}
```

## See also

- [Resource-specific consent](/microsoftteams/platform/graph-api/rsc/resource-specific-consent)
