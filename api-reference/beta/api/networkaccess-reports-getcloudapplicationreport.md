---
title: "reports: getCloudApplicationReport"
description: "Get a collection of cloud application reports based on aggregated traffic logs for a specified time period."
author: miritsadon
ms.localizationpriority: medium
ms.subservice: entra-global-secure-access
doc_type: apiPageType
ms.date: 08/11/2025
---

# reports: getCloudApplicationReport
Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a collection of cloud application reports based on aggregated traffic logs for a specified time period in Global Secure Access.

## Permissions
Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "networkaccess_reports_getcloudapplicationreport" } -->
[!INCLUDE [permissions-table](../includes/permissions/networkaccess-reports-getcloudapplicationreport-permissions.md)]

[!INCLUDE [rbac-global-secure-access-apis-read](../includes/rbac-for-apis/rbac-global-secure-access-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /networkAccess/reports/getCloudApplicationReport(startDateTime={startDateTime},endDateTime={endDateTime})
```

## Function parameters
In the request URL, provide the following query parameters with values.

|Parameter|Type|Description|
|:---|:---|:---|
|startDateTime|DateTimeOffset|The date and time when the reporting period begins.|
|endDateTime|DateTimeOffset|The date and time when the reporting period ends.|
|userId|String|Optional. Identifier of the user that is used to filter the cloud application report to apps accessed only by this user.|

## Request headers
|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body
Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [microsoft.graph.networkaccess.cloudApplicationReport](../resources/networkaccess-cloudapplicationreport.md) collection in the response body.

## Examples

### Request
The following example shows a request.
# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "reportsthis.getcloudapplicationreport"
}
-->
```msgraph-interactive
GET https://graph.microsoft.com/beta/networkAccess/reports/getCloudApplicationReport(startDateTime={startDateTime},endDateTime={endDateTime},userId={userId})
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/reportsthisgetcloudapplicationreport-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/reportsthisgetcloudapplicationreport-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/reportsthisgetcloudapplicationreport-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/reportsthisgetcloudapplicationreport-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/reportsthisgetcloudapplicationreport-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response
The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.networkaccess.cloudApplicationReport)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context":"https://graph.microsoft.com/beta/$metadata#Collection(microsoft.graph.networkaccess.cloudApplicationReport)",
  "value":[
     {
        "trafficType":"internet",
        "firstAccessDateTime":"2023-08-09T13:20:04Z",
        "lastAccessDateTime":"2023-08-21T13:20:04Z",
        "transactionCount":125,
        "userCount":15,
        "deviceCount":8,
        "totalBytesSent":2048576,
        "totalBytesReceived":4096000,
        "cloudApplicationCatalogId":"12345",
        "name":"ChatGPT",
        "generalScore":85,
        "riskScore":15,
        "complianceScore":90,
        "legalScore":88,
        "categories": [ "Generative AI" ],
        "securityScore":92
     },
     {
        "trafficType":"internet",
        "firstAccessDateTime":"2023-08-09T08:30:15Z",
        "lastAccessDateTime":"2023-08-21T17:45:30Z",
        "transactionCount":89,
        "userCount":12,
        "deviceCount":6,
        "totalBytesSent":1024000,
        "totalBytesReceived":2048000,
        "cloudApplicationCatalogId":"67890",
        "name":"Salesforce",
        "generalScore":95,
        "riskScore":5,
        "complianceScore":98,
        "legalScore":96,
        "categories": [ "Collaboration", "Productivity", "Content management" ],
        "securityScore":97
     }
  ]
}
```
