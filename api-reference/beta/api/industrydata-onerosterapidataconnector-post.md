---
title: "Create oneRosterApiDataConnector"
description: "Create a new oneRosterApiDataConnector object."
author: "dakelle"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: apiPageType
ms.date: 06/18/2024
---

# Create oneRosterApiDataConnector

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [oneRosterApiDataConnector](../resources/industrydata-onerosterapidataconnector.md) object.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "industrydata_onerosterapidataconnector_post" } -->
[!INCLUDE [permissions-table](../includes/permissions/industrydata-onerosterapidataconnector-post-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /external/industryData/dataConnectors
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [oneRosterApiDataConnector](../resources/industrydata-oneRosterApiDataConnector.md) object.

The following table lists the required and optional properties for creating an **oneRosterApiDataConnector** object.


|Property|Type|Description|
|:---|:---|:---|
| displayName           | String                                                                             | The name of the data connector. Inherited from [industryDataConnector](../resources/industrydata-industrydataconnector.md). Required.                                                                                                   |
| apiFormat             | microsoft.graph.industryData.apiFormat                                             | The API format of the external system being connected to. Inherited from [apiDataConnector](../resources/industrydata-apidataconnector.md). The possible values are: `oneRoster`, `unknownFutureValue`. Required.             |
| baseUrl               | String                                                                             | The base URI, including the scheme, host, and path, with or without a trailing '/'. For example, "https://example.com/ims/oneRoster/v1p1". Inherited from [apiDataConnector](../resources/industrydata-apidataconnector.md). Required.|
| credential            | [microsoft.graph.industryData.credential](../resources/industrydata-credential.md) | The base type for all supported credentials. Inherited from [apiDataConnector](../resources/industrydata-apidataconnector.md). Required.                                                                   |
| apiVersion            | String                                                                             | The API version of the OneRoster source. Required.                                                                                                                                                                                                        |
| isDemographicsEnabled | Boolean                                                                            | Indicates whether the user specified to import optional demographics data. Required.                                                                                                                                                                                           |
| isFlagsEnabled        | Boolean                                                                            | Indicates whether the user specified to import optional flags data. Required.                                                                                                                                                                                                  |
| isContactsEnabled     | Boolean                                                                            | Indicates whether the user specified to import optional contacts data. Required.                                                                                                                                                                                               |



## Response

If successful, this method returns a `201 Created` response code and an updated [microsoft.graph.industryData.oneRosterApiDataConnector](../resources/industrydata-onerosterapidataconnector.md) object in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_onerosterapidataconnector"
}
-->
```http
POST https://graph.microsoft.com/beta/external/industryData/dataConnectors
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.industryData.oneRosterApiDataConnector",
  "displayName": "Generic OAuth2 Connector",
  "sourceSystem@odata.bind": "https://graph.microsoft.com/beta/external/industryData/sourceSystems('c93a6e02-aeb7-437f-cc52-08dc3fc158af')",
  "apiFormat": "oneRoster",
  "baseUrl": "https://fakeProvider.net/ims/oneroster/v1p1",
  "apiVersion": "1.1",
  "credential": {
    "@odata.type": "#microsoft.graph.industryData.oAuth2ClientCredential",
    "displayName": "One Roster API Credentials",
    "clientId": "530be723-6af3-4952-8658-668fb2598ad7",
    "clientSecret": "thisIsASecret",
    "tokenUrl": "https://login.microsoftonline.com/c27f982b-f7ee-4b8b-bb0e-3c55bd1dc02c/oauth2/token",
    "scope": null
  },
  "isDemographicsEnabled": false,
  "isFlagsEnabled": false,
  "isContactsEnabled": false
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-onerosterapidataconnector-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-onerosterapidataconnector-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-onerosterapidataconnector-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-onerosterapidataconnector-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-onerosterapidataconnector-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-onerosterapidataconnector-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-onerosterapidataconnector-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.oneRosterApiDataConnector"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.industryData.oneRosterApiDataConnector",
  "id": "f72b2c92-4b8b-461d-3725-08dc3fc158ff",
  "displayName": "Generic OAuth2 Connector",
  "apiFormat": "oneRoster",
  "baseUrl": "https://fakeProvider.net/ims/oneroster/v1p1",
  "apiVersion": "1.1",
  "isDemographicsEnabled": false,
  "isFlagsEnabled": false,
  "isContactsEnabled": false,
  "credential": {
    "@odata.type": "#microsoft.graph.industryData.oAuth2ClientCredential",
    "displayName": "One Roster API Credentials",
    "isValid": true,
    "lastValidDateTime": null,
    "clientId": "530be723-6af3-4952-8658-668fb2598ad7",
    "tokenUrl": "https://login.microsoftonline.com/c27f982b-f7ee-4b8b-bb0e-3c55bd1dc02c/oauth2/token",
    "scope": null
  }
}
```

