---
title: "reportRoot: getApiUsage"
description: "Get a report that provides information about active Microsoft Graph API usage."
ms.localizationpriority: medium
ms.subservice: "reports"
author: "jeremyke"
doc_type: apiPageType
ms.date: 03/10/2025
---

# reportRoot: getApiUsage

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a report that provides information about active Microsoft Graph API usage. The data returned is provided in a comma separated stream. Each row represents a full day of data. If no traffic was measured on a particular day, no rows of data for that day are included.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "reportroot_getapiquota" } -->
[!INCLUDE [permissions-table](../includes/permissions/reportroot-getapiusage-permissions.md)]

> **Note:** The user calling the API must have either the Global Reader or Global Administrator role. For more information on user roles, see  [Microsoft Entra built-in roles](/entra/identity/role-based-access-control/permissions-reference).

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /reports/getApiUsage(period={period_value},serviceArea={service_area},appId={appId})
```

## Function parameters

In the request URL, optionally provide one or more of the following parameters with a valid value.

| Parameter | Type   | Description                                                                                                                                                                                                                                             |
| :-------- | :----- | :------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------ |
| appId | String | Optional. Specifies the app ID for filtering the data returned by the API. By default, the API returns the data for all apps within the tenant. |
| period    | String | Optional. Specifies the length of time over which the report is aggregated. The supported values for {period_value} are: `D7`, `D30`, and `D60`. These values follow the format D*n* where *n* represents the number of days over which the report is aggregated. The default value is `D30`. |
| serviceArea | String | Optional. Specifies the service area (Microsoft Exchange, Microsoft Teams Messaging, Microsoft Teams Calling, or Microsoft Teams Presence) for which the data should be filtered. By default, the API returns the data for all service areas. |

## Optional query parameters

This method doesn't support [OData query parameters](/graph/query-parameters) to customize the response.

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

### CSV

If successful, this method returns a `200 OK` response code and data in `text/csv` format in the response body.

The CSV data has the following headers for columns:

- Date
- Service Area
- Tenant ID
- App ID
- Usage
- Active Apps

## Example

### Request

The following example shows a request.

<!-- {
  "blockType": "ignored",
  "name": "reportroot_getapiquota_csv"
}-->
```http
GET https://graph.microsoft.com/beta/reports/getApiUsage(period='D7')
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "text/csv"
} -->
```http
HTTP/1.1 200 OK
Content-Type: text/csv

Date,Service Area,Tenant ID,App ID,Usage,Active Apps
2024-08-28T00:00:00Z,Microsoft Exchange,00000000-0000-0000-0000-000000000000,,5888,2
2024-08-28T00:00:00Z,Microsoft Exchange,00000000-0000-0000-0000-000000000000,00000000-0000-0000-0000-000000000000,2432,
2024-08-28T00:00:00Z,Microsoft Exchange,00000000-0000-0000-0000-000000000000,00000000-0000-0000-0000-000000000000,3456,
2024-08-27T00:00:00Z,Microsoft Exchange,00000000-0000-0000-0000-000000000000,,28717,3
2024-08-27T00:00:00Z,Microsoft Exchange,00000000-0000-0000-0000-000000000000,00000000-0000-0000-0000-000000000000,1800
2024-08-27T00:00:00Z,Microsoft Exchange,00000000-0000-0000-0000-000000000000,00000000-0000-0000-0000-000000000000,5050
2024-08-28T00:00:00Z,Microsoft Exchange,00000000-0000-0000-0000-000000000000,00000000-0000-0000-0000-000000000000,21867
```
