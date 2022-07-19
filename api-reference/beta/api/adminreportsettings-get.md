---
title: "Get adminReportSettings"
description: "Get the tenant-level settings for Microsoft 365 reports."
ms.localizationpriority: medium
author: "qiwhuang"
ms.prod: "reports"
doc_type: apiPageType
---

# Get adminReportSettings

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get the tenant-level settings for Microsoft 365 reports.

> **Note:** For details about different report views and names, see [Microsoft 365 Reports in the admin center - Microsoft 365 Apps usage](/microsoft-365/admin/activity-reports/microsoft365-apps-usage).

## Permissions

One of the following permissions is required to call this API. To learn more, including how to choose permissions, see [Permissions](/graph/permissions-reference).

| Permission type                        | Permissions (from least to most privileged)           |
|:---------------------------------------|:------------------------------------------------------|
| Delegated (work or school account)     | ReportSettings.Read.All, ReportSettings.ReadWrite.All |
| Delegated (personal Microsoft account) | Not supported.                                        |
| Application                            | ReportSettings.Read.All, ReportSettings.ReadWrite.All |

> **Note:** For delegated permissions to allow apps to get report settings on behalf of a user, the tenant administrator must have assigned the user the appropriate Azure Active Directory limited administrator role. For more details, see [Authorization for APIs to read Microsoft 365 usage reports](/graph/reportroot-authorization).

## HTTP request

<!-- { "blockType": "ignored" } -->

```http
GET /admin/reportSettings
```

## Request headers

| Name          | Description               |
| :------------ | :------------------------ |
| Authorization | Bearer {token}. Required. |

## Request body

Do not supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and an [adminReportSettings](../resources/adminreportsettings.md) object in the response body.

## Examples

### Request

The following is an example of a request.
<!-- {
  "blockType": "request",
  "name": "get_adminreportsettings"
}
-->
``` http
GET https://graph.microsoft.com/beta/admin/reportSettings
```

### Response

The following is an example of the response.
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
