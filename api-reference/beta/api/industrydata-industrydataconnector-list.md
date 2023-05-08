---
title: "List industryDataConnectors"
description: "Get the industryDataConnector resources from the dataConnector navigation property."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: apiPageType
---

# List industryDataConnectors

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the [industryDataConnector](../resources/industrydata-industrydataconnector.md) resources from the **dataConnector** navigation property.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                   |
| :------------------------------------- | :---------------------------------------------------------------------------- |
| Delegated (work or school account)     | IndustryData-DataConnector.Read.All, IndustryData-DataConnector.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported.                                                                |
| Application                            | IndustryData-DataConnector.Read.All, IndustryData-DataConnector.ReadWrite.All |

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
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.industryData.azureDataLakeConnector](../resources/industrydata-azuredatalakeconnector.md) objects in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "list_azuredatalakeconnector"
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/external/industryData/dataConnectors
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/list-azuredatalakeconnector-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/list-azuredatalakeconnector-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/list-azuredatalakeconnector-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/list-azuredatalakeconnector-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/list-azuredatalakeconnector-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/list-azuredatalakeconnector-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.industryData.azureDataLakeConnector)"
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
        }
    ]
}
```
