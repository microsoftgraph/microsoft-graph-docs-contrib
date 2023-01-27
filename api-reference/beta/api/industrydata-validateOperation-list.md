---
title: "List validateOperations"
description: "Get a list of long-running operations and their statuses."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: apiPageType
---

# List validateOperations

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [file validation operations](../resources/industrydata-validateOperation.md) and their statuses.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | IndustryData.ReadBasic.All                  |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | IndustryData.ReadBasic.All                  |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /external/industryData/operations
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

If successful, this method returns a `200 OK` response code and a collection of [validateOperation](../resources/industrydata-validateOperation.md) objects in the response body.

## Examples

### Request

The following is an example of a request.

<!-- {
  "blockType": "request",
  "name": "list_validateOperation"
}
-->

```http
GET https://graph.microsoft.com/beta/external/industryData/operations
```

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.industryData.validateOperation)"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": [
    {
      "@odata.type": "#microsoft.graph.industryData.validateOperation",
      "createdDateTime": "2022-12-14T05:54:35.400029Z",
      "errors": [],
      "id": "d194fa3e-18c9-47a1-0fb1-08dad8e7a876",
      "lastActionDateTime": "2022-12-14T05:54:43.8410226Z",
      "resourceLocation": "https://graph.microsoft.com/beta/industryData/dataConnectors/022da4a0-c239-4b07-abed-08dad8e7a07a",
      "status": "succeeded",
      "statusDetail": null,
      "warnings": []
    }
  ]
}
```
