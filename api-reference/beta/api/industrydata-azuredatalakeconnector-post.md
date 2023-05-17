---
title: "Create azureDataLakeConnector"
description: "Create a new azureDataLakeConnector object."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: apiPageType
---

# Create azureDataLakeConnector

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [azureDataLakeConnector](../resources/industrydata-azuredatalakeconnector.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | IndustryData-DataConnector.ReadWrite.All    |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | IndustryData-DataConnector.ReadWrite.All    |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
POST /external/industryData/dataConnectors
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

In the request body, supply a JSON representation of the [microsoft.graph.industryData.azureDataLakeConnector](../resources/industrydata-azuredatalakeconnector.md) object.

You can specify the following properties when you create an **azureDataLakeConnector**.

| Property    | Type   | Description                               |
| :---------- | :----- | :---------------------------------------- |
| displayName | String | The name of the data connector. Required. |

## Response

If successful, this method returns a `201 Created` response code and a [microsoft.graph.industryData.azureDataLakeConnector](../resources/industrydata-azuredatalakeconnector.md) object in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_azureDataLakeConnector_from_dataConnectors"
}
-->

```http
POST https://graph.microsoft.com/beta/external/industryData/dataConnectors
Content-Type: application/json
Content-length: 104

{
    "@odata.type": "#microsoft.graph.industryData.azureDataLakeConnector",
    "displayName": "CSV connector",
    "sourceSystem@odata.bind": "https://graph.microsoft.com/beta/external/industryData/sourceSystems('aa050107-5784-4a8e-1876-08daddab21bc')"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-azuredatalakeconnector-from-dataconnectors-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-azuredatalakeconnector-from-dataconnectors-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-azuredatalakeconnector-from-dataconnectors-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-azuredatalakeconnector-from-dataconnectors-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-azuredatalakeconnector-from-dataconnectors-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-azuredatalakeconnector-from-dataconnectors-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.azureDataLakeConnector"
}
-->

```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.industryData.azureDataLakeConnector",
  "displayName": "CSV connector",
  "id": "51dca0a0-85f6-4478-f526-08daddab2271"
}
```
