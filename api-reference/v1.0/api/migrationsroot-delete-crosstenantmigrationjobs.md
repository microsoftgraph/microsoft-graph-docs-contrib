---
title: "Delete crossTenantMigrationJob"
description: "Delete a crossTenantMigrationJob object."
author: "danguilliams"
ms.date: 09/24/2026
ms.localizationpriority: medium
ms.subservice: "t2t-migration"
doc_type: apiPageType
---

# Delete crossTenantMigrationJob

Namespace: microsoft.graph

Delete a [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) object. Delete requests are long-running and finish within 48 hours.

A [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) that is currently in progress can't be deleted. You can perform the deletion only after the [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) reaches a final state. If a [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) isn't in a final state, a `409 Conflict` response is returned.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "migrationsroot-delete-crosstenantmigrationjobs-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/migrationsroot-delete-crosstenantmigrationjobs-permissions.md)]

[!INCLUDE [access-requirements](../includes/rbac-for-apis/rbac-crosstenantmigration-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
DELETE /solutions/migrations/crossTenantMigrationJobs/{crossTenantMigrationJobId}
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `202 Accepted` response code.

If the [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) isn't in a terminal or final state, a `409 Conflict` response is returned.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "delete_crosstenantmigrationjob"
}
-->
``` http
DELETE https://graph.microsoft.com/v1.0/solutions/migrations/crossTenantMigrationJobs/add14989-2b21-4001-81bd-a18b0bac1dea
```


### Response

The following example shows the response.

<!-- {
  "blockType": "response",
  "truncated": true
}
-->
``` http
HTTP/1.1 202 Accepted
```
