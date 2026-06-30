---
title: "crossTenantMigrationJob: validate"
description: "Validate the configuration of a crossTenantMigrationJob asynchronously."
author: "danguilliams"
ms.date: 05/05/2026
ms.localizationpriority: medium
ms.subservice: "t2t-migration"
doc_type: apiPageType
---

# crossTenantMigrationJob: validate

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Validate the configuration of a [cross-tenant migration job](../resources/crosstenantmigrationjob.md) asynchronously. This action doesn't migrate any content, but goes through validation for the specified workloads to find any errors or misconfigurations that affect an actual migration job. The job must be in a `submitted` or `validateFailed` status before you can call this action.

This action is asynchronous. After you call the **validate** API, poll the [Get crossTenantMigrationJob](../api/crosstenantmigrationjob-get.md) endpoint to check for a terminal status of `validatePassed` or `validateFailed`.

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "crosstenantmigrationjob-validate-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/crosstenantmigrationjob-validate-permissions.md)]

[!INCLUDE [access-requirements](../includes/rbac-for-apis/rbac-crosstenantmigration-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/migrations/crossTenantMigrationJobs/{crossTenantMigrationJobId}/validate
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
| `409 Conflict` | The job isn't in a valid status for validation. The job must be in `submitted` or `validateFailed` status. |

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "crosstenantmigrationjobthis.validate"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/migrations/crossTenantMigrationJobs/add14989-2b21-4001-81bd-a18b0bac1dea/validate
```

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
  "status": "validateSubmitted",
  "jobType": "validate",
  "message": "Validation job has been submitted successfully",
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
