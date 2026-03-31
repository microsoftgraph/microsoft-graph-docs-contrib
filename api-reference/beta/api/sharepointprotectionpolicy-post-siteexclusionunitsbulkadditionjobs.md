---
title: "Create siteExclusionUnitsBulkAdditionJob"
description: "Create a site exclusion units bulk addition job for a SharePoint protection policy."
author: "vidula-verma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 03/26/2026
---

# Create siteExclusionUnitsBulkAdditionJob

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [site exclusion units bulk addition job](../resources/siteexclusionunitsbulkadditionjob.md) for a [SharePoint protection policy](../resources/sharepointprotectionpolicy.md).

The initial status upon creation of the job is `active`. When all the sites specified in the **siteWebUrls** property are added to the corresponding SharePoint protection policy as exclusion units, the status of the job is `completed`. If any failures occur, the status of the job is `completedWithErrors`.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "sharepointprotectionpolicy_post_siteexclusionunitsbulkadditionjobs" } -->
[!INCLUDE [permissions-table](../includes/permissions/sharepointprotectionpolicy-post-siteexclusionunitsbulkadditionjobs-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /solutions/backupRestore/sharePointProtectionPolicies/{sharePointProtectionPolicyId}/siteExclusionUnitsBulkAdditionJobs
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, include a JSON representation of the [siteExclusionUnitsBulkAdditionJob](../resources/siteexclusionunitsbulkadditionjob.md) object.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the bulk addition job. Required.|
|siteWebUrls|String collection|The URLs of SharePoint sites to be added as exclusion units. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [siteExclusionUnitsBulkAdditionJob](../resources/siteexclusionunitsbulkadditionjob.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "sharepointprotectionpolicy_post_siteexclusionunitsbulkadditionjobs"
}
-->
```http
POST https://graph.microsoft.com/beta/solutions/backupRestore/sharePointProtectionPolicies/845457dc-4bb2-4815-bef3-8628ebd1952e/siteExclusionUnitsBulkAdditionJobs
Content-Type: application/json

{
  "displayName": "Bulk exclude archived sites",
  "siteWebUrls": [
    "https://contoso.sharepoint.com/sites/Marketing",
    "https://contoso.sharepoint.com/sites/Sales",
    "https://contoso.sharepoint.com/sites/Archives"
  ]
}
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.siteExclusionUnitsBulkAdditionJob"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#solutions/backupRestore/sharePointProtectionPolicies('845457dc-4bb2-4815-bef3-8628ebd1952e')/siteExclusionUnitsBulkAdditionJobs/$entity",
  "id": "4b014d8c-71fe-4d00-a01a-31850bc5b32c",
  "displayName": "Bulk exclude archived sites",
  "status": "active",
  "siteWebUrls": [],
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
