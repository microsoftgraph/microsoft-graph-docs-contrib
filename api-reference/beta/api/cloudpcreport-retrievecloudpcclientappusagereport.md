---
title: "cloudPcReport: retrieveCloudPcClientAppUsageReport"
description: "Retrieve related reports for Cloud PC usage with client application used by users to sign in to the Cloud PC device."
author: "zhuolinglii"
ms.localizationpriority: medium
ms.subservice: "cloud-pc"
doc_type: apiPageType
ms.date: 11/24/2025
---

# cloudPcReport: retrieveCloudPcClientAppUsageReport

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Retrieve related [reports](../resources/cloudpcreport.md) on Cloud PC usage, including the client application used by users to sign in to the Cloud PC device.

The Remote Desktop client standalone installer (MSI) for Windows will reach end of support on March 27, 2026. Before that date, IT administrators should migrate users to Windows App to ensure continued access to remote resources through Azure Virtual Desktop, Windows 365, and Microsoft Dev Box. [Learn](https://techcommunity.microsoft.com/blog/windows-itpro-blog/prepare-for-the-remote-desktop-client-for-windows-end-of-support/4397724) more about preparing for the Remote Desktop Client for Windows end of support.

This API enables IT administrators to check the migration status by confirming whether users are still using the legacy Remote Desktop client and identifying their last sign-in dates, thereby helping monitor progress and ensure compliance with migration requirements.

[!INCLUDE [national-cloud-support](../../includes/global-us.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "cloudpcreport_retrievecloudpcclientappusagereport" } -->
[!INCLUDE [permissions-table](../includes/permissions/cloudpcreport-retrievecloudpcclientappusagereport-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /deviceManagement/virtualEndpoint/report/retrieveCloudPcClientAppUsageReport
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

The following table shows the parameters that can be used with this method.

|Parameter |Type             |Description|
|:---------|:----------------|:----------|
|filter    |String           |OData `$filter` syntax. Supported filters are: `and`, `or`, `lt`, `le`, `gt`, `ge`, and `eq`. Optional.|
|groupBy   |String collection|Specifies how to group the reports. If used, must have the same content as the **select** parameter. Optional.|
|orderBy   |String collection|Specifies how to sort the reports. Optional.|
|reportType|[cloudPcClientAppUsageReportType](../resources/cloudpcreport.md#cloudpcclientappusagereporttype-values)|The report type. The supported value is `microsoftRemoteDesktopClientUsageReport`. Required.|
|search    |String           |Specifies a String to search. Optional.|
|select    |String collection|OData `$select` syntax. The selected columns of the reports. Optional.|
|skip      |Int32            |Number of records to skip. Optional.|
|top       |Int32            |The number of top records to return. Optional.|

## Response

If successful, this method returns a `200 OK` response code and a Stream object in the response body.

The following table explains the schema in the response.

|Column          |Type     |Description|
|:---------------|:--------|:----------|
|UPN             |String   |The user principal name.|
|LastSignOn      |String   |The date when the user last signed in through the legacy Remote Desktop client.|
|DaysWithUsage   |String   |The total number of days that the user signed in through the legacy Remote Desktop client in the last 28 days.|

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "cloudpcreport.retrieveCloudPcClientAppUsageReport"
}
-->
``` http
POST https://graph.microsoft.com/beta/deviceManagement/virtualEndpoint/report/retrieveCloudPcClientAppUsageReport
Content-Type: application/json

{
    "filter": "",
    "reportType":"microsoftRemoteDesktopClientUsageReport",
    "select": ["UPN", "LastSignOn", "DaysWithUsage"],
    "search": "",
    "skip": 0,
    "top": 50
}
```

### Response

The following example shows the response.

>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "@odata.type": "Edm.Stream"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/octet-stream

{
    "TotalRowCount": 3,
    "Schema": [
        {
            "Column": "UPN",
            "PropertyType": "String"
        },
        {
            "Column": "LastSignOn",
            "PropertyType": "String"
        },
        {
            "Column": "DaysWithUsage",
            "PropertyType": "Int64"
        }
    ],
    "Values" :[
        ["test001@contoso.onmicrosoft.com", "2025-10-28", 10],
        ["test002@contoso.onmicrosoft.com", "2025-10-30",  5],
        ["test003@contoso.onmicrosoft.com", "2025-10-31", 19]
    ]
}
```
