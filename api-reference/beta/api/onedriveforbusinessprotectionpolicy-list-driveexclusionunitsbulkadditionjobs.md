---
title: "List driveExclusionUnitsBulkAdditionJobs"
description: "Get a list of drive exclusion units bulk addition jobs associated with a OneDrive for work or school protection policy."
author: "vidula-verma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 03/26/2026
---

# List driveExclusionUnitsBulkAdditionJobs

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of [drive exclusion units bulk addition jobs](../resources/driveexclusionunitsbulkadditionjob.md) associated with a [OneDrive for work or school protection policy](../resources/onedriveforbusinessprotectionpolicy.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "onedriveforbusinessprotectionpolicy_list_driveexclusionunitsbulkadditionjobs" } -->
[!INCLUDE [permissions-table](../includes/permissions/onedriveforbusinessprotectionpolicy-list-driveexclusionunitsbulkadditionjobs-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /solutions/backupRestore/oneDriveForBusinessProtectionPolicies/{oneDriveForBusinessProtectionPolicyId}/driveExclusionUnitsBulkAdditionJobs
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a list of [driveExclusionUnitsBulkAdditionJob](../resources/driveexclusionunitsbulkadditionjob.md) objects in the response body. The `drives` values are omitted from the response body to limit the response size.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "onedriveforbusinessprotectionpolicy_list_driveexclusionunitsbulkadditionjobs"
}
-->
```http
GET https://graph.microsoft.com/beta/solutions/backupRestore/oneDriveForBusinessProtectionPolicies/845457dc-4bb2-4815-bef3-8628ebd1952e/driveExclusionUnitsBulkAdditionJobs
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "Collection(microsoft.graph.driveExclusionUnitsBulkAdditionJob)"
}
-->
```http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#solutions/backupRestore/oneDriveForBusinessProtectionPolicies('845457dc-4bb2-4815-bef3-8628ebd1952e')/driveExclusionUnitsBulkAdditionJobs",
  "value": [
    {
      "id": "4b014d8c-71fe-4d00-a01a-31850bc5b32c",
      "displayName": "Bulk exclude contractor drives",
      "status": "completed",
      "createdDateTime": "2026-02-16T14:00:00Z",
      "lastModifiedDateTime": "2026-02-16T14:05:00Z"
    },
    {
      "id": "5c024d8c-71fe-4d00-a01a-31850bc5b43d",
      "displayName": "Exclude test accounts",
      "status": "completed",
      "createdDateTime": "2026-02-15T10:00:00Z",
      "lastModifiedDateTime": "2026-02-15T10:03:00Z"
    }
  ]
}
```
