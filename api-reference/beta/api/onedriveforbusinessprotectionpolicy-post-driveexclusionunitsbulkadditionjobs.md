---
title: "Create driveExclusionUnitsBulkAdditionJob"
description: "Create a drive exclusion units bulk addition job for a OneDrive for work or school protection policy."
author: "vidula-verma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 03/26/2026
---

# Create driveExclusionUnitsBulkAdditionJob

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [drive exclusion units bulk addition job](../resources/driveexclusionunitsbulkadditionjob.md) for a [OneDrive for work or school protection policy](../resources/onedriveforbusinessprotectionpolicy.md).

The initial status upon creation of the job is `active`. When all the **drives** are added to the corresponding OneDrive for work or school protection policy as exclusion units, the status of the job is `completed`. If any failures occur, the status of the job is `completedWithErrors`.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "onedriveforbusinessprotectionpolicy_post_driveexclusionunitsbulkadditionjobs" } -->
[!INCLUDE [permissions-table](../includes/permissions/onedriveforbusinessprotectionpolicy-post-driveexclusionunitsbulkadditionjobs-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /solutions/backupRestore/oneDriveForBusinessProtectionPolicies/{oneDriveForBusinessProtectionPolicyId}/driveExclusionUnitsBulkAdditionJobs
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, include a JSON representation of the [driveExclusionUnitsBulkAdditionJob](../resources/driveexclusionunitsbulkadditionjob.md) object.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the bulk addition job. Required.|
|drives|String collection|The email addresses or user principal names of the users whose OneDrive drives are to be added as exclusion units. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [driveExclusionUnitsBulkAdditionJob](../resources/driveexclusionunitsbulkadditionjob.md) object in the response body.

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "onedriveforbusinessprotectionpolicy_post_driveexclusionunitsbulkadditionjobs"
}
-->
```http
POST https://graph.microsoft.com/beta/solutions/backupRestore/oneDriveForBusinessProtectionPolicies/845457dc-4bb2-4815-bef3-8628ebd1952e/driveExclusionUnitsBulkAdditionJobs
Content-Type: application/json

{
  "displayName": "Bulk exclude contractor drives",
  "drives": [
    "contractor1@contoso.com",
    "contractor2@contoso.com",
    "contractor3@contoso.com"
  ]
}
```

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/onedriveforbusinessprotectionpolicy-post-driveexclusionunitsbulkadditionjobs-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.driveExclusionUnitsBulkAdditionJob"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#solutions/backupRestore/oneDriveForBusinessProtectionPolicies('845457dc-4bb2-4815-bef3-8628ebd1952e')/driveExclusionUnitsBulkAdditionJobs/$entity",
  "id": "4b014d8c-71fe-4d00-a01a-31850bc5b32c",
  "displayName": "Bulk exclude contractor drives",
  "status": "active",
  "drives": [
    "contractor1@contoso.com",
    "contractor2@contoso.com",
    "contractor3@contoso.com"
  ],
  "createdDateTime": "2026-02-16T14:00:00Z",
  "lastModifiedDateTime": "2026-02-16T14:00:00Z",
  "createdBy": {
    "user": {
      "id": "845457dc-4bb2-4815-bef3-8628ebd1952e"
    }
  },
  "lastModifiedBy": {
    "user": {
      "id": "845457dc-4bb2-4815-bef3-8628ebd1952e"
    }
  }
}
```
