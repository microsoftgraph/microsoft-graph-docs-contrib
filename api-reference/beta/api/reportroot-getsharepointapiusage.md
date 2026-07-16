---
title: "reportRoot: getSharePointApiUsage"
description: "Retrieve OneDrive and SharePoint API usage metrics for a tenant."
author: "ireneren"
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: apiPageType
ms.date: 06/19/2026
---

# reportRoot: getSharePointApiUsage

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get aggregated usage data for all applications in a tenant. Specify either a `period` or a `date`, but not both. Optionally filter the results by application ID. Data is returned in CSV format by default, or in JSON format when requested through the `$format` query parameter.

Use the optional reportType parameter to choose which usage metrics to return: egressReport (default) includes usage (UsageMB in CSV, usageMB in JSON), and throttlingReport includes throttled request counts (ThrottledRequests in CSV, throttledRequests in JSON). Each report type must be enabled (onboarded) for the tenant before its data is available. Use [enableApiUsageReport](../api/sharepointreportsettings-enableapiusagereport.md) to enable a report metric, [disableApiUsageReport](../api/sharepointreportsettings-disableapiusagereport.md) to disable it, and [List apiUsageReportMetrics](../api/sharepointreportsettings-list-apiusagereportmetrics.md) to check the enablement status. If you request a report type that isn't enabled for the tenant, this method returns a `403 Forbidden` response with the error code `accessDenied` and the message "Tenant is not enabled for this report type."

