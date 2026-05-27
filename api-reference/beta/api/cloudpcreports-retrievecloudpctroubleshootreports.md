---
title: "cloudPcReports: retrieveCloudPcTroubleshootReports"
description: "Get Cloud PC troubleshooting reports, including tenant-level, configuration, user and device, and view data table reports."
author: "abbyzhccc"
ms.date: 05/21/2026
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPcReports: retrieveCloudPcTroubleshootReports

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get Cloud PC troubleshooting reports. You can get tenant-level reports, configuration reports, user and device reports, and view data table reports. For the report types grouped by scope, including the mandatory filter parameters and response columns per `reportName`, see [Cloud PC troubleshoot report types](/graph/cloudpc-troubleshoot-report-types).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcreports_retrievecloudpctroubleshootreports" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcreports-retrievecloudpctroubleshootreports-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/reports/retrieveCloudPcTroubleshootReports
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
|filter|String|OData `$filter` syntax. Supported filters are: `and`, `or`, `gt`, `ge`, and `eq`. Required for most **reportName** values, but optional for some. For the mandatory filter parameters per **reportName**, see [Cloud PC troubleshoot report types](/graph/cloudpc-troubleshoot-report-types).|
|groupBy|String collection|A list of columns that describe how to group the data in the report. Optional.|
|orderBy|String collection|Specifies the order by column name. Optional.|
|reportName|[cloudPCTroubleshootReportType](../resources/cloudpcreports.md#cloudpctroubleshootreporttype-values)|The report name. The possible values are: `troubleshootTenantGlobalFilterReport`, `troubleshootTenantNetworkTrendReport`, `troubleshootTenantNetworkAggregatedReport`, `troubleshootTenantConnectionFailureRateTrendReport`, `troubleshootTenantConnectionFailureRateAggregatedReport`, `troubleshootTenantCloudPCHealthTrendReport`, `troubleshootTenantCloudPCHealthAggregatedReport`, `troubleshootTenantActiveConnectionCountTrendReport`, `troubleshootTenantActiveConnectionCountAggregatedReport`, `troubleshootTenantMeanTimeToFailureTrendReport`, `troubleshootTenantMeanTimeToFailureAggregatedReport`, `troubleshootTenantRemoteSignInTimeTrendReport`, `troubleshootTenantRemoteSignInTimeAggregatedReport`, `troubleshootEventsOfViewDataTableReport`, `troubleshootTenantEnvironmentMetricsOfViewDataTableReport`, `troubleshootCloudPCMetricsOfViewDataTableReport`, `troubleshootConfigurationConnectionCountTrendV1Report`, `troubleshootConfigurationTotalConnectionCountBarV1Report`, `troubleshootConfigurationGlobalFilterV1Report`, `troubleshootConnectionConfigurationOfViewDataTableV1Report`, `troubleshootTenantConnectedDevicesOfViewDataTableReport`, `troubleshootEnvironmentOverviewOfViewDataTableReport`, `troubleshootCloudPCNetworkTrendReport`, `troubleshootCloudPCNetworkAggregatedReport`, `troubleshootCloudPCErrorTrendReport`, `troubleshootCloudPCErrorAggregatedReport`, `troubleshootCloudPCDurationTrendReport`, `troubleshootCloudPCDurationAggregatedReport`, `troubleshootCloudPCRemoteSignInTimeTrendReport`, `troubleshootCloudPCRemoteSignInTimeAggregatedReport`, `troubleshootCloudPCListReport`, `troubleshootCloudPCHealthTrendReport`, `troubleshootMatchedUserReport`, `troubleshootMatchedCloudPCReport`, `troubleshootUserListReport`, `unknownFutureValue`. For the report type description and scope grouping, see [Cloud PC troubleshoot report types](/graph/cloudpc-troubleshoot-report-types). Use the `Prefer: include-unknown-enum-members` request header to receive future members added to this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations) by their actual name instead of `unknownFutureValue`. Required.|
|search|String|The search string. Optional.|
|select|String collection|OData `$select` syntax. The selected columns of the reports. Optional.|
|skip|Int32|Number of records to skip. Optional.|
|top|Int32|The number of top records to return. If not specified, the default limit is 25, with a maximum of 1000. Optional.|

Parameter values can be empty strings (`''`) if you don't want to filter on that dimension, unless the report type marks them as required. The maximum supported date range is 28 days for tenant-level and user and device reports, and 180 days for configuration-level reports.

## Response

If successful, this action returns a `200 OK` response code and a Stream in the response body. The columns returned in the Stream vary by **reportName**. For the response columns per **reportName**, see [Cloud PC troubleshoot report types](/graph/cloudpc-troubleshoot-report-types).

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudpcreports.retrieveCloudPcTroubleshootReports"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/retrieveCloudPcTroubleshootReports
Content-Type: application/json

{
  "reportName": "troubleshootTenantActiveConnectionCountTrendReport",
  "select": [
    "EventDateTime",
    "TotalActiveConnectionCountAvg",
    "GroupColumn"
  ],
  "filter": "(TimeRange eq 'Last 7 days') and (PolicyNameParam eq '') and (RegionParam eq '') and (UserSettingNameParam eq '') and (ServicePlanTypeParam eq 'Enterprise') and (ServicePlanNameParam eq '') and (OSBuildVersionParam eq '') and (AADJoinTypeParam eq '') and (ImageNameParam eq '') and (GatewayRegionParam eq '') and (ClientOSParam eq '') and (ClientTypeParam eq '') and (TransportTypeParam eq '') and (CloudPCEndpointCountryRegionParam eq '') and (CloudPCEndpointStateParam eq '') and (CloudPCEndpointCityParam eq '')",
  "top": 1000,
  "skip": 0,
  "groupBy": [
    "GatewayRegion"
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/cloudpcreportsretrievecloudpctroubleshootreports-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/cloudpcreportsretrievecloudpctroubleshootreports-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/cloudpcreportsretrievecloudpctroubleshootreports-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudpcreportsretrievecloudpctroubleshootreports-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/cloudpcreportsretrievecloudpctroubleshootreports-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/cloudpcreportsretrievecloudpctroubleshootreports-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

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
  "TotalRowCount": 840,
  "Schema": [
    {
      "Column": "EventDateTime",
      "PropertyType": "DateTime"
    },
    {
      "Column": "TotalActiveConnectionCountAvg",
      "PropertyType": "Double"
    },
    {
      "Column": "GroupColumn",
      "PropertyType": "String"
    }
  ],
  "Values": [
    ["2026-03-25T04:00:00", 0.63, "australiaeast"],
    ["2026-03-25T04:00:00", 2.88, "japaneast"],
    ["2026-03-25T04:00:00", 3.63, "japanwest"],
    ["2026-03-25T04:00:00", 7.88, "southeastasia"],
    ["2026-03-25T04:00:00", 10.0, "westus2"],
    ["2026-03-25T08:00:00", 0.75, "israelcentral"],
    ["2026-03-25T08:00:00", 1.75, "japaneast"],
    ["2026-03-25T08:00:00", 8.13, "southeastasia"]
  ]
}
```
