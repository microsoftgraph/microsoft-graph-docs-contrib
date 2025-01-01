---
title: "cloudPcReports: getCloudPCPerformanceReport"
description: "Get a report related to the performance of Cloud PCs."
author: "Gutentag0004"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 11/30/2024
---

# cloudPcReports: getCloudPCPerformanceReport

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a report related to the performance of Cloud PCs.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcreports-getcloudpcperformancereport" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcreports-getcloudpcperformancereport-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/reports/getCloudPCPerformanceReport
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that you can use with this method.

| Parameter  | Type                         | Description                                                                                          |
|:-----------|:-----------------------------|:-----------------------------------------------------------------------------------------------------|
| filter     | String                       | OData `$filter` syntax. Supported filters are: `and`, `or`, `gt`, and `eq`.                          |
| groupBy    | String collection            | Specifies how to group the reports. If used, must have the same content as the **select** parameter. |
| orderBy    | String collection            | Specifies how to sort the reports.                                                                   |
| reportName | cloudPCPerformanceReportName | The report name. The possible values are: `performanceTrendReport`, `unknownFutureValue`.             |
| search     | String                       | Specifies a String to search.                                                                        |
| select     | String collection            | OData `$select` syntax. The selected columns of the reports.                                         |
| skip       | Int32                        | Number of records to skip.                                                                           |
| top        | Int32                        | Specifies the page size. If not defined, the default is 25, with a maximum of 100.                   |

### cloudPCPerformanceReportName values

| Member                       | Description       |
| :--------------------------- | :---------------- |
| performanceTrendReport     | Indicates a daily aggregated report that provides a list of connection quality metrics for Cloud PCs over the past seven days within a tenant. The metrics include `SlowRoundTripTimeCloudPcCount`, `LowUdpConnectionPercentageCount`, `NoTimeConnectedCloudPcCount`, and `LowTimeConnectedCloudPcCount`. Each daily report is an aggregation of the previous 28 days, counted back from the trigger time.  | 
| unknownFutureValue         | Evolvable enumeration sentinel value. Don't use.             |

## Response

If successful, this method returns a `200 OK` response code and a Stream object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudpcreportsthis.getcloudpcperformancereport"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/getCloudPcPerformanceReport
Content-Type: application/json

{
  "reportName": "performanceTrendReport",
  "filter": "EventDateTime gt datetime'2023-10-13T00:00:00.000Z'",
  "select": [
    "EventDateTime",
    "SlowRoundTripTimeCloudPcCount",
    "LowUdpConnectionPercentageCount",
    "NoActiveTimeConnectedCount",
    "LowActiveTimeConnectedCount"
  ],
  "search": "",
  "skip": 0,
  "top": 50
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/cloudpcreportsthisgetcloudpcperformancereport-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/cloudpcreportsthisgetcloudpcperformancereport-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/cloudpcreportsthisgetcloudpcperformancereport-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/cloudpcreportsthisgetcloudpcperformancereport-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudpcreportsthisgetcloudpcperformancereport-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/cloudpcreportsthisgetcloudpcperformancereport-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/cloudpcreportsthisgetcloudpcperformancereport-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/cloudpcreportsthisgetcloudpcperformancereport-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Edm.Stream"
} -->
``` http
HTTP/1.1 200 OK
Content-Type: application/octet-stream

{
  "TotalRowCount": 2,
  "Schema": [
    {
      "Column": "EventDateTime",
      "PropertyType": "DateTime"
    },
    {
      "Column": "SlowRoundTripTimeCloudPcCount",
      "PropertyType": "Int64"
    },
    {
      "Column": "LowUdpConnectionPercentageCount",
      "PropertyType": "Int64"
    },
    {
      "Column": "NoActiveTimeConnectedCount",
      "PropertyType": "Int64"
    },
    {
      "Column": "LowActiveTimeConnectedCount",
      "PropertyType": "Int64"
    }
  ],
  "Values": [
    [
      "2023-10-16T00:00:00Z",
      3,
      8,
      3,
      92
    ],
    [
      "2023-10-15T00:00:00Z",
      4,
      6,
      5,
      91
    ]
  ]
}
```

