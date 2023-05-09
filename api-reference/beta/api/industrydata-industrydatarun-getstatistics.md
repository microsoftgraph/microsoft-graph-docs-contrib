---
title: "industryDataRun: getStatistics"
description: "Get statistics for an industryDataRun."
author: "mlafleur"
ms.localizationpriority: medium
ms.prod: "industry-data-etl"
doc_type: apiPageType
---

# industryDataRun: getStatistics

Namespace: microsoft.graph.industryData

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get statistics for an [industryDataRun](../resources/industrydata-industrydatarun.md).

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
GET /external/industryData/runs/{industryDataRunId}/getStatistics
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

If successful, this function returns a `200 OK` response code and a [microsoft.graph.industryData.industryDataRunStatistics](../resources/industrydata-industrydatarunstatistics.md) in the response body.

## Examples

### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "industrydatarunthis.getstatistics",
  "sampleKeys": ["918d4a8f-599b-4f6a-b409-e892855db534"]
}
-->

```msgraph-interactive
GET https://graph.microsoft.com/beta/external/industryData/runs/918d4a8f-599b-4f6a-b409-e892855db534/getStatistics
```

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/industrydatarunthisgetstatistics-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/industrydatarunthisgetstatistics-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following is an example of the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.industryData.industryDataRunStatistics"
}
-->

```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.industryData.industryDataRunStatistics",
  "activityStatistics": [
    {
      "count": 154390,
      "role": "student"
    },
    {
      "count": 59820,
      "role": "teacher"
    }
  ],
  "inboundTotals": {
    "errors": 0,
    "groups": 565987,
    "matchedPeopleByRole": [
      {
        "count": 154390,
        "role": "student"
      },
      {
        "count": 59820,
        "role": "teacher"
      }
    ],
    "memberships": 1235120,
    "organizations": 16,
    "people": 278473,
    "unmatchedPeopleByRole": [],
    "warnings": 0
  },
  "runId": "918d4a8f-599b-4f6a-b409-e892855db534",
  "status": "completed"
}
```
