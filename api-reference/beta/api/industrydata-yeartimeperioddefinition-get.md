---
title: "Get yearTimePeriodDefinition"
description: "Read the properties and relationships of a yearTimePeriodDefinition object."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: apiPageType
---

# Get yearTimePeriodDefinition

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [yearTimePeriodDefinition](../resources/industrydata-yeartimeperioddefinition.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)                             |
| :------------------------------------- | :---------------------------------------------------------------------- |
| Delegated (work or school account)     | IndustryData-TimePeriod.Read.All, IndustryData-TimePeriod.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported.                                                          |
| Application                            | IndustryData-TimePeriod.Read.All, IndustryData-TimePeriod.ReadWrite.All |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /external/industryData/years/{yearTimePeriodDefinitionId}
GET /external/industryData/inboundFlows/{inboundFlowId}/year
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.industryData.yearTimePeriodDefinition](../resources/industrydata-yeartimeperioddefinition.md) object in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "get_yeartimeperioddefinition",
  "sampleKeys": ["ebf18762-ab92-487e-21d1-08daddab28bb"]
}
-->

```http
GET https://graph.microsoft.com/beta/external/industryData/years/ebf18762-ab92-487e-21d1-08daddab28bb
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.yearTimePeriodDefinition"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#external/industryData/years/$entity",
  "displayName": "Fiscal Year 2022",
  "endDate": "2023-06-15",
  "id": "ebf18762-ab92-487e-21d1-08daddab28bb",
  "startDate": "2022-09-01",
  "year": {
    "code": "2022"
  }
}
```
