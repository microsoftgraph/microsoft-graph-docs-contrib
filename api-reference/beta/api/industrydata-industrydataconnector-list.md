---
title: "List industryDataConnectors"
description: "Get the industryDataConnector resources from the dataConnector navigation property."
author: "mlafleur"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: apiPageType
ms.date: 06/11/2024
---

# List industryDataConnectors

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [industryDataConnector](../resources/industrydata-industrydataconnector.md) resources from the **dataConnector** navigation property.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "industrydata_industrydataconnector_list" } -->
[!INCLUDE [permissions-table](../includes/permissions/industrydata-industrydataconnector-list-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /external/industryData/dataConnectors
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.industryData.industryDataConnector](../resources/industrydata-industryDataConnector.md) objects in the response body.

## Examples

### Request

The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_industrydataconnector"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/external/industryData/dataConnectors
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-industrydataconnector-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/list-industrydataconnector-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-industrydataconnector-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-industrydataconnector-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-industrydataconnector-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-industrydataconnector-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-industrydataconnector-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/list-industrydataconnector-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.industryData.industryDataConnector)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/industryData/dataConnectors",
    "@odata.nextLink": "https://graph.microsoft.com/beta/external/industryData/dataConnectors?$skiptoken=id-%27ff8c6a87-31d2-43ad-e990-08dacc85e8cd%27",
    "value": [
        {
            "@odata.type": "#microsoft.graph.industryData.azureDataLakeConnector",
            "id": "51dca0a0-85f6-4478-f526-08daddab2271",
            "displayName": "Rostering connector"
        },
        {
            "@odata.type": "#microsoft.graph.industryData.azureDataLakeConnector",
            "id": "f02aa680-4cdc-4d57-f4e1-08daddab2271",
            "displayName": "CSV connector"
        },
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
    ]
}
```
