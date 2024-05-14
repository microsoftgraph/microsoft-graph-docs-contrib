---
title: "Update oneRosterApiDataConnector"
description: "Update the properties of a microsoft.graph.industryData.oneRosterApiDataConnector object."
author: "dakelle"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: apiPageType
---

# Update oneRosterApiDataConnector

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of a [microsoft.graph.industryData.oneRosterApiDataConnector](../resources/industrydata-onerosterapidataconnector.md) object.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "industrydata-onerosterapidataconnector-update-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/industrydata-onerosterapidataconnector-update-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
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
| displayName           | String                                                                             | The name of the data connector. Inherited from [microsoft.graph.industryData.industryDataConnector](../resources/industrydata-industrydataconnector.md). Required.                                                                                                   |
| apiFormat             | microsoft.graph.industryData.apiFormat                                             | API formats of external systems the industryDataHub can connect to. Inherited from [microsoft.graph.industryData.apiDataConnector](../resources/industrydata-apidataconnector.md). The possible values are: `oneRoster`, `unknownFutureValue`. Required.             |
| baseUrl               | String                                                                             | The base URI including the scheme, host, and path for the API (with or without a trailing '/'). Example: https://example.com/ims/oneRoster/. Inherited from [microsoft.graph.industryData.apiDataConnector](../resources/industrydata-apidataconnector.md). Required.|
| credential            | [microsoft.graph.industryData.credential](../resources/industrydata-credential.md) | Base type for all kinds of credentials supported in the industryData API. Inherited from [microsoft.graph.industryData.apiDataConnector](../resources/industrydata-apidataconnector.md). Required.                                                                   |
| apiVersion            | String                                                                             | Represents the API version of the OneRoster source. Required.                                                                                                                                                                                                        |
| isDemographicsEnabled | Boolean                                                                            | Represents user preference to import optional demographics data. Required.                                                                                                                                                                                           |
| isFlagsEnabled        | Boolean                                                                            | Represents user preference to import optional flags data. Required.                                                                                                                                                                                                  |
| isContactsEnabled     | Boolean                                                                            | Represents user preference to import optional contacts data. Required.                                                                                                                                                                                               |

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following example shows a request.
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

