---
title: "Get industryDataRun"
description: "Read the properties and relationships of an industryDataRun object."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: apiPageType
---

# Get industryDataRun

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of an [industryDataRun](../resources/industrydata-industrydatarun.md) object.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
| :------------------------------------- | :------------------------------------------ |
| Delegated (work or school account)     | IndustryData-Run.Read.All                   |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | IndustryData-Run.Read.All                   |

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->

```http
GET /external/industryData/runs/{industryDataRunId}
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

If successful, this method returns a `200 OK` response code and a [microsoft.graph.industryData.industryDataRun](../resources/industrydata-industrydatarun.md) object in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_industrydatarun",
  "sampleKeys": ["918d4a8f-599b-4f6a-b409-e892855db534"]
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/external/industryData/runs/918d4a8f-599b-4f6a-b409-e892855db534
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-industrydatarun-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-industrydatarun-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-industrydatarun-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-industrydatarun-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-industrydatarun-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-industrydatarun-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.industryDataRun"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.industryData.industryDataRun",
  "displayName": "Run 2023-11-01 11:10 UTC",
  "endDateTime": null,
  "id": "918d4a8f-599b-4f6a-b409-e892855db534",
  "startDateTime": "2023-11-01T11:10:46.924769Z",
  "status": "running"
}
```
