---
title: "cloudPcReport: retrieveCloudPcRecommendationReports"
description: "Retrieve Cloud PC recommendation reports for usage optimization and cost savings."
author: "Ward1994"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 11/24/2025
---

# cloudPcReport: retrieveCloudPcRecommendationReports

Namespace: microsoft.graph

Retrieve Cloud PC recommendation [reports](../resources/cloudpcreport.md) for usage optimization and cost savings. The usage category report categorizes a Cloud PC as `Undersized`, `Oversized`, `Rightsized`, or `Underutilized`, and also provides the recommended SKU when the Cloud PC isn't `Rightsized`.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcreport_retrievecloudpcrecommendationreports" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcreport-retrievecloudpcrecommendationreports-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/report/retrieveCloudPcRecommendationReports
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that you can use with this action.

|Parameter|Type|Description|
|:---|:---|:---|
|filter|String|OData `$filter` syntax. Supported filters are: `and`, `or`, `lt`, `le`, `gt`, `ge`, and `eq`. Optional.|
|groupBy|String collection|Specifies how to group the reports. If used, must have the same content as the **select** parameter. Optional.|
|orderBy|String collection|Specifies how to sort the reports. Optional.|
|reportType|[cloudPcRecommendationReportType](../resources/cloudpcreport.md#cloudpcrecommendationreporttype-values)|The report type. Supports a subset of the values for **cloudPcRecommendationReportType**. The supported value is `cloudPcUsageCategoryReport`. Required.|
|search|String|Specifies a String to search. Optional.|
|select|String collection|OData `$select` syntax. The selected columns of the reports. Optional.|
|skip|Int32|Number of records to skip. Optional.|
|top|Int32|The number of top records to return. Optional.|

## Response

If successful, this action returns a `200 OK` response code and a Stream in the response body.

## Examples

### Example 1: Get device recommendation reports grouped by service plan and usage category

The following example shows how to get device recommendation reports grouped by service plan and usage category.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "cloudpcreport_retrievecloudpcrecommendationreports_grouped"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/deviceManagement/virtualEndpoint/report/retrieveCloudPcRecommendationReports
Content-Type: application/json

{
  "reportType": "cloudPcUsageCategoryReport",
  "select": [
    "ServicePlanId",
    "ServicePlanName",
    "UsageCategory"
  ],
  "groupBy": [
    "ServicePlanId",
    "ServicePlanName",
    "UsageCategory"
  ]
}
```

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
  "TotalRowCount": 15,
  "Schema": [
    {
      "Column": "__Count",
      "PropertyType": "Int32"
    },
    {
      "Column": "ServicePlanId",
      "PropertyType": "String"
    },
    {
      "Column": "ServicePlanName",
      "PropertyType": "String"
    },
    {
      "Column": "UsageCategory",
      "PropertyType": "String"
    }
  ],
  "Values": [
    [
      26,
      "d3468c8c-3545-4f44-a32f-b465934d2498",
      "Cloud PC Enterprise 2vCPU/8GB/256GB",
      "Undersized"
    ],
    [
      12,
      "d3468c8c-3545-4f44-a32f-b465934d2498",
      "Cloud PC Enterprise 2vCPU/8GB/256GB",
      "Oversized"
    ],
    [
      300,
      "d3468c8c-3545-4f44-a32f-b465934d2498",
      "Cloud PC Enterprise 2vCPU/8GB/256GB",
      "Rightsized"
    ],
    [
      4,
      "d3468c8c-3545-4f44-a32f-b465934d2498",
      "Cloud PC Enterprise 2vCPU/8GB/256GB",
      "Underutilized"
    ]
  ]
}
```

### Example 2: Get device usage category reports for Cloud PCs

The following example shows how to get detailed usage category reports for individual Cloud PCs.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "cloudpcreport_retrievecloudpcrecommendationreports_detailed"
}
-->
``` http
POST https://graph.microsoft.com/v1.0/deviceManagement/virtualEndpoint/report/retrieveCloudPcRecommendationReports
Content-Type: application/json

{
  "reportType": "cloudPcUsageCategoryReport",
  "filter": "",
  "select": [
    "CloudPcId",
    "ManagedDeviceName",
    "UserPrincipalName",
    "ServicePlanId",
    "ServicePlanName",
    "UsageCategory",
    "RecommendedPlanId",
    "RecommendedPlanName"
  ],
  "search": "",
  "skip": 0,
  "top": 15
}
```

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
  "TotalRowCount": 15,
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
      "Column": "ServicePlanId",
      "PropertyType": "String"
    },
    {
      "Column": "ServicePlanName",
      "PropertyType": "String"
    },
    {
      "Column": "UsageCategory",
      "PropertyType": "String"
    },
    {
      "Column": "RecommendedPlanId",
      "PropertyType": "String"
    },
    {
      "Column": "RecommendedPlanName",
      "PropertyType": "String"
    }
  ],
  "Values": [
    [
      "1f574bb6-ac68-4f27-be1e-b810ae5e3b52",
      "CPC-Test-001",
      "test001@fabrikam.com",
      "d3468c8c-3545-4f44-a32f-b465934d2498",
      "Cloud PC Enterprise 2vCPU/8GB/256GB",
      "Undersized",
      "2de9c682-ca3f-4f2b-b360-dfc4775db133",
      "Cloud PC Enterprise 4vCPU/16GB/128GB"
    ],
    [
      "37ea6497-83fb-474b-b07b-54f0ac16f3ed",
      "CPC-Test-002",
      "test002@fabrikam.com",
      "d3468c8c-3545-4f44-a32f-b465934d2498",
      "Cloud PC Enterprise 2vCPU/8GB/256GB",
      "Oversized",
      "0d143570-9b92-4f57-adb5-e4efcd23b3bb",
      "Cloud PC Enterprise 2vCPU/4GB/256GB"
    ],
    [
      "4c6a1fb2-1ac7-40fc-a213-fb0eaec872f3",
      "CPC-Test-003",
      "test003@fabrikam.com",
      "d3468c8c-3545-4f44-a32f-b465934d2498",
      "Cloud PC Enterprise 2vCPU/8GB/256GB",
      "Rightsized",
      null,
      null
    ],
    [
      "632dbe76-2fe3-4a2f-8b91-8514ecfe9d8c",
      "CPC-Test-004",
      "test004@fabrikam.com",
      "d3468c8c-3545-4f44-a32f-b465934d2498",
      "Cloud PC Enterprise 2vCPU/8GB/256GB",
      "Underutilized",
      null,
      null
    ]
  ]
}
```
