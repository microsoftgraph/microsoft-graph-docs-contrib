---
title: "Get cloudPcExportJob"
description: "Read the properties and relationships of a cloudPcExportJob object."
author: "AshleyYangSZ"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.topic: reference
---

# Get cloudPcExportJob
Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of a [cloudPcExportJob](../resources/cloudpcexportjob.md) object.

You can download a report by first [creating a new cloudPcExportJob resource](cloudpcreports-post-exportjobs.md) to initiate downloading.

Use this GET operation to verify the **exportJobStatus** property of the **cloudPcExportJob** resource. The property becomes `completed` when the report finishes downloading in the location specified by the **exportUrl** property.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the least privileged permission or permissions to download reports with this API. Delegated access require read access to the report that you need to export. App-only tokens with CloudPC.ReadWrite.All have permission or permissions to download all reports without specific permission. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcexportjob_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcexportjob-get-permissions.md)]

The following permissions in the in the [Cloud PC admin portal](https://intune.microsoft.com/#view/Microsoft_Intune_DeviceSettings/RolesLandingMenuBlade/~/myPermissions) provide access to specific kinds of reports:
- ActionStatus/Read
- DeviceRecommendation/Read
- CrossRegionDisasterRecovery/Read
- FrontlineReports/Read
- InaccessibleReports/Read
- PerformanceReports/Read

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /deviceManagement/virtualEndpoint/reports/exportJobs/{cloudPcExportJobId}
```

## Optional query parameters
This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [cloudPcExportJob](../resources/cloudpcexportjob.md) object in the response body.

## Examples

### Example 1: Get an export job for the TotalAggregatedRemoteConnectionReports report

The following example shows how to get an export job that a POST request for the `TotalAggregatedRemoteConnectionReports` report created.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_cloudpcexportjob_example1",
  "sampleKeys": ["TotalAggregatedRemoteConnectionReports__d39979c9-a0a2-4916-a158-1b984742ffff"]
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/exportJobs/TotalAggregatedRemoteConnectionReports__d39979c9-a0a2-4916-a158-1b984742ffff
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-cloudpcexportjob-example1-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-cloudpcexportjob-example1-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-cloudpcexportjob-example1-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-cloudpcexportjob-example1-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-cloudpcexportjob-example1-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-cloudpcexportjob-example1-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-cloudpcexportjob-example1-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-cloudpcexportjob-example1-python-snippets.md)]
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.cloudPcExportJob",
    "id": "TotalAggregatedRemoteConnectionReports__d39979c9-a0a2-4916-a158-1b984742ffff",
    "reportName": "totalAggregatedRemoteConnectionReports",
    "format": "csv",
    "select": ["CloudPcId", "ManagedDeviceName", "UserPrincipalName", "DaysSinceLastSignIn", "TotalUsageInHour"],
    "filter": null,
    "requestDateTime": "2022-09-16T12:00:06.5137388Z",
    "expirationDateTime": "0001-01-01T00:00:00Z",
    "exportJobStatus": "completed",
    "exportUrl": "https://westus01repexpstorage.blob.core.windows.net/599fe3a3-0285-4e7f-9c83-ffdf37914e27/remoteConnectionEvents_af34378a-cf5a-418d-b735-54b0ee155118.zip"
  }
}
```

### Example 2: Get an export job for the RemoteConnectionQualityReports report

The following example shows how to get an export job that a POST request for the `RemoteConnectionQualityReports` report created.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "get_cloudpcexportjob_example2",
  "sampleKeys": ["RemoteConnectionQualityReports__85678957-6202-4e29-97e6-eb26ef07f330"]
}
-->
``` http
GET https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/exportJobs/RemoteConnectionQualityReports__85678957-6202-4e29-97e6-eb26ef07f330
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/get-cloudpcexportjob-example2-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/get-cloudpcexportjob-example2-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/get-cloudpcexportjob-example2-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/get-cloudpcexportjob-example2-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/get-cloudpcexportjob-example2-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/get-cloudpcexportjob-example2-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/get-cloudpcexportjob-example2-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/get-cloudpcexportjob-example2-python-snippets.md)]
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.cloudPcExportJob",
    "id": "RemoteConnectionQualityReports__85678957-6202-4e29-97e6-eb26ef07f330",
    "reportName": "remoteConnectionQualityReports",
    "format": "csv",
    "select": ["CloudPcId", "ManagedDeviceName", "UserPrincipalName", "DaysSinceLastSignIn", "TotalUsageInHour"],
    "filter": null,
    "requestDateTime": "2023-06-14T07:40:41.694Z",
    "expirationDateTime": "",
    "exportJobStatus": "completed",
    "exportUrl": "https://westus01repexpstorage.blob.core.windows.net/599fe3a3-0285-4e7f-9c83-ffdf37914e27/remoteConnectionHistoricalReports_af34378a-cf5a-418d-b735-54b0ee155118.zip"
  }
}
```
