---
title: "Create cloudPcExportJob"
description: "Create a new cloudPcExportJob object."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.prod: "cloud-pc"
doc_type: apiPageType
---

# Create cloudPcExportJob
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [cloudPcExportJob](../resources/cloudpcexportjob.md) resource to initiate downloading the entire or specified portion of a report.

Use the [GET cloudPcExportJob](cloudpcexportjob-get.md) operation to verify the **exportJobStatus** property of the **cloudPcExportJob** resource. When the property result is `completed`, the report has finished downloading to the location specified by the **exportUrl** property.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcreports_post_exportjobs" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcreports-post-exportjobs-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/reports/exportJobs
```

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body
In the request body, supply a JSON representation of the [cloudPcExportJob](../resources/cloudpcexportjob.md) object.

You can specify the following properties when creating a **cloudPcExportJob**.

|Property|Type|Description|
|:---|:---|:---|
|filter|String|The filter applied on the report. Optional.|
|format|String|The format of the exported report. Optional.|
|reportName|cloudPcReportName|The report name. The possible values are: `remoteConnectionHistoricalReports`, `dailyAggregatedRemoteConnectionReports`, `totalAggregatedRemoteConnectionReports`, `sharedUseLicenseUsageReport`, `sharedUseLicenseUsageRealTimeReport`, `unknownFutureValue`,  `noLicenseAvailableConnectivityFailureReport`, `frontlineLicenseUsageReport`, `frontlineLicenseUsageRealTimeReport`,  `remoteConnectionQualityReports`, `inaccessibleCloudPcReports`. You must use the `Prefer: include-unknown-enum-members` request header to get the following value(s) in this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `noLicenseAvailableConnectivityFailureReport`, `frontlineLicenseUsageReport`, `frontlineLicenseUsageRealTimeReport`, `inaccessibleCloudPcReports`.|
|select|String collection|The selected columns of the report. Optional.|

## Response

If successful, this method returns a `201 Created` response code and a [cloudPcExportJob](../resources/cloudpcexportjob.md) object in the response body.

## Examples

### Example 1: Create an export job to download the TotalAggregatedRemoteConnectionReports report

The following example shows how to create an export job to download the `TotalAggregatedRemoteConnectionReports` report.

#### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_cloudpcexportjob_from_example1"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/exportJobs
Content-Type: application/json
Content-length: 315

{
  "reportName": "TotalAggregatedRemoteConnectionReports",
  "select": [
    "CloudPcId",
    "ManagedDeviceName",
    "UserPrincipalName",
    "DaysSinceLastSignIn",
    "TotalUsageInHour"
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-cloudpcexportjob-from-example1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-cloudpcexportjob-from-example1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-cloudpcexportjob-from-example1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-cloudpcexportjob-from-example1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-cloudpcexportjob-from-example1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-cloudpcexportjob-from-example1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-cloudpcexportjob-from-example1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-cloudpcexportjob-from-example1-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcExportJob"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#deviceManagement/virtualEndpoint/reports/exportJobs/$entity",
  "id": "TotalAggregatedRemoteConnectionReports__d39979c9-a0a2-4916-a158-1b984742ffff",
  "reportName": "totalAggregatedRemoteConnectionReports",
  "filter": null,
  "select": [
    "CloudPcId",
    "ManagedDeviceName",
    "UserPrincipalName",
    "DaysSinceLastSignIn",
    "TotalUsageInHour"
  ],
  "format": null,
  "expirationDateTime": "0001-01-01T00:00:00Z",
  "requestDateTime": "2022-09-16T12:00:06.5137388Z",
  "exportJobStatus": "inProgress",
  "exportUrl": null
}
```

### Example 2: Create an export job to download the RemoteConnectionQualityReports report.

The following example shows how to create an export job to download the `RemoteConnectionQualityReports` report.

#### Request

The following is an example of a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "create_cloudpcexportjob_from_example2"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/exportJobs
Content-Type: application/json
Content-length: 315

{
  "reportName": "RemoteConnectionQualityReports",
  "select": [
    "CloudPcId",
    "ManagedDeviceName",
    "AvgRoundTripTimeInMsP50",
    "LastConnectionRoundTripTimeInMs",
    "AvgAvailableBandwidthInMBpsP50",
    "LastConnectionAvailableBandWidthInMSps",
    "AvgRemoteSignInTimeInSecP50",
    "UDPConnectionPercentage",
    "LastConnectionGateway",
    "LastConnectionProtocol",
    "EventDateTime"
  ],
  "filter": "EventDateTime gt datetime'2023-06-14T07:40:41.694Z'"
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/create-cloudpcexportjob-from-example2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/create-cloudpcexportjob-from-example2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/create-cloudpcexportjob-from-example2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/create-cloudpcexportjob-from-example2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/create-cloudpcexportjob-from-example2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/create-cloudpcexportjob-from-example2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/create-cloudpcexportjob-from-example2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/create-cloudpcexportjob-from-example2-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.cloudPcExportJob"
}
-->
``` http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#deviceManagement/virtualEndpoint/reports/exportJobs/$entity",
  "id": "RemoteConnectionQualityReports__85678957-6202-4e29-97e6-eb26ef07f330",
  "reportName": "remoteConnectionQualityReports",
  "filter": "EventDateTime gt datetime'2023-06-14T07:40:41.694Z'",
  "select": [
    "CloudPcId",
    "ManagedDeviceName",
    "AvgRoundTripTimeInMsP50",
    "LastConnectionRoundTripTimeInMs",
    "AvgAvailableBandwidthInMBpsP50",
    "LastConnectionAvailableBandWidthInMSps",
    "AvgRemoteSignInTimeInSecP50",
    "UDPConnectionPercentage",
    "LastConnectionGateway",
    "LastConnectionProtocol",
    "EventDateTime"
  ],
  "format": null,
  "expirationDateTime": null,
  "requestDateTime": "2023-06-14T07:40:41.694Z",
  "exportJobStatus": "inProgress",
  "exportUrl": null
}
```
