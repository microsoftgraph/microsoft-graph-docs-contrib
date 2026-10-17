---
title: "accessDriftReport: downloadFile"
description: "Download the latest access drift report file directly."
author: "suhanigupta"
ms.date: 10/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# accessDriftReport: downloadFile

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Download the latest tenant-wide access drift report file directly. The response streams the raw file bytes without exposing a SAS URI. The report includes all catalogs and resources for the specified resource type.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "accessdriftreport-downloadfile-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/accessdriftreport-downloadfile-permissions.md)]

[!INCLUDE [rbac-access-drift-report-read](../includes/rbac-for-apis/rbac-access-drift-report-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/insights/accessDriftReport/microsoft.graph.downloadFile
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the parameters.

|Parameter|Type|Description|
|:---|:---|:---|
|request|[accessDriftReportRequest](../resources/accessdriftreportrequest.md)|Required. The access drift report request. The request must include the **resourceType** and **reportFormat** properties. This action doesn't support filtering by catalog or resource. To retrieve catalog-scoped access drift data, use the access drift summary and details APIs with a catalog filter.|

## Response

If successful, this action returns a `200 OK` response code and the report file content in the response body. The response sets `Content-Disposition: attachment` with the filename.

If the requested report has not been generated yet, this action returns a `202 Accepted` response code with no response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "accessdriftreport_downloadfile"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/insights/accessDriftReport/microsoft.graph.downloadFile
Content-Type: application/json

{
  "request": {
    "resourceType": "group",
    "reportFormat": "csv"
  }
}
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "stream"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: text/csv
Content-Disposition: attachment; filename="accessDriftReport_group_generatedOn_2026-10-09_tenantId_00000000-0000-0000-0000-000000000001.csv"

resourceId,resourceName,resourceType,catalogIdentifier,catalogName,driftType,identityId,principalName
grp-hr-001,HR Team,group,cat-002,HR catalog,unauthorized,user-001,jane@contoso.com
```
