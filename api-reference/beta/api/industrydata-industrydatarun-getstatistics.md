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

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "industrydata_industrydatarun_getstatistics" } -->
[!INCLUDE [permissions-table](../includes/permissions/industrydata-industrydatarun-getstatistics-permissions.md)]

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
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

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

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/industrydatarunthisgetstatistics-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/industrydatarunthisgetstatistics-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/industrydatarunthisgetstatistics-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/industrydatarunthisgetstatistics-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/industrydatarunthisgetstatistics-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/industrydatarunthisgetstatistics-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/industrydatarunthisgetstatistics-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/industrydatarunthisgetstatistics-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

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
