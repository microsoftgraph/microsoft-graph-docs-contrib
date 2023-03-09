---
title: "List inboundFileFlows"
description: "Get a list of the inboundFileFlow objects and their properties."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: apiPageType
---

# List inboundFileFlows

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [inboundFileFlow](../resources/industrydata-inboundfileflow.md) objects and their properties.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                               |
| :------------------------------------- | :------------------------------------------------------------------------ |
| Delegated (work or school account)     | IndustryData-InboundFlow.Read.All, IndustryData-InboundFlow.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported.                                                            |
| Application                            | IndustryData-InboundFlow.Read.All, IndustryData-InboundFlow.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /external/industryData/inboundFlows
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

If successful, this method returns a `200 OK` response code and a collection of [microsoft.graph.industryData.inboundFlow](../resources/industrydata-inboundflow.md) objects in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "list_inboundflow"
}
-->

```http
GET https://graph.microsoft.com/beta/external/industryData/inboundFlows
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.industryData.inboundFlow)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.industryData.inboundFileFlow",
      "dataDomain": "educationRostering",
      "displayName": "Rostering Flow",
      "effectiveDateTime": "2023-03-12T11:10:46.924769Z",
      "expirationDateTime": "2023-03-13T11:10:46.924769Z",
      "id": "7bd62d17-8c37-4494-f68d-08daddab2911",
      "readinessStatus": "ready"
    }
  ]
}
```
