---
title: "Get adminReportSettings"
description: "Get the tenant-level settings for Microsoft 365 reports."
ms.localizationpriority: medium
author: "ganggao"
ms.subservice: "reports"
doc_type: apiPageType
---

# Get adminReportSettings

Namespace: microsoft.graph

Get the tenant-level settings for Microsoft 365 reports.

> **Note:** For details about different report views and names, see [Microsoft 365 Reports in the admin center - Microsoft 365 Apps usage](/microsoft-365/admin/activity-reports/microsoft365-apps-usage).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "adminreportsettings_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/adminreportsettings-get-permissions.md)]

> **Note:** For delegated permissions to allow apps to get report settings on behalf of a user, the tenant administrator must have assigned the user the appropriate Microsoft Entra ID limited administrator role. For more details, see [Authorization for APIs to read Microsoft 365 usage reports](/graph/reportroot-authorization).

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /admin/reportSettings
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [adminReportSettings](../resources/adminreportsettings.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "get_adminreportsettings"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/admin/reportSettings
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.adminReportSettings"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "value": {
    "@odata.type": "#microsoft.graph.adminReportSettings",
    "displayConcealedNames": true
  }
}
```
