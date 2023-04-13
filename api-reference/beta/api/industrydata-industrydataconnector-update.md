---
title: "Update industryDataConnector"
description: "Update the properties of an industryDataConnector object."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: apiPageType
---

# Update industryDataConnector

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update the properties of an [industryDataConnector](../resources/industrydata-industrydataconnector.md) object.

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
PATCH /external/industryData/dataConnectors/{industryDataConnectorId}
PATCH /external/industryData/inboundFlows/{inboundFlowId}/dataConnector
```

## Request headers

| Name          | Description                 |
| :------------ | :-------------------------- |
| Authorization | Bearer {token}. Required.   |
| Content-Type  | application/json. Required. |

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

| Property    | Type   | Description                                                                                                                           |
| :---------- | :----- | :------------------------------------------------------------------------------------------------------------------------------------ |
| displayName | String | The name of the data connector. Inherited from [industryDataConnector](../resources/industrydata-industrydataconnector.md). Required. |

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "update_industrydataconnector",
  "sampleKeys": ["51dca0a0-85f6-4478-f526-08daddab2271"]
}
-->

```http
PATCH /external/industryData/dataConnectors/51dca0a0-85f6-4478-f526-08daddab2271
Content-type: application/json

{
  "@odata.type": "microsoft.graph.industryData.azureDataLakeConnector",
  "displayName": "API Monitor 60201009"
}
```

### Response

The following is an example of the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->

```http
HTTP/1.1 204 No Content
```
