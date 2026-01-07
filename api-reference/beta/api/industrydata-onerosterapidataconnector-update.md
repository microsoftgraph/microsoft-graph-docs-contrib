---
title: "Update oneRosterApiDataConnector"
description: "Update the properties of a oneRosterApiDataConnector object."
author: "dakelle"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: apiPageType
ms.date: 06/18/2024
---

# Update oneRosterApiDataConnector

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [oneRosterApiDataConnector](../resources/industrydata-onerosterapidataconnector.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "industrydata_onerosterapidataconnector_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/industrydata-onerosterapidataconnector-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
PATCH /external/industryData/dataConnectors/{industryDataConnectorId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

|Property|Type|Description|
|:---|:---|:---|
| displayName           | String                                                                             | The name of the data connector. Inherited from [industryDataConnector](../resources/industrydata-industrydataconnector.md). Required.                                                                                                   |
| apiFormat             | microsoft.graph.industryData.apiFormat                                             | The API format of the external system being connected to. Inherited from [apiDataConnector](../resources/industrydata-apidataconnector.md). The possible values are: `oneRoster`, `unknownFutureValue`. Required.             |
| baseUrl               | String                                                                             | The base URI including the scheme, host, and path for the API (with or without a trailing '/'). Example: `https://example.com/ims/oneRoster/v1p1`. Inherited from [apiDataConnector](../resources/industrydata-apidataconnector.md). Required.|
| credential            | [microsoft.graph.industryData.credential](../resources/industrydata-credential.md) | The base type for all supported credentials. Inherited from [apiDataConnector](../resources/industrydata-apidataconnector.md). Required.                                                                   |
| apiVersion            | String                                                                             | The API version of the OneRoster source. Required.                                                                                                                                                                                                        |
| isDemographicsEnabled | Boolean                                                                            | Indicates whether the user specified to import optional demographics data. Required.                                                                                                                                                                                           |
| isFlagsEnabled        | Boolean                                                                            | Indicates whether the user specified to import optional flags data. Required.                                                                                                                                                                                                  |
| isContactsEnabled     | Boolean                                                                            | Indicates whether the user specified to import optional contacts data. Required.                                                                                                                                                                                               |

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "update_onerosterapidataconnector",
  "sampleKeys": ["51dca0a0-85f6-4478-f526-08daddab2271"]
}
-->
```http
PATCH https://graph.microsoft.com/beta/external/industryData/dataConnectors/51dca0a0-85f6-4478-f526-08daddab2271
Content-type: application/json

{
  "@odata.type": "microsoft.graph.industryData.oneRosterApiDataConnector",
  "displayName": "One Roster Connector"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/update-onerosterapidataconnector-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/update-onerosterapidataconnector-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/update-onerosterapidataconnector-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/update-onerosterapidataconnector-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/update-onerosterapidataconnector-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/update-onerosterapidataconnector-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/update-onerosterapidataconnector-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true
}
-->
```http
HTTP/1.1 204 No Content
```

