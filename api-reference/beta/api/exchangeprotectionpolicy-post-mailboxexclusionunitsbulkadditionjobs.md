---
title: "Create mailboxExclusionUnitsBulkAdditionJob"
description: "Create a mailbox exclusion units bulk addition job for an Exchange protection policy."
author: "vidula-verma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 03/26/2026
---

# Create mailboxExclusionUnitsBulkAdditionJob

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a [mailbox exclusion units bulk addition job](../resources/mailboxexclusionunitsbulkadditionjob.md) for an [Exchange protection policy](../resources/exchangeprotectionpolicy.md).

The initial status upon creation of the job is `active`. When all the **mailboxes** are added to the corresponding Exchange protection policy as exclusion units, the status of the job is `completed`. If any failures occur, the status of the job is `completedWithErrors`.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "exchangeprotectionpolicy_post_mailboxexclusionunitsbulkadditionjobs" } -->
[!INCLUDE [permissions-table](../includes/permissions/exchangeprotectionpolicy-post-mailboxexclusionunitsbulkadditionjobs-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
POST /solutions/backupRestore/exchangeProtectionPolicies/{exchangeProtectionPolicyId}/mailboxExclusionUnitsBulkAdditionJobs
```

## Optional query parameters

This method supports the `$select`, `$filter`, `$count`, and `$top` OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, include a JSON representation of the [mailboxExclusionUnitsBulkAdditionJob](../resources/mailboxexclusionunitsbulkadditionjob.md) object.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|The display name of the bulk addition job. Required.|
|mailboxes|String collection|The email addresses of the mailboxes to be added as exclusion units. Required.|

## Response

If successful, this method returns a `201 Created` response code and a [mailboxExclusionUnitsBulkAdditionJob](../resources/mailboxexclusionunitsbulkadditionjob.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "exchangeprotectionpolicy_post_mailboxexclusionunitsbulkadditionjobs"
}
-->
```http
POST https://graph.microsoft.com/beta/solutions/backupRestore/exchangeProtectionPolicies/845457dc-4bb2-4815-bef3-8628ebd1952e/mailboxExclusionUnitsBulkAdditionJobs
Content-Type: application/json

{
  "displayName": "Bulk exclude contractor mailboxes",
  "mailboxes": [
    "contractor1@contoso.com",
    "contractor2@contoso.com",
    "contractor3@contoso.com"
  ]
}
```

### Response

The following example shows the response.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.mailboxExclusionUnitsBulkAdditionJob"
}
-->
```http
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#solutions/backupRestore/exchangeProtectionPolicies('845457dc-4bb2-4815-bef3-8628ebd1952e')/mailboxExclusionUnitsBulkAdditionJobs/$entity",
  "id": "4b014d8c-71fe-4d00-a01a-31850bc5b32c",
  "displayName": "Bulk exclude contractor mailboxes",
  "status": "active",
  "mailboxes": [],
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
