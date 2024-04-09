---
title: "azureDataLakeConnector: getUploadSession"
description: "Retrieve an upload session used to supply file-based data to an inbound flow."
author: "mlafleur"
ms.localizationpriority: medium
ms.subservice: "industry-data-etl"
doc_type: apiPageType
---

# azureDataLakeConnector: getUploadSession

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve an upload session used to supply file-based data to an inbound flow.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "industrydata_azuredatalakeconnector_getuploadsession" } -->
[!INCLUDE [permissions-table](../includes/permissions/industrydata-azuredatalakeconnector-getuploadsession-permissions.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [microsoft.graph.industryData.fileUploadSession](../resources/industrydata-fileuploadsession.md) in the response body.

## Examples

### Request

The following example shows a request.

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

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/azuredatalakeconnectorthisgetuploadsession-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

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
