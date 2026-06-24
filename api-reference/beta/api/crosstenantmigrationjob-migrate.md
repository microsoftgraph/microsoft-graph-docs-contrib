---
title: "crossTenantMigrationJob: migrate"
description: "Migrate a crossTenantMigrationJob asynchronously."
author: "danguilliams"
ms.date: 05/05/2026
ms.localizationpriority: medium
ms.subservice: "t2t-migration"
doc_type: apiPageType
---

# crossTenantMigrationJob: migrate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Migrate a [cross-tenant migration job](../resources/crosstenantmigrationjob.md) asynchronously. The job must pass validation before migration can start. After a job is created by using the [Create crossTenantMigrationJob](../api/migrationsroot-post-crosstenantmigrationjobs.md) method and validated by using the [validate](../api/crosstenantmigrationjob-validate.md) action, call this action to start the migration of user data from the source tenant to the target tenant for the specified workloads. Validation results expire after seven days; if expired, revalidate the job before you call the **migrate** API.

This action is asynchronous. After you call the **migrate** API, poll the [Get crossTenantMigrationJob](../api/crosstenantmigrationjob-get.md) endpoint to check for a terminal status of `completed`, `completedWithErrors`, or `failed`.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "crosstenantmigrationjob-migrate-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/crosstenantmigrationjob-migrate-permissions.md)]

[!INCLUDE [access-requirements](../includes/rbac-for-apis/rbac-crosstenantmigration-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/migrations/crossTenantMigrationJobs/{crossTenantMigrationJobId}/migrate
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this action returns a `200 OK` response code and a [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) in the response body.

This method can also return the following error codes in the response body.

| Status code | Description |
|:---|:---|
| `404 Not Found` | The specified **crossTenantMigrationJob** wasn't found. |
| `409 Conflict` | The job isn't in a valid status for migration. The job must be in `validatePassed`, `failed`, or `completedWithErrors` status. |
| `409 Conflict` | The validation results expired (more than seven days ago). Revalidate the job before you call the **migrate** API. |

## Examples

### Request

The following example shows a request.

# [HTTP](#tab/http)
<!-- {
  "blockType": "request",
  "name": "crosstenantmigrationjobthis.migrate"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/migrations/crossTenantMigrationJobs/add14989-2b21-4001-81bd-a18b0bac1dea/migrate
```

# [C#](#tab/csharp)
[!INCLUDE [sample-code](../includes/snippets/csharp/crosstenantmigrationjobthismigrate-csharp-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Go](#tab/go)
[!INCLUDE [sample-code](../includes/snippets/go/crosstenantmigrationjobthismigrate-go-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Java](#tab/java)
[!INCLUDE [sample-code](../includes/snippets/java/crosstenantmigrationjobthismigrate-java-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [JavaScript](#tab/javascript)
[!INCLUDE [sample-code](../includes/snippets/javascript/crosstenantmigrationjobthismigrate-javascript-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PHP](#tab/php)
[!INCLUDE [sample-code](../includes/snippets/php/crosstenantmigrationjobthismigrate-php-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [PowerShell](#tab/powershell)
[!INCLUDE [sample-code](../includes/snippets/powershell/crosstenantmigrationjobthismigrate-powershell-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

# [Python](#tab/python)
[!INCLUDE [sample-code](../includes/snippets/python/crosstenantmigrationjobthismigrate-python-snippets.md)]
[!INCLUDE [sdk-documentation](../includes/snippets/snippets-sdk-documentation-link.md)]

---

### Response

The following example shows the response.
>**Note:** The response object shown here might be shortened for readability.
<!-- {
  "blockType": "response",
  "truncated": true,
  "@odata.type": "microsoft.graph.crossTenantMigrationJob"
}
-->
``` http
HTTP/1.1 200 OK
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#microsoft.graph.crossTenantMigrationJob",
  "id": "add14989-2b21-4001-81bd-a18b0bac1dea",
  "displayName": "Contoso_migration_job",
  "status": "processing",
  "jobType": "migrate",
  "message": "Migration job has been submitted successfully",
  "completeAfterDateTime": "2026-05-22T17:14:52Z",
  "sourceTenantId": "12345678-1234-1234-1234-123456789012",
  "targetTenantId": "87654321-4321-4321-4321-210987654321",
  "resourceType": "users",
  "resources": [],
  "workloads": [
    "Teams",
    "Exchange",
    "ODSP"
  ],
  "createdBy": "admin@fabrikam.onmicrosoft.com",
  "createdDateTime": "2026-05-04T20:55:10.5427196Z",
  "lastUpdatedDateTime": "2026-05-04T20:55:10Z",
  "exchangeSettings": {
    "targetDeliveryDomain": "fabrikam.com",
    "sourceEndpoint": "EXOHandler"
  }
}
```
