---
title: "crossTenantMigrationJob: cancel"
description: "Cancel a crossTenantMigrationJob."
author: "danguilliams"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "t2t-migration"
doc_type: apiPageType
---

# crossTenantMigrationJob: cancel

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Cancel a [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md). All tasks within the job that were in a `Sync` state are canceled. If the job can't be canceled, a `409 Conflict` response is returned and the migrations continue. This response happens when a migration is already in progress or is in a terminal state.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "crosstenantmigrationjob-cancel-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/crosstenantmigrationjob-cancel-permissions.md)]

[!INCLUDE [access-requirements](../includes/rbac-for-apis/rbac-crosstenantmigration-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/migrations/crossTenantMigrationJobs/{crossTenantMigrationJobId}/cancel
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `202 ACCEPTED` response code and a [crossTenantMigrationCancelResponse](../resources/crosstenantmigrationcancelresponse.md) in the response body. If not successful, a `409 CONFLICT` response code is returned, and the migration continues.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "crosstenantmigrationjobthis.cancel"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/migrations/crossTenantMigrationJobs/add14989-2b21-4001-81bd-a18b0bac1dea/cancel
```

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.crossTenantMigrationCancelResponse"
}
-->
``` http
HTTP/1.1 202 Accepted
Content-Type: application/json

{
  "id": "add14989-2b21-4001-81bd-a18b0bac1dea",
  "displayName": "Contoso_migration_job",
  "status": "pendingCancel",
  "message": "cancellation request has been accepted for the migration job"
}
```

