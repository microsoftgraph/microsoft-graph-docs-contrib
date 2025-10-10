---
title: "cloudPcReport: retrieveCloudPcRecommendationReports"
description: "Retrieve Cloud PC recommendation reports for usage optimization and cost savings."
author: "XiaolouT"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 10/10/2025
---

# cloudPcReport: retrieveCloudPcRecommendationReports

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the device recommendation reports for Cloud PCs, such as the usage category report. The usage category report categorizes a Cloud PC as `Undersized`, `Oversized`, `Rightsized`, or `Underutilized`, and also provides the recommended SKU when the Cloud PC isn't `Rightsized`.

>[!NOTE]
> This API replaces the deprecated [cloudPcReports: getCloudPcRecommendationReports](../api/cloudpcreports-getcloudpcrecommendationreports.md) API, which will stop returning data on July 01, 2025.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

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

The following table shows the parameters that are required for this action.

|Parameter|Type|Description|
|:---|:---|:---|
|reportName|[cloudPcRecommendationReportType](../resources/cloudpcrecommendationreporttype.md)|The report name. Supported value is: `cloudPcUsageCategoryReport`. Required.|
|filter|String|OData `$filter` syntax. Optional. Supported filters are: `and`, `or`, `lt`, `le`, `gt`, `ge`, and `eq`.|
|select|String collection|OData `$select` syntax. Optional. The selected columns of the reports.|
|search|String|Specifies a String to search. Optional.|
|groupBy|String collection|Specifies how to group the reports. Optional. If used, must have the same content as the **select** parameter.|
|orderBy|String collection|Specifies how to sort the reports. Optional.|
|skip|Int32|Number of records to skip. Optional.|
|top|Int32|The number of top records to return. Optional.|

## Response

If successful, this action returns a `200 OK` response code and a Stream in the response body.

## Examples

### Example 1: List recommendation reports by device

The following example shows how to list the reports of the top 50 devices.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "cloudpcreport_retrievecloudpcrecommendationreports"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/report/retrieveCloudPcRecommendationReports
Content-Type: application/json

{
  "reportName": "cloudPcUsageCategoryReport",
  "top": 50,
  "skip": 0,
  "search": "",
  "filter": "",
  "select": [
    "CloudPcId",
    "ManagedDeviceName",
    "UserPrincipalName",
    "UsageCategory",
    "RecommendedAction",
    "CurrentServicePlan",
    "RecommendedServicePlan",
    "EstimatedSavings"
  ],
  "orderBy": [
    "ManagedDeviceName"
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
      "Column": "UsageCategory",
      "PropertyType": "String"
    },
    {
      "Column": "RecommendedAction",
      "PropertyType": "String"
    },
    {
      "Column": "CurrentServicePlan",
      "PropertyType": "String"
    },
    {
      "Column": "RecommendedServicePlan",
      "PropertyType": "String"
    },
    {
      "Column": "EstimatedSavings",
      "PropertyType": "Double"
    }
  ],
  "Values": [
    [
      "4db3619f-be92-42a7-8c74-43fab185da6f",
      "CloudPC-Device-01",
      "user1@contoso.com",
      "Rightsized",
      "No action needed",
      "Standard-2vCPU-8GB-RAM-128GB",
      null,
      0
    ],
    [
      "f2ee066c-f63e-4acd-a41e-e348db71cb4d",
      "CloudPC-Device-02",
      "user2@contoso.com",
      "Undersized",
      "Upgrade to recommended plan",
      "Standard-2vCPU-8GB-RAM-128GB",
      "Standard-4vCPU-16GB-RAM-256GB",
      0
    ]
  ]
}
```

### Example 2: Get summary reports by usage category

The following example shows how to summarize the report by usage category.

#### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "cloudpcreport_retrievecloudpcrecommendationreports_byusagecategory"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/report/retrieveCloudPcRecommendationReports
Content-Type: application/json

{
  "reportName": "cloudPcUsageCategoryReport",
  "select": [
    "UsageCategory"
  ],
  "groupBy": [
    "UsageCategory"
  ],
  "filter": ""
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
  "TotalRowCount": 5,
  "Schema": [
    {
      "Column": "__Count",
      "PropertyType": "Int32"
    },
    {
      "Column": "UsageCategory",
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
    ],
    [
      10,
      "Unused"
    ]
  ]
}
```
