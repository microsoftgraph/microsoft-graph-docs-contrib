---
title: "Update adminReportSettings"
description: "Update tenant-level settings for Microsoft 365 reports."
ms.localizationpriority: medium
author: "qiwhuang"
ms.subservice: "reports"
doc_type: apiPageType
---

# Update adminReportSettings

Namespace: microsoft.graph

Update tenant-level settings for Microsoft 365 reports.

[!INCLUDE [national-cloud-support](../../includes/all-clouds.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "adminreportsettings_update" } -->
[!INCLUDE [permissions-table](../includes/permissions/adminreportsettings-update-permissions.md)]

> **Note:** For delegated permissions to allow apps to update report settings on behalf of a user, the tenant administrator must have assigned the user the appropriate Microsoft Entra ID limited administrator role. For more details, see [Authorization for APIs to read Microsoft 365 usage reports](/graph/reportroot-authorization).

## HTTP request
<!-- { "blockType": "ignored" } --> 
```http
PATCH /admin/reportSettings
```

## Request headers

| Name          | Description                |
| :------------ | :--------------------------|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
| Content-Type  | application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

| Property       | Type           | Description                                 |
| -------------- | -------------- | ------------------------------------------- |
| displayConcealedNames | Boolean | If set to `true`, all reports will conceal user information such as usernames, groups, and sites. If `false`, all reports will show identifiable information. This property represents a setting in the Microsoft 365 admin center. Required. |

## Response

If successful, this method returns a `204 No Content` response code.

## Examples

The following example shows a request that updates a tenant-level setting for Microsoft 365 reports.

### Request
The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "update_adminreportsettings"
}
-->
``` http
PATCH https://graph.microsoft.com/v1.0/admin/reportSettings
Content-Type: application/json
Content-length: 37

{
  "displayConcealedNames": true
}
```

### Response

The following example shows the response.

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```
