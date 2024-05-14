---
title: "Create oneRosterApiDataConnector"
description: "Create a new microsoft.graph.industryData.oneRosterApiDataConnector object."
author: "dakelle"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: apiPageType
---

# Create oneRosterApiDataConnector

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [microsoft.graph.industryData.oneRosterApiDataConnector](../resources/industrydata-onerosterapidataconnector.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "industrydata-onerosterapidataconnector-post-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/industrydata-onerosterapidataconnector-post-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /external/industryData/dataConnectors
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.industryData.oneRosterApiDataConnector](../resources/industrydata-oneRosterApiDataConnector.md) object.

You can specify the following properties when you create an **oneRosterApiDataConnector**.


|Property|Type|Description|
|:---|:---|:---|
| displayName           | String                                                                             | The name of the data connector. Inherited from [microsoft.graph.industryData.industryDataConnector](../resources/industrydata-industrydataconnector.md). Required.                                                                                                   |
| apiFormat             | microsoft.graph.industryData.apiFormat                                             | API formats of external systems the industryDataHub can connect to. Inherited from [microsoft.graph.industryData.apiDataConnector](../resources/industrydata-apidataconnector.md). The possible values are: `oneRoster`, `unknownFutureValue`. Required.             |
| baseUrl               | String                                                                             | The base URI including the scheme, host, and path for the API (with or without a trailing '/'). Example: https://example.com/ims/oneRoster/. Inherited from [microsoft.graph.industryData.apiDataConnector](../resources/industrydata-apidataconnector.md). Required.|
| credential            | [microsoft.graph.industryData.credential](../resources/industrydata-credential.md) | Base type for all kinds of credentials supported in the industryData API. Inherited from [microsoft.graph.industryData.apiDataConnector](../resources/industrydata-apidataconnector.md). Required.                                                                   |
| apiVersion            | String                                                                             | Represents the API version of the OneRoster source. Required.                                                                                                                                                                                                        |
| isDemographicsEnabled | Boolean                                                                            | Represents user preference to import optional demographics data. Required.                                                                                                                                                                                           |
| isFlagsEnabled        | Boolean                                                                            | Represents user preference to import optional flags data. Required.                                                                                                                                                                                                  |
| isContactsEnabled     | Boolean                                                                            | Represents user preference to import optional contacts data. Required.                                                                                                                                                                                               |



## Response

If successful, this method returns a `201 Created` response code and an updated [microsoft.graph.industryData.oneRosterApiDataConnector](../resources/industrydata-onerosterapidataconnector.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_onerosterapidataconnector"
}
-->
``` http
POST https://graph.microsoft.com/beta/external/industryData/dataConnectors
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.industryData.oneRosterApiDataConnector",
  "displayName": "Generic OAuth2 Connector",
  "sourceSystem@odata.bind": "https://graph.microsoft.com/beta/external/industryData/sourceSystems('c93a6e02-aeb7-437f-cc52-08dc3fc158af')",
  "apiFormat": "oneRoster",
  "baseUrl": "https://fakeProvider.net/ims/oneroster",
  "apiVersion": "1.1",
  "credential": {
    "@odata.type": "#microsoft.graph.industryData.oAuth2ClientCredential",
    "displayName": "One Roster API Credentials",
    "clientId": "667d5178-0b0a-479f-abb4-0f86b5cd4554",
    "clientSecret": "thisIsASecret",
    "tokenUrl": "https://login.microsoftonline.com/72f988bf-86f1-41af-91ab-2d7cd011db47/oauth2/token",
    "scope": null
  },
  "isDemographicsEnabled": false,
  "isFlagsEnabled": false,
  "isContactsEnabled": false
}
```


### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "#microsoft.graph.industryData.oneRosterApiDataConnector"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.industryData.oneRosterApiDataConnector",
  "id": "f72b2c92-4b8b-461d-3725-08dc3fc158ff",
  "displayName": "Generic OAuth2 Connector",
  "apiFormat": "oneRoster",
  "baseUrl": "https://fakeProvider.net/ims/oneroster",
  "apiVersion": "1.1",
  "isDemographicsEnabled": false,
  "isFlagsEnabled": false,
  "isContactsEnabled": false,
  "credential": {
    "@odata.type": "#microsoft.graph.industryData.oAuth2ClientCredential",
    "displayName": "One Roster API Credentials",
    "isValid": false,
    "lastValidDateTime": null,
    "clientId": "667d5178-0b0a-479f-abb4-0f86b5cd4554",
    "tokenUrl": "https://login.microsoftonline.com/72f988bf-86f1-41af-91ab-2d7cd011db47/oauth2/token",
    "scope": null
  }
}
```

