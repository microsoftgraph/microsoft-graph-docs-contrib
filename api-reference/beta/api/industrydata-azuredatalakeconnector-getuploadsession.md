---
title: "azureDataLakeConnector: getUploadSession"
description: "Retrieve an upload session used to supply file-based data to an inbound flow."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: apiPageType
---

# azureDataLakeConnector: getUploadSession

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve an upload session used to supply file-based data to an inbound flow.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                                 |
| :------------------------------------- | :-------------------------------------------------------------------------- |
| Delegated (work or school account)     | IndustryData-DataConnector.Upload, IndustryData-DataConnector.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported.                                                              |
| Application                            | IndustryData-DataConnector.Upload, IndustryData-DataConnector.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /external/industryData/dataConnectors/{industryDataConnectorId}/microsoft.graph.industryData.azureDataLakeConnector/getUploadSession
```

## Function parameters

In the request URL, provide the following query parameters with values.

| Parameter    | Type    | Description                                                                                                                          |
| :----------- | :------ | :----------------------------------------------------------------------------------------------------------------------------------- |
| resetSession | Boolean | `True` indicates that a new [microsoft.graph.industryData.fileUploadSession](../resources/industrydata-fileuploadsession.md) with an empty container is returned. |

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [microsoft.graph.industryData.fileUploadSession](../resources/industrydata-fileuploadsession.md) in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "azuredatalakeconnectorthis.getuploadsession",
  "sampleKeys": ["51dca0a0-85f6-4478-f526-08daddab2271"]
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/external/industryData/dataConnectors/51dca0a0-85f6-4478-f526-08daddab2271/microsoft.graph.industryData.azureDataLakeConnector/getUploadSession
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/azuredatalakeconnectorthisgetuploadsession-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/azuredatalakeconnectorthisgetuploadsession-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.fileUploadSession"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "containerExpirationDateTime": "2022-12-16T06:07:39.3096785Z",
  "containerId": "40fe691e-a4b8-4b47-8c86-08daddab241e",
  "sessionExpirationDateTime": "2022-12-14T20:07:39.5792917Z",
  "sessionUrl": "https://azureBlobSas.example/"
}
```
