---
title: "accessDriftReport: generateDownloadUri"
description: "Generate a time-limited download URI for the latest access drift report."
author: "suhanigupta"
ms.date: 10/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: apiPageType
---

# accessDriftReport: generateDownloadUri

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Generate a time-limited download URI for the latest tenant-wide access drift report. The returned user-delegation SAS URI targets the single-file Parquet report, includes all catalogs and resources for the specified resource type, and is valid for 24 hours.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "accessdriftreport-generatedownloaduri-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/accessdriftreport-generatedownloaduri-permissions.md)]

[!INCLUDE [rbac-access-drift-report-read](../includes/rbac-for-apis/rbac-access-drift-report-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /identityGovernance/insights/accessDriftReport/microsoft.graph.generateDownloadUri
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
|request|[accessDriftReportRequest](../resources/accessdriftreportrequest.md)|Required. The access drift report request. The request must include the **resourceType** and **reportFormat** properties. Use `parquet` for **reportFormat** because the generated URI targets the single-file Parquet report. This action doesn't support filtering by catalog or resource. To retrieve catalog-scoped access drift data, use the access drift summary and details APIs with a catalog filter.|

## Response

If successful, this action returns a `200 OK` response code and an [accessDriftReport](../resources/accessdriftreport.md) in the response body.

If the requested report has not been generated yet, this action returns a `202 Accepted` response code with no response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "accessdriftreport_generatedownloaduri"
}
-->
``` http
POST https://graph.microsoft.com/beta/identityGovernance/insights/accessDriftReport/microsoft.graph.generateDownloadUri
Content-Type: application/json

{
  "request": {
    "resourceType": "application",
    "reportFormat": "parquet"
  }
}
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.accessDriftReport"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.accessDriftReport",
  "id": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
  "downloadUri": "https://storage.example.com/reports/access-drift-report.parquet?sv=2025-01-05&sig=aBcDeFgH",
  "expiresAt": "2026-08-29T16:00:00Z",
  "resourceType": "application"
}
```
