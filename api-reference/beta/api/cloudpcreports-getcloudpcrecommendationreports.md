---
title: "cloudPcReports: getCloudPcRecommendationReports"
description: "Get the device recommendation reports for Cloud PCs, such as the usage category report."
author: "XiaolouT"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
---

# cloudPcReports: getCloudPcRecommendationReports

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the device recommendation reports for Cloud PCs, such as the usage category report. The usage category report categorizes a Cloud PC as `Undersized`, `Oversized`, `Rightsized`, or `Underutilized`, and also provides the recommended SKU when the Cloud PC isn't `Rightsized`.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcreports_getcloudpcrecommendationreports" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcreports-getcloudpcrecommendationreports-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/reports/getCloudPcRecommendationReports
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required.|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|filter|String|OData `$filter` syntax. Supported filters are: `and`, `or`, `lt`, `le`, `gt`, `ge`, and `eq`.|
|groupBy|String collection|Specifies how to group the reports. If used, must have the same content as the **select** parameter.|
|orderBy|String collection|Specifies how to sort the reports.|
|reportName|[cloudPcReportName](../resources/cloudpcexportjob.md#cloudpcreportname-values)|Specifies the report name. Supports a subset of the values for **cloudPcReportName**. Supported values are: `cloudPcUsageCategoryReports`.|
|search|String|Specifies a String to search.|
|select|String collection|OData `$select` syntax. The selected columns of the reports. |
|skip|Int32|Number of records to skip.|
|top|Int32|The number of top records to return.|

## Response

If successful, this action returns a `200 OK` response code and a Stream in the response body.

## Examples

### Example 1: List recommendation reports by device

The following example shows how to list the reports of the top 50 devices.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudpcreportsthis.getcloudpcrecommendationreports"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/getCloudPcRecommendationReports
Content-Type: application/json
Content-length: 262

{
  "reportName": "cloudPcUsageCategoryReports",
  "top": 50,
  "skip": 0,
  "search": "",
  "filter": "",
  "select": [
    "CloudPcId",
    "ManagedDeviceName",
    "UserPrincipalName",
    "UsageInsight",
    "CurrentSize",
    "RecommendedSize",
    "UsageInHour",
    "DevicePerfSummary"
  ],
  "orderBy": [
    "ManagedDeviceName"
  ]
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/cloudpcreportsthisgetcloudpcrecommendationreports-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/cloudpcreportsthisgetcloudpcrecommendationreports-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/cloudpcreportsthisgetcloudpcrecommendationreports-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/cloudpcreportsthisgetcloudpcrecommendationreports-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudpcreportsthisgetcloudpcrecommendationreports-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/cloudpcreportsthisgetcloudpcrecommendationreports-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/cloudpcreportsthisgetcloudpcrecommendationreports-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/cloudpcreportsthisgetcloudpcrecommendationreports-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

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
  "TotalRowCount": 489,
  "Schema": [
    {
      "Column": "CloudPcId",
      "PropertyType": "String"
    },
    {
      "Column": "ManagedDeviceName",
      "PropertyType": "String"
    },
    {
      "Column": "UserPrincipalName",
      "PropertyType": "String"
    },
    {
      "Column": "UsageInsight",
      "PropertyType": "String"
    },
    {
      "Column": "CurrentSize",
      "PropertyType": "Json"
    },
    {
      "Column": "RecommendedSize",
      "PropertyType": "Json"
    },
    {
      "Column": "UsageInHour",
      "PropertyType": "Double"
    },
    {
      "Column": "DevicePerfSummary",
      "PropertyType": "Json"
    }
  ],
  "Values": [
    [
      "4db3619f-be92-42a7-8c74-43fab185da6f",
      "1MoveHost",
      "connie_1@contoso.com",
      "Rightsized",
      {
        "NumvCPUs": 2,
        "RamInGB": 8,
        "OsDiskSizeInGB": 128
      },
      null,
      0,
      {
        "CPUUsagePercentageP90": 0.3,
        "RAMUsagePercentageP90": 0.4
      }
    ],
    [
      "f2ee066c-f63e-4acd-a41e-e348db71cb4d",
      "AXFBF",
      "connie_2@contoso.com",
      "Rightsized",
      {
        "NumvCPUs": 2,
        "RamInGB": 8,
        "OsDiskSizeInGB": 128
      },
      null,
      0,
      {
        "CPUUsagePercentageP90": 0.2,
        "RAMUsagePercentageP90": 0.3
      }
    ]
  ]
}
```

### Example 2: Get summary reports by usage insight

The following example shows how to summarize the report by usage insight.

#### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "cloudpcreportsthis.getcloudpcrecommendationreports_byusageinsight"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/reports/getCloudPcRecommendationReports
Content-Type: application/json
Content-length: 262

{
  "reportName": "cloudPcUsageCategoryReports",
  "select": [
    "UsageInsight"
  ],
  "groupBy": [
    "UsageInsight"
  ],
  "filter": ""
}
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/cloudpcreportsthisgetcloudpcrecommendationreports-byusageinsight-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [CLI](#tab/cli)
[!INCLUDE [sample-code](../includes/snippets/cli/cloudpcreportsthisgetcloudpcrecommendationreports-byusageinsight-cli-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/cloudpcreportsthisgetcloudpcrecommendationreports-byusageinsight-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/cloudpcreportsthisgetcloudpcrecommendationreports-byusageinsight-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/cloudpcreportsthisgetcloudpcrecommendationreports-byusageinsight-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/cloudpcreportsthisgetcloudpcrecommendationreports-byusageinsight-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/cloudpcreportsthisgetcloudpcrecommendationreports-byusageinsight-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/cloudpcreportsthisgetcloudpcrecommendationreports-byusageinsight-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

#### Response

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
  "TotalRowCount": 4,
  "Schema": [
    {
      "Column": "__Count",
      "PropertyType": "Int32"
    },
    {
      "Column": "UsageInsight",
      "PropertyType": "String"
    }
  ],
  "Values": [
    [
      200,
      "Rightsized"
    ],
    [
      50,
      "Undersized"
    ],
    [
      30,
      "Oversized"
    ],
    [
      40,
      "Underutilized"
    ]
  ]
}
```
