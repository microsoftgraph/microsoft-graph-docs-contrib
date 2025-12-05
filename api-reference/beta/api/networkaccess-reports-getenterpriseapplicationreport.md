---
title: "reports: getEnterpriseApplicationReport"
description: "Get a collection of enterprise application reports based on aggregated traffic logs for a specified time period."
author: miritsadon
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
ms.date: 08/11/2025
---

# reports: getEnterpriseApplicationReport
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a collection of enterprise application reports based on aggregated traffic logs for a specified time period in Global Secure Access.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_reports_getenterpriseapplicationreport" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-reports-getenterpriseapplicationreport-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /networkAccess/reports/getEnterpriseApplicationReport(startDateTime={startDateTime},endDateTime={endDateTime})
```

## Function parameters
In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|The date and time when the reporting period begins.|
|endDateTime|DateTimeOffset|The date and time when the reporting period ends.|
|userId|String|Optional. Identifier of the user that is used to filter the enterprise application report to apps accessed only by this user.|

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [microsoft.graph.networkaccess.enterpriseApplicationReport](../resources/networkaccess-enterpriseapplicationreport.md) collection in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "reportsthis.getenterpriseapplicationreport"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/networkAccess/reports/getEnterpriseApplicationReport(startDateTime={startDateTime},endDateTime={endDateTime},userId={userId})
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/reportsthisgetenterpriseapplicationreport-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/reportsthisgetenterpriseapplicationreport-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/reportsthisgetenterpriseapplicationreport-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/reportsthisgetenterpriseapplicationreport-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/reportsthisgetenterpriseapplicationreport-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.enterpriseApplicationReport)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.networkaccess.enterpriseApplicationReport)",
  "value":[
     {
        "trafficType":"private",
        "applicationId":"b12f3c4d-5e6f-7a8b-9c0d-1e2f3a4b5c6d",
        "firstAccessDateTime":"2023-08-09T09:15:30Z",
        "lastAccessDateTime":"2023-08-21T16:30:45Z",
        "transactionCount":245,
        "userCount":28,
        "deviceCount":15,
        "totalBytesSent":5242880,
        "totalBytesReceived":10485760,
        "accessType":"privateAccess"
     },
     {
        "trafficType":"microsoft365",
        "applicationId":"a11e2f3c-4d5e-6f7a-8b9c-0d1e2f3a4b5c",
        "firstAccessDateTime":"2023-08-09T08:00:00Z",
        "lastAccessDateTime":"2023-08-21T18:00:00Z",
        "transactionCount":567,
        "userCount":45,
        "deviceCount":22,
        "totalBytesSent":8388608,
        "totalBytesReceived":16777216,
        "accessType":"quickAccess"
     }
  ]
}
```
