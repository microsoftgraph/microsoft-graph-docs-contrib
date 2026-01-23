---
title: "reports: getApplicationUsageAnalytics"
description: "Get a collection of application usage analytics data points based on aggregated traffic logs for a specified time period, providing daily breakdown of usage between cloud and enterprise applications."
author: miritsadon
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
ms.date: 08/11/2025
---

# reports: getApplicationUsageAnalytics
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a collection of application usage analytics data points based on aggregated traffic logs for a specified time period, providing daily breakdown of usage between cloud and enterprise applications in Global Secure Access.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_reports_getapplicationusageanalytics" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-reports-getapplicationusageanalytics-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /networkAccess/reports/getApplicationUsageAnalytics(startDateTime={startDateTime},endDateTime={endDateTime},aggregatedBy={aggregatedBy})
```

## Function parameters
In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|The date and time when the reporting period begins.|
|endDateTime|DateTimeOffset|The date and time when the reporting period ends.|
|aggregatedBy|microsoft.graph.networkaccess.aggregationFilter|The aggregation type for the returned data. The possible values are: `transactions`, `users`, `devices`, `unknownFutureValue`, `bytesSent`, `bytesReceived`, `totalBytes`. Use the `Prefer: include-unknown-enum-members` request header to get the following values from this [evolvable enum](/graph/best-practices-concept#handling-future-members-in-evolvable-enumerations): `bytesSent`, `bytesReceived`, `totalBytes`.|

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|include-unknown-enum-members|Optional. Add this header to retrieve the enumeration members after the sentinel value.|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [microsoft.graph.networkaccess.applicationAnalyticsUsagePoint](../resources/networkaccess-applicationanalyticsusagepoint.md) collection in the response body.

## Examples

### Request
The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "reportsthis.getapplicationusageanalytics"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/networkAccess/reports/getApplicationUsageAnalytics(startDateTime={startDateTime},endDateTime={endDateTime},aggregatedBy={aggregatedBy})
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/reportsthisgetapplicationusageanalytics-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/reportsthisgetapplicationusageanalytics-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/reportsthisgetapplicationusageanalytics-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/reportsthisgetapplicationusageanalytics-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/reportsthisgetapplicationusageanalytics-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.applicationAnalyticsUsagePoint)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.networkaccess.applicationAnalyticsUsagePoint)",
  "value":[
     {
        "timeStampDateTime":"2023-08-20T00:00:00Z",
        "totalCount":150,
        "enterpriseAppsCount":85,
        "cloudAppsCount":65
     },
     {
        "timeStampDateTime":"2023-08-21T00:00:00Z",
        "totalCount":175,
        "enterpriseAppsCount":95,
        "cloudAppsCount":80
     }
  ]
}
```
