---
title: "cloudPcReports: retrieveCloudPcPerformanceMetricsReport"
description: "Get VM-level utilization and performance metrics for a specific Cloud PC, including CPU, memory, and network time series."
author: "congye"
ms.date: 08/04/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPcReports: retrieveCloudPcPerformanceMetricsReport

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get VM-level utilization and performance metrics for a specific Cloud PC from the [cloudPcReports](../resources/cloudpcreports.md) resource, including CPU, memory, and network metrics. The metrics are returned as flattened time-series data.

This API supports only Windows 365 Enterprise Cloud PCs and Windows 365 Frontline Cloud PCs in dedicated mode.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcreports-retrieveCloudPcPerformanceMetricsReport" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcreports-retrievecloudpcperformancemetricsreport-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/reports/retrieveCloudPcPerformanceMetricsReport
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table lists the parameters that you can use with this action.

|Parameter|Type|Description|
|:--------|:---|:----------|
|cloudPcId|String|The unique identifier (GUID) of the target Cloud PC. Required.|
|metricNames|[cloudPcPerformanceMetricNamesType](../resources/cloudpcreports.md#cloudpcperformancemetricnamestype-values)|Specifies which VM-level performance metrics to retrieve. This flagged enumeration allows multiple members to be selected simultaneously. The possible values are: `cpuUsageInPercentage`, `availableMemoryInPercentage`, `networkInboundInBytes`, `networkOutboundInBytes`, `inboundFlowsCount`, `outboundFlowsCount`, `unknownFutureValue`. Required.|
|endDateTime|DateTimeOffset|The ISO 8601 UTC end time. Use together with **startDateTime** to specify a custom window. Mutually exclusive with **timeRange**. If neither this pair nor **timeRange** is provided, the default **timeRange** of `last24Hours` is used. Optional.|
|startDateTime|DateTimeOffset|The ISO 8601 UTC start time. Use together with **endDateTime** to specify a custom window. Mutually exclusive with **timeRange**. If neither this pair nor **timeRange** is provided, the default **timeRange** of `last24Hours` is used. Optional.|
|timeRange|[cloudPcVmPerformanceMetricsTimeRange](../resources/cloudpcreports.md#cloudpcvmperformancemetricstimerange-values)|A predefined time range. The possible values are: `last2Hours`, `last4Hours`, `last12Hours`, `last24Hours`, `last48Hours`, `last4Days`, `last7Days`, `last14Days`, `last28Days`, `unknownFutureValue`. Defaults to `last24Hours` when neither **timeRange** nor **startDateTime**/**endDateTime** is provided. Mutually exclusive with **startDateTime**/**endDateTime**. Optional.|

## Response

If successful, this action returns a `200 OK` response code and a Stream in the response body.

The stream contains a JSON object with a `value` array. Each element is one time-series data point for a single metric, and the same property shape is used for every metric returned.

|Property|Type|Description|
|:-------|:---|:----------|
|metricsName|String|The metric name that this data point belongs to. Matches the camelCase member from [cloudPcPerformanceMetricNamesType](../resources/cloudpcreports.md#cloudpcperformancemetricnamestype-values), for example, `cpuUsageInPercentage` or `availableMemoryInPercentage`.|
|timeStamp|DateTimeOffset|The UTC start time of the aggregation interval for this data point.|
|average|Double|The average value of the metric over the interval.|
|minimum|Double|The minimum value observed in the interval.|
|maximum|Double|The maximum value observed in the interval.|
|total|Double|The sum of all sampled values in the interval.|
|count|Double|The number of samples aggregated into this data point.|

The unit of **average**, **minimum**, **maximum**, and **total** depends on the metric. For example, the unit is a percentage for `cpuUsageInPercentage` and bytes for `networkInboundInBytes`.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "cloudpcreports.retrieveCloudPcPerformanceMetricsReport"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/retrieveCloudPcPerformanceMetricsReport
Content-Type: application/json

{
  "cloudPcId": "11111111-1111-1111-1111-111111111111",
  "metricNames": "cpuUsageInPercentage,availableMemoryInPercentage",
  "timeRange": "last24Hours"
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
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
  "value": [
    {
      "metricsName": "cpuUsageInPercentage",
      "timeStamp": "2026-08-03T08:00:00Z",
      "average": 23.4,
      "minimum": 5.1,
      "maximum": 78.9,
      "total": 468.0,
      "count": 20.0
    },
    {
      "metricsName": "availableMemoryInPercentage",
      "timeStamp": "2026-08-03T08:00:00Z",
      "average": 61.2,
      "minimum": 40.5,
      "maximum": 82.3,
      "total": 1224.0,
      "count": 20.0
    }
  ]
}
```
