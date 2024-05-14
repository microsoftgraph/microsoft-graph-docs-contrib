---
title: "List oneRosterApiDataConnector objects"
description: "Get a list of the microsoft.graph.industryData.oneRosterApiDataConnector objects and their properties."
author: "dakelle"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: apiPageType
---

# List oneRosterApiDataConnector objects

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [microsoft.graph.industryData.oneRosterApiDataConnector](../resources/industrydata-onerosterapidataconnector.md) objects and their properties.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "industrydata-onerosterapidataconnector-list-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/industrydata-onerosterapidataconnector-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /external/industryData/dataConnectors
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [oneRosterApiDataConnector](../resources/industrydata-onerosterapidataconnector.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_onerosterapidataconnector"
}
-->
``` http
GET https://graph.microsoft.com/beta/external/industryData/dataConnectors
```


### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.industryData.oneRosterApiDataConnector)"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.industryData.oneRosterApiDataConnector",
      "id": "51dca0a0-85f6-4478-f526-08daddab2271",
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
  ]
}
```

