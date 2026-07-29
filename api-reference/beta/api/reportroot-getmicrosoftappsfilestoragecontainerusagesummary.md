---
title: "reportRoot: getMicrosoftAppsFileStorageContainerUsageSummary"
description: "Get storage usage data for SharePoint Embedded file storage containers in a tenant."
author: "anjkumari"
ms.date: 06/25/2026
ms.localizationpriority: medium
ms.subservice: "reports"
doc_type: apiPageType
---

# reportRoot: getMicrosoftAppsFileStorageContainerUsageSummary

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get storage usage data for SharePoint Embedded file storage containers in a tenant. The response follows a hierarchical structure: Tenant > Geo > App. Use `$expand` to include nested levels. This method is available in the global service only.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "reportroot_getmicrosoftappsfilestoragecontainerusagesummary" } -->
[!INCLUDE [permissions-table](../includes/permissions/reportroot-getmicrosoftappsfilestoragecontainerusagesummary-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /reports/microsoftAppsFileStorageContainerUsageSummary
```

## Optional query parameters

This method supports the `$expand` OData query parameter to help customize the response. Use `$expand=usageByDataLocation` to include geo-level breakdown, or `$expand=usageByDataLocation($expand=usageByApp)` for the full hierarchy. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [microsoftAppsFileStorageContainerUsage](../resources/microsoftappsfilestoragecontainerusage.md) object in the response body.

## Examples

### Example 1: Get tenant-level summary

The following example returns only tenant-level totals (storage used, container count) without any geo or app breakdown.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_microsoftappsfilestoragecontainerusagesummary"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/microsoftAppsFileStorageContainerUsageSummary
```

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.microsoftAppsFileStorageContainerUsage"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.microsoftAppsFileStorageContainerUsage",
  "id": "microsoftAppsFileStorageContainerUsageSummary",
  "totalActiveStorageUsedInBytes": 107374182400,
  "totalActiveContainerCount": 2450
}
```

### Example 2: Get tenant and geo-level breakdown

The following example returns tenant-level totals with geo-level breakdown using `$expand=usageByDataLocation`.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_microsoftappsfilestoragecontainerusagesummary_with_geo"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/microsoftAppsFileStorageContainerUsageSummary?$expand=usageByDataLocation
```

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.microsoftAppsFileStorageContainerUsage"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.microsoftAppsFileStorageContainerUsage",
  "id": "microsoftAppsFileStorageContainerUsageSummary",
  "totalActiveStorageUsedInBytes": 107374182400,
  "totalActiveContainerCount": 2450,
  "usageByDataLocation": [
    {
      "@odata.type": "#microsoft.graph.microsoftAppsFileStorageContainerGeoUsage",
      "dataLocationCode": "NAM",
      "activeStorageUsedInBytes": 85899345920,
      "activeContainerCount": 1980
    },
    {
      "@odata.type": "#microsoft.graph.microsoftAppsFileStorageContainerGeoUsage",
      "dataLocationCode": "EUR",
      "activeStorageUsedInBytes": 21474836480,
      "activeContainerCount": 470
    }
  ]
}
```

### Example 3: Get full hierarchy with app-level breakdown

The following example returns the full tenant > geo > app hierarchy using `$expand=usageByDataLocation($expand=usageByApp)`.

#### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_microsoftappsfilestoragecontainerusagesummary_with_apps"
}
-->
``` http
GET https://graph.microsoft.com/beta/reports/microsoftAppsFileStorageContainerUsageSummary?$expand=usageByDataLocation($expand=usageByApp)
```

#### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": false,
  "@odata.type": "microsoft.graph.microsoftAppsFileStorageContainerUsage"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.microsoftAppsFileStorageContainerUsage",
  "id": "microsoftAppsFileStorageContainerUsageSummary",
  "totalActiveStorageUsedInBytes": 107374182400,
  "totalActiveContainerCount": 2450,
  "usageByDataLocation": [
    {
      "@odata.type": "#microsoft.graph.microsoftAppsFileStorageContainerGeoUsage",
      "dataLocationCode": "NAM",
      "activeStorageUsedInBytes": 85899345920,
      "activeContainerCount": 1980,
      "usageByApp": [
        {
          "@odata.type": "#microsoft.graph.microsoftAppsFileStorageContainerAppUsage",
          "appId": "a187e399-0c36-4b98-8f04-1edc167a0996",
          "displayName": "Loop",
          "activeStorageUsedInBytes": 53687091200,
          "activeContainerCount": 1200
        },
        {
          "@odata.type": "#microsoft.graph.microsoftAppsFileStorageContainerAppUsage",
          "appId": "5e2795e3-ce8c-4cfb-b302-35fe5cd01597",
          "displayName": "Designer",
          "activeStorageUsedInBytes": 32212254720,
          "activeContainerCount": 780
        }
      ]
    },
    {
      "@odata.type": "#microsoft.graph.microsoftAppsFileStorageContainerGeoUsage",
      "dataLocationCode": "EUR",
      "activeStorageUsedInBytes": 21474836480,
      "activeContainerCount": 470,
      "usageByApp": [
        {
          "@odata.type": "#microsoft.graph.microsoftAppsFileStorageContainerAppUsage",
          "appId": "a187e399-0c36-4b98-8f04-1edc167a0996",
          "displayName": "Loop",
          "activeStorageUsedInBytes": 16106127360,
          "activeContainerCount": 350
        },
        {
          "@odata.type": "#microsoft.graph.microsoftAppsFileStorageContainerAppUsage",
          "appId": "5e2795e3-ce8c-4cfb-b302-35fe5cd01597",
          "displayName": "Designer",
          "activeStorageUsedInBytes": 5368709120,
          "activeContainerCount": 120
        }
      ]
    }
  ]
}
```
