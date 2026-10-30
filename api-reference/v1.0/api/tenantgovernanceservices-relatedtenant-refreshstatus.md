---
title: "relatedTenant: refreshStatus"
description: "Get the status of the most recent related tenants refresh operation."
author: "akhil-potturi"
ms.date: 09/23/2026
ai-usage: ai-assisted
ms.custom: msecd-doc-authoring-1028
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: apiPageType
---

# relatedTenant: refreshStatus

Namespace: microsoft.graph

Get the status of the most recent [related tenants refresh operation](../api/tenantgovernanceservices-relatedtenant-refresh.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "tenantgovernanceservices_relatedtenant_refreshstatus" } -->
[!INCLUDE [permissions-table](../includes/permissions/tenantgovernanceservices-relatedtenant-refreshstatus-permissions.md)]

[!INCLUDE [rbac-tenant-governance-apis-read](../includes/rbac-for-apis/rbac-tenant-governance-apis-read.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /directory/tenantGovernance/relatedTenants/refreshStatus
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this function returns a `200 OK` response code and a [relatedTenantsRefreshStatus](../resources/tenantgovernanceservices-relatedtenantsrefreshstatus.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "relatedtenantthis.refreshstatus"
}
-->
``` http
GET https://graph.microsoft.com/v1.0/directory/tenantGovernance/relatedTenants/refreshStatus
```

### Response

The following example shows the response.
> **Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "name": "relatedtenantthis.refreshstatus",
  "truncated": true,
  "@odata.type": "microsoft.graph.relatedTenantsRefreshStatus"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.type": "#microsoft.graph.relatedTenantsRefreshStatus",
  "isFirstRefresh": false,
  "mostRecentRefreshDateTime": "2026-09-14T18:30:00Z",
  "mostRecentRefreshRequestStatus": "Completed"
}
```
