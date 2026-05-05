---
title: "Get mailboxExclusionUnitsBulkAdditionJob"
description: "Get a mailbox exclusion units bulk addition job associated with an Exchange protection policy."
author: "vidula-verma"
ms.localizationpriority: medium
ms.subservice: "m365-backup-storage"
doc_type: apiPageType
ms.date: 03/26/2026
---

# Get mailboxExclusionUnitsBulkAdditionJob

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a [mailbox exclusion units bulk addition job](../resources/mailboxexclusionunitsbulkadditionjob.md) associated with an [Exchange protection policy](../resources/exchangeprotectionpolicy.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- { "blockType": "permissions", "name": "mailboxexclusionunitsbulkadditionjob_get" } -->
[!INCLUDE [permissions-table](../includes/permissions/mailboxexclusionunitsbulkadditionjob-get-permissions.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
```http
GET /solutions/backupRestore/exchangeProtectionPolicies/{exchangeProtectionPolicyId}/mailboxExclusionUnitsBulkAdditionJobs/{mailboxExclusionUnitsBulkAdditionJobId}
```

## Optional query parameters

This method supports the `$select` OData query parameter to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a [mailboxExclusionUnitsBulkAdditionJob](../resources/mailboxexclusionunitsbulkadditionjob.md) object in the response body.

## Examples

### Request

The following example shows a request.

<!-- {
  "blockType": "request",
  "name": "mailboxexclusionunitsbulkadditionjob_get"
}
-->
```http
GET https://graph.microsoft.com/beta/solutions/backupRestore/exchangeProtectionPolicies/845457dc-4bb2-4815-bef3-8628ebd1952e/mailboxExclusionUnitsBulkAdditionJobs/4b014d8c-71fe-4d00-a01a-31850bc5b32c
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
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#solutions/backupRestore/exchangeProtectionPolicies('845457dc-4bb2-4815-bef3-8628ebd1952e')/mailboxExclusionUnitsBulkAdditionJobs/$entity",
  "id": "4b014d8c-71fe-4d00-a01a-31850bc5b32c",
  "displayName": "Bulk exclude contractor mailboxes",
  "status": "completed",
  "createdDateTime": "2026-02-16T14:00:00Z",
  "lastModifiedDateTime": "2026-02-16T14:05:00Z",
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
