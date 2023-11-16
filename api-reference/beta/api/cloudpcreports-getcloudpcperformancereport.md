---
title: "cloudPcReports: getCloudPCPerformanceReport"
description: "Get Tenant level metrics for related reports for Cloud PCs including slow round-trip time Cloud PCs, Low UDP utilization Cloud PCs, No active time connected Cloud PCs and Low Active time connected Cloud PCs."
author: "Gutentag0004"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# cloudPcReports: getCloudPCPerformanceReport

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get Tenant level metrics for related reports for Cloud PCs including slow round-trip time Cloud PCs, Low UDP utilization Cloud PCs, No active time connected Cloud PCs and Low Active time connected Cloud PCs.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|:---------------------------------------|:--------------------------------------------|
| Delegated (work or school account)     | CloudPC.Read.All, CloudPC.ReadWrite.All     |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | CloudPC.Read.All, CloudPC.ReadWrite.All     |

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
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this method.

| Parameter          | Type                                | Description                                                            |
| :----------------- | :---------------------------------- | :--------------------------------------------------------------------- | 
| `reportName`       | [cloudPCPerformanceReportName](#cloudpcperformancereportname-values) | The report name, possible values: `performanceTrendReport`        |
| `filter`           | String                        | OData filter syntax. Only ‘and’, ‘or’, 'gt' and ’eq’ are currently supported |
| `select`           | String collection            | Define behavior to get default columns if select not specified         |
| `search`           | String                        | Specifies a string to search                                           |
| `groupBy`          | String collection            | If used, must have the same contents as select parameter               |
| `orderBy`          | String collection            | There will be a default order assigned                                 |
| `skip`             | Int                         | Number of records to skip                                              |
| `top`              | Int                         | Specifies the page size. If not defined the default top is 25 and max is 100.|

### cloudPCPerformanceReportName values

| Member                       | Description       |
| :--------------------------- | :---------------- |
| `performanceTrendReport`     | Indicates daily aggregated report which shows list of connection quality including "SlowRoundTripTimeCloudPcCount", "LowUdpConnectionPercentageCount", "NoTimeConnectedCloudPcCount", "LowTimeConnectedCloudPcCount" of Cloud PCs in last 7 days under a tenant, every single day's report is an aggregation of last 28 days dating back from the trigger time.  | 
| `unknownFutureValue`         | Evolvable enumeration sentinel value. Do not use.             |


## Response

If successful, this method returns a `200 OK` response code and a Stream object in the response body.

## Examples

### Request

``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/getCloudPcPerformanceReport
{
    "reportName":"performanceTrendReport",
    "filter": "EventDateTime gt datetime'2023-10-13T00:00:00.000Z'",
    "select": ["EventDateTime", "SlowRoundTripTimeCloudPcCount", "LowUdpConnectionPercentageCount", "NoActiveTimeConnectedCount", "LowActiveTimeConnectedCount"],
    "search": "",
    "skip": 0,
    "top": 50
}
```

### Response

The following is an example of the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Edm.Stream"
}
-->
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
            "Column": "NoTimeConnectedCloudPcCount",
            "PropertyType": "Int64"
        },
        {
            "Column": "LowTimeConnectedCloudPcCount",
            "PropertyType": "Int64"
        }
    ],
    "Values" :[
        ["2023-10-16T00:00:00Z", 3, 8, 3, 92],
        ["2023-10-15T00:00:00Z", 4, 6, 5, 91]
    ]
}
```