---
title: "cloudPcReports: getInaccessibleCloudPcReports"
description: "Get inaccessible Cloud PCs with details, including the latest health state, failed connection count, failed health check count, and system status."
author: "guanchenga"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPcReports: getInaccessibleCloudPcReports

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get inaccessible Cloud PCs with details, including the latest health state, failed connection count, failed health check count, and system status. An inaccessible Cloud PC represents a Cloud PC that is in an unavailable state (at least one of the health checks failed) or has consecutive user connections failure.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcreports_getinaccessiblecloudpcreports" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcreports-getinaccessiblecloudpcreports-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/reports/getInaccessibleCloudPcReports
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this method.

| Parameter | Type              | Description                                                                                |
|:----------|:------------------|:-------------------------------------------------------------------------------------------|
| filter    | String            | OData `$filter` syntax. Only `and`, `or`, `gt` ,`ge` and `eq` are currently supported.     |
| select    | String collection | OData `$select` syntax. Represents the selected columns of the reports.                    |
| search    | String            | Specifies a String to search for.                                                          |
| groupBy   | String collection | Specifies how to group the reports. If used, must have the same content as the select parameter.|
| orderBy   | String collection | Specifies how to sort the reports.                                                           |
| skip      | Int32             | Number of records to skip.                                                                 |
| top       | Int32             | The number of top records to return.                                                       |

## Response

If successful, this method returns a `200 OK` response code and a Stream object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudpcreports.getInaccessibleCloudPcReports"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/getInaccessibleCloudPcReports
Content-Type: application/json
Content-length: 199

{
  "filter": "region eq 'westus2'",
  "orderBy": [
    "cloudPcId"
  ],
  "select": [
    "cloudPcId",
    "aadDeviceId",
    "cloudPcName",
    "userPrincipalName",
    "provisioningStatus",
    "region",
    "deviceHealthStatus",
    "deviceHealthStatusDateTime",
    "recentDeviceHealthFailureCount",
    "recentConnectionFailureCount",
    "systemStatus",
    "systemStatusDateTime"
  ],
  "top": 10,
  "skip": 0
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/cloudpcreportsgetinaccessiblecloudpcreports-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/cloudpcreportsgetinaccessiblecloudpcreports-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/cloudpcreportsgetinaccessiblecloudpcreports-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/cloudpcreportsgetinaccessiblecloudpcreports-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudpcreportsgetinaccessiblecloudpcreports-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/cloudpcreportsgetinaccessiblecloudpcreports-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/cloudpcreportsgetinaccessiblecloudpcreports-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/cloudpcreportsgetinaccessiblecloudpcreports-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
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
      "Column": "cloudPcId",
      "PropertyType": "String"
    },
    {
      "Column": "aadDeviceId",
      "PropertyType": "String"
    },
    {
      "Column": "cloudPcName",
      "PropertyType": "String"
    },
    {
      "Column": "userPrincipalName",
      "PropertyType": "String"
    },
    {
      "Column": "provisioningStatus",
      "PropertyType": "String"
    },
    {
      "Column": "region",
      "PropertyType": "String"
    },
    {
      "Column": "deviceHealthStatus",
      "PropertyType": "String"
    },
    {
      "Column": "deviceHealthStatusDateTime",
      "PropertyType": "DateTime"
    },
    {
      "Column": "recentDeviceHealthFailureCount",
      "PropertyType": "Int32"
    },
    {
      "Column": "recentConnectionFailureCount",
      "PropertyType": "Int64"
    },
    {
      "Column": "systemStatus",
      "PropertyType": "String"
    },
    {
      "Column": "systemStatusDateTime",
      "PropertyType": "DateTime"
    }
  ],
  "Values": [
    [
      "04e279c5-b228-4700-93c3-6f1339c7c86d",
      "a8f78191-8e43-4165-9191-16867d372161",
      "CPC-test1-VGTEK",
      "bob@fabrikam.com",
      "Provisioned",
      "westus2",
      "ErrorVMNotRunning",
      "2023-06-26T03:55:04",
      3,
      0,
      "",
      null
    ],
    [
      "818ff73d-9764-4412-ad99-fc65a396daf3",
      "daefef60-a912-4180-a5c0-f607e346878f",
      "CPC-test2-C84W3",
      "megan@fabrikam.com",
      "Provisioned",
      "westus2",
      "ErrorVMNotRunning",
      "2023-06-26T04:03:49",
      3,
      0,
      "",
      null
    ]
  ]
}
```

