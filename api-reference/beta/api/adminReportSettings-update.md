---
title: "Update adminReportSettings"
description: "Update an adminReportSettings object."
ms.localizationpriority: medium
author: "qiwhuang"
ms.prod: "reports"
doc_type: apiPageType
---

# Update adminReportSettings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Update settings of the report in Graph API.

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged) |
|-:--------------------------------------|-:-------------------------------------------|
| Delegated (work or school account)     | ReportSettings.ReadWrite.All                |
| Delegated (personal Microsoft account) | Not supported.                              |
| Application                            | ReportSettings.ReadWrite.All                |

> **Note:** For delegated permissions to allow apps to update report settings on behalf of a user, the tenant administrator must have assigned the user the appropriate Azure Active Directory limited administrator role. For more details, see [Authorization for APIs to read Microsoft 365 usage reports](/graph/reportroot-authorization).

## HTTP request
<!-- { "blockType": "ignored" } --> 
```http
PATCH /admin/reportSettings
```

## Request headers

| Name          | Description                |
| :------------ | :--------------------------|
| Authorization | Bearer {token}. Required.  |
| Content-Type  | application/json. Required.|

## Request body

[!INCLUDE [table-intro](../../includes/update-property-table-intro.md)]

| Property       | Type           | Description                                 | Key       | Required  | ReadOnly  |
| -------------- | -------------- | ------------------------------------------- | --------- | --------- | --------- |
| `displayConcealedNames` | `Boolean` | `true` represent all reports will display concealed user, group, and site names. `false` represent all reports will display real user, group and site names. The value is connected to a checkbox in the M365 Admin Center Setting. | No | Yes | No |

## Response

If successful, this method returns a `204 No Content` response code. 

## Examples

The following is an example of a request that updates a tenant-level setting for Microsoft 365 reports.

### Request
The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "update_adminreportsettings"
}
-->
``` http
PATCH https://graph.microsoft.com/beta/admin/reportSettings
Content-Type: application/json
Content-length: 100

{
  "@odata.type": "#microsoft.graph.adminReportSettings",
  "displayConcealedNames": "Boolean"
}
```

### Response

<!-- {
  "blockType": "response"
} -->
```http
HTTP/1.1 204 No Content
```
