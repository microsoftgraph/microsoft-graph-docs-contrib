---
title: "Get inboundFlow"
description: "Read the properties and relationships of an inboundFlow object."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industrydata"
doc_type: apiPageType
---

# Get inboundFlow

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [inboundFlow](../resources/industrydata-inboundflow.md) object.

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
GET /external/industryData/inboundFlows/{inboundFlowId}
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

If successful, this method returns a `200 OK` response code and an [inboundFlow](../resources/industrydata-inboundflow.md) object in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "get_inboundflow"
}
-->

```http
GET https://graph.microsoft.com/beta/external/industryData/inboundFlows/7bd62d17-8c37-4494-f68d-08daddab2911
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.inboundFlow"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
    "@odata.type": "#microsoft.graph.industryData.inboundFileFlow",
    "id": "7bd62d17-8c37-4494-f68d-08daddab2911",
    "displayName": "Inbound Flow",
    "readinessStatus": "ready",
    "dataDomain": "educationRostering",
    "effectiveDateTime": "2023-03-12T11:10:46.924769Z",
    "expirationDateTime": "2023-03-13T11:10:46.924769Z"
}
```