[!NOTE]
CSV column headers use PascalCase (ThrottledRequests) while JSON properties use camelCase (throttledRequests) to maintain consistency with other Microsoft Graph reporting APIs.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "reportroot_getsharepointapiusage" } -->
[!INCLUDE [permissions-table](../includes/permissions/reportroot-getsharepointapiusage-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/getSharePointApiUsage(period='{period_value}')
GET /reports/getSharePointApiUsage(date={date_value})
GET /reports/getSharePointApiUsage(period='{period_value}',appId='{appId_value}')
GET /reports/getSharePointApiUsage(date={date_value},appId='{appId_value}')
GET /reports/getSharePointApiUsage(period='{period_value}',reportType='{reportType_value}')
GET /reports/getSharePointApiUsage(date={date_value},reportType='{reportType_value}')
GET /reports/getSharePointApiUsage(period='{period_value}',appId='{appId_value}',reportType='{reportType_value}')
GET /reports/getSharePointApiUsage(date={date_value},appId='{appId_value}',reportType='{reportType_value}')
GET /reports/getSharePointApiUsage(period='{period_value}')?$format={format}
```

## Function parameters

In the request URL, provide the following parameters with values.

| Parameter | Type             | Description                                                                                                                                                                                               |
|:----------|:-----------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| appId     | String           | Optional. A comma-separated list of application GUIDs to filter results. When specified, only detail rows for the specified applications are returned and the summary row is excluded.                     |
| date      | Date             | Required if **period** isn't specified. Specifies the date for the report. Accepts `YYYY-MM-DD` format (for example, `2026-02-05`). Can't be used with **period**. Can't be a future date. |
| period    | String           | Required if **date** isn't specified. Specifies the length of time over which the report is aggregated. The supported values are: `D1`, `D7`, `D30`. Can't be used with **date**.                        |
| reportType | String | Optional. The type of usage report to return. The possible values are: `egressReport`, `throttlingReport`. Default is `egressReport`. The report type determines which columns appear in the response: egressReport includes usageMB and excludes throttledRequests; throttlingReport includes throttledRequests and excludes usageMB. |

## Optional query parameters

This method supports the `$format`, `$skip`, and `$top` [OData query parameters](/graph/query-parameters) to customize the response.

| Parameter  | Type   | Description                                                                                                                                                                      |
|:-----------|:-------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| `$format`  | String | The response format. Supported values: `csv`, `text/csv`, `json`, `application/json`. Default: `text/csv`.                                                                      |
| `$skip`    | Int32  | JSON only. The number of items to skip for pagination. Not supported with CSV format.                                                                                 |
| `$top`     | Int32  | JSON only. The number of items to return per page. Not supported with CSV format.                                                                   |

## Request headers

| Name          | Description                                                                                           |
|:--------------|:------------------------------------------------------------------------------------------------------|
| Authorization | Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts). |

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and usage data in the requested format.

If no usage data is available for the specified period or date, this method returns a `204 No Content` response with an empty response body.

### CSV format

If successful with CSV format, this method returns a `200 OK` response with content type `text/csv`. The CSV data is returned directly in the response body.

> **Note:** Unlike most other Microsoft Graph reports APIs that return a `302 Found` redirect to a preauthenticated download URL, this API returns the CSV data directly in the response body with a `200 OK` response.

The CSV file column headers depend on the `reportType` parameter:

- `egressReport` (default):

  `UsageDateTime,ServiceArea,TenantId,appId,UsageMB,UsageRequests,ActiveApps`

- `throttlingReport`:

  `UsageDateTime,ServiceArea,TenantId,AppId,UsageRequests,ThrottledRequests,ActiveApps`

The first data row is a summary row with ActiveApps populated and AppId empty. Subsequent rows are per-app, per-date details with AppId populated and ActiveApps empty. Data points are ordered by UsageDateTime descending (most recent first).

### JSON format

If successful with JSON format, this method returns a structured object with `summary` and `details` properties. The `summary` contains aggregated totals, and `details` contains an array of per-application, per-date details. The `summary` is `null` when an `appId` filter is specified. The `details` array supports pagination via `$skip` and `$top` query parameters. Each data point includes the usageMB property for the egressReport or the throttledRequests property for the throttlingReport.

## Examples

### Example 1: Get usage for last 7 days (CSV format, default)

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "reportroot_getsharepointapiusage_csv"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/getSharePointApiUsage(period='D7')?$format=text/csv
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: text/csv

UsageDateTime,ServiceArea,TenantId,AppId,UsageMB,UsageRequests,ActiveApps
2026-02-04T00:00:00Z,OneDrive and SharePoint,12345678-1234-1234-1234-123456789abc,,128000,15000,5
2026-02-04T00:00:00Z,OneDrive and SharePoint,12345678-1234-1234-1234-123456789abc,00000003-0000-0ff1-ce00-000000000000,82000,8500,
2026-02-04T00:00:00Z,OneDrive and SharePoint,12345678-1234-1234-1234-123456789abc,ab9b8c07-8f02-4f72-87fa-80105867a763,46000,4500,
2026-02-03T00:00:00Z,OneDrive and SharePoint,12345678-1234-1234-1234-123456789abc,00000003-0000-0ff1-ce00-000000000000,75000,7000,
2026-02-03T00:00:00Z,OneDrive and SharePoint,12345678-1234-1234-1234-123456789abc,ab9b8c07-8f02-4f72-87fa-80105867a763,38000,3500,
```

### Example 2: Get usage for a specific date (JSON format)

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "reportroot_getsharepointapiusage_json"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/getSharePointApiUsage(date=2026-02-04)?$format=application/json
```

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "summary": {
    "usageDateTime": "2026-02-04T00:00:00Z",
    "serviceArea": "OneDrive and SharePoint",
    "tenantId": "12345678-1234-1234-1234-123456789abc",
    "appId": null,
    "usageMB": 128000,
    "usageRequests": 15000,
    "activeApps": 5
  },
  "details": [
    {
      "usageDateTime": "2026-02-04T00:00:00Z",
      "serviceArea": "OneDrive and SharePoint",
      "tenantId": "12345678-1234-1234-1234-123456789abc",
      "appId": "00000003-0000-0ff1-ce00-000000000000",
      "usageMB": 82000,
      "usageRequests": 8500,
      "activeApps": null
    },
    {
      "usageDateTime": "2026-02-04T00:00:00Z",
      "serviceArea": "OneDrive and SharePoint",
      "tenantId": "12345678-1234-1234-1234-123456789abc",
      "appId": "ab9b8c07-8f02-4f72-87fa-80105867a763",
      "usageMB": 46000,
      "usageRequests": 4500,
      "activeApps": null
    }
  ]
}
```

### Example 3: Filter by application ID

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "reportroot_getsharepointapiusage_filter"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/getSharePointApiUsage(period='D7',appId='75b613ff-af8b-48bb-b872-e06048ccf8ea')?$format=text/csv
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: text/csv

UsageDateTime,ServiceArea,TenantId,AppId,UsageMB,UsageRequests,ActiveApps
2025-08-28T00:00:00Z,OneDrive and SharePoint,12345678-1234-1234-1234-123456789abc,75b613ff-af8b-48bb-b872-e06048ccf8ea,2432,1500,
```

### Example 4: Get JSON response

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "reportroot_getsharepointapiusage_json_format"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/getSharePointApiUsage(period='D7')?$format=application/json
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "summary": {
    "usageDateTime": "2026-02-04T00:00:00Z",
    "serviceArea": "OneDrive and SharePoint",
    "tenantId": "12345678-1234-1234-1234-123456789abc",
    "appId": null,
    "usageMB": 128000,
    "usageRequests": 15000,
    "activeApps": 5
  },
  "details": [
    {
      "usageDateTime": "2026-02-04T00:00:00Z",
      "serviceArea": "OneDrive and SharePoint",
      "tenantId": "12345678-1234-1234-1234-123456789abc",
      "appId": "00000003-0000-0ff1-ce00-000000000000",
      "usageMB": 82000,
      "usageRequests": 8500,
      "activeApps": null
    },
    {
      "usageDateTime": "2026-02-04T00:00:00Z",
      "serviceArea": "OneDrive and SharePoint",
      "tenantId": "12345678-1234-1234-1234-123456789abc",
      "appId": "ab9b8c07-8f02-4f72-87fa-80105867a763",
      "usageMB": 46000,
      "usageRequests": 4500,
      "activeApps": null
    }
  ]
}
```

> **Note:** JSON format returns a structured object with `summary` containing aggregated totals and `details` containing per-application details. The `details` array supports pagination via `$skip` and `$top` query parameters.

### Example 5: Get JSON response with appId filter

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "reportroot_getsharepointapiusage_json_filter"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/getSharePointApiUsage(period='D7',appId='00000003-0000-0ff1-ce00-000000000000')?$format=application/json
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "summary": null,
  "details": [
    {
      "usageDateTime": "2026-02-04T00:00:00Z",
      "serviceArea": "OneDrive and SharePoint",
      "tenantId": "12345678-1234-1234-1234-123456789abc",
      "appId": "00000003-0000-0ff1-ce00-000000000000",
      "usageMB": 82000,
      "usageRequests": 8500,
      "activeApps": null
    },
    {
      "usageDateTime": "2026-02-03T00:00:00Z",
      "serviceArea": "OneDrive and SharePoint",
      "tenantId": "12345678-1234-1234-1234-123456789abc",
      "appId": "00000003-0000-0ff1-ce00-000000000000",
      "usageMB": 75000,
      "usageRequests": 7000,
      "activeApps": null
    }
  ]
}
```

> **Note:** When an `appId` filter is specified, the `summary` property is `null` and only filtered detail rows appear in the `details` array.


### Example 6: Get throttling report (CSV format)

#### Request

The following example shows a request that returns the throttling report. The response includes the `throttledRequests` column instead of `usageMB`.

<!-- {
  "blockType": "request",
  "name": "reportroot_getsharepointapiusage_throttling_csv"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/getSharePointApiUsage(period='D7',reportType='throttlingReport')?$format=text/csv
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: text/csv

UsageDateTime,ServiceArea,TenantId,AppId,UsageRequests,ThrottledRequests,ActiveApps
2026-02-04T00:00:00Z,OneDrive and SharePoint,12345678-1234-1234-1234-123456789abc,,15000,320,5
2026-02-04T00:00:00Z,OneDrive and SharePoint,12345678-1234-1234-1234-123456789abc,00000003-0000-0ff1-ce00-000000000000,8500,210,
2026-02-04T00:00:00Z,OneDrive and SharePoint,12345678-1234-1234-1234-123456789abc,ab9b8c07-8f02-4f72-87fa-80105867a763,4500,90,
```

### Example 7: Get throttling report (JSON format)

#### Request

The following example shows a request that returns the throttling report in JSON format. Each data point includes the `throttledRequests` property instead of `usageMB`.

<!-- {
  "blockType": "request",
  "name": "reportroot_getsharepointapiusage_throttling_json"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/getSharePointApiUsage(period='D7',reportType='throttlingReport')?$format=application/json
```

#### Response

The following example shows the response.

> **Note:** The response object shown here might be shortened for readability.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "summary": {
    "usageDateTime": "2026-02-04T00:00:00Z",
    "serviceArea": "OneDrive and SharePoint",
    "tenantId": "12345678-1234-1234-1234-123456789abc",
    "appId": null,
    "usageRequests": 15000,
    "throttledRequests": 320,
    "activeApps": 5
  },
  "details": [
    {
      "usageDateTime": "2026-02-04T00:00:00Z",
      "serviceArea": "OneDrive and SharePoint",
      "tenantId": "12345678-1234-1234-1234-123456789abc",
      "appId": "00000003-0000-0ff1-ce00-000000000000",
      "usageRequests": 8500,
      "throttledRequests": 210,
      "activeApps": null
    },
    {
      "usageDateTime": "2026-02-04T00:00:00Z",
      "serviceArea": "OneDrive and SharePoint",
      "tenantId": "12345678-1234-1234-1234-123456789abc",
      "appId": "ab9b8c07-8f02-4f72-87fa-80105867a763",
      "usageRequests": 4500,
      "throttledRequests": 90,
      "activeApps": null
    }
  ]
}
```

### Example 8: Get throttling report filtered by application ID (CSV format)

#### Request

The following example shows a request that returns the throttling report for a specific application. Because an `appId` filter is specified, only detail rows are returned and the summary row is excluded.

<!-- {
  "blockType": "request",
  "name": "reportroot_getsharepointapiusage_throttling_filter"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/getSharePointApiUsage(period='D7',reportType='throttlingReport',appId='00000003-0000-0ff1-ce00-000000000000')?$format=text/csv
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: text/csv

UsageDateTime,ServiceArea,TenantId,AppId,UsageRequests,ThrottledRequests,ActiveApps
2026-02-04T00:00:00Z,OneDrive and SharePoint,12345678-1234-1234-1234-123456789abc,00000003-0000-0ff1-ce00-000000000000,8500,210,
2026-02-03T00:00:00Z,OneDrive and SharePoint,12345678-1234-1234-1234-123456789abc,00000003-0000-0ff1-ce00-000000000000,7000,180,
```

### Example 9: No data available

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "reportroot_getsharepointapiusage_nodata"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/getSharePointApiUsage(date=2026-02-01)
```

#### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 204 No Content
```

### Example 10: Error - Missing both parameters

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "reportroot_getsharepointapiusage_error_missingparams"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/getSharePointApiUsage
```

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.error"
} -->
```http
HTTP/1.1 400 Bad Request
Content-Type: application/json

{
  "error": {
    "code": "invalidRequest",
    "message": "Either 'period' OR 'date' parameter must be provided."
  }
}
```

### Example 11: Error - Both parameters provided

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "reportroot_getsharepointapiusage_error_bothparams"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/getSharePointApiUsage(period='D7',date=2026-02-01)
```

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.error"
}
-->
```http
HTTP/1.1 400 Bad Request
Content-Type: application/json

{
  "error": {
    "code": "invalidRequest",
    "message": "Cannot specify both 'period' and 'date' parameters. Provide only one."
  }
}
```

### Example 12: Error - Invalid period

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "reportroot_getsharepointapiusage_error_invalidperiod"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/getSharePointApiUsage(period='D90')
```

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.error"
}
-->
```http
HTTP/1.1 400 Bad Request
Content-Type: application/json

{
  "error": {
    "code": "invalidRequest",
    "message": "Invalid period 'D90'. Allowed values: D1, D7, D30."
  }
}
```

### Example 13: Error - Tenant not onboarded for preview

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "reportroot_getsharepointapiusage_error_notonboarded"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/getSharePointApiUsage(period='D7')
```

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.error"
}
-->
```http
HTTP/1.1 403 Forbidden
Content-Type: application/json

{
  "error": {
    "code": "accessDenied",
    "message": "Tenant {tenantId} is not enabled for this preview feature."
  }
}
```

### Example 14: Error - Report type not enabled for the tenant

#### Request

The following example shows a request for a report type that the tenant hasn't enabled (onboarded).
<!-- {
  "blockType": "request",
  "name": "reportroot_getsharepointapiusage_error_reporttypenotenabled"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/reports/getSharePointApiUsage(period='D7',reportType='throttlingReport')
```

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.error"
}
-->
```http
HTTP/1.1 403 Forbidden
Content-Type: application/json

{
  "error": {
    "code": "accessDenied",
    "message": "Tenant is not enabled for this report type.",
    "innerError": {
      "date": "2026-06-25T22:53:30",
      "request-id": "2b4784fc-4d55-4d4c-94f8-09edab9db300",
      "client-request-id": "526cdd74-ba54-2e21-debe-72a65718a7b9"
    }
  }
}
```
