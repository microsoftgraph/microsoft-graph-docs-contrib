---
title: "List crossTenantMigrationJobs"
description: "Get a list of the crossTenantMigrationJob objects and their properties."
author: "danguilliams"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "t2t-migration"
doc_type: apiPageType
---

# List crossTenantMigrationJob objects

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Get a list of the [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) objects and their properties. By default 20 objects are returned. More can be retrieved through the `@odata.nextLink` url provided in the response.

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "migrationsroot-list-crosstenantmigrationjobs-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/migrationsroot-list-crosstenantmigrationjobs-permissions.md)]

[!INCLUDE [access-requirements](../includes/rbac-for-apis/rbac-crosstenantmigration-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/migrations/crossTenantMigrationJobs
```

## Optional query parameters

This method supports some of the OData query parameters to help customize the response. For general information, see [OData query parameters](/graph/query-parameters).

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|

## Request body

Don't supply a request body for this method.

## Response

If successful, this method returns a `200 OK` response code and a collection of [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) objects in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "list_crosstenantmigrationjob"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/migrations/crossTenantMigrationJobs
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#solutions/migrations/crossTenantMigrationJobs",
  "@odata.nextLink": "https://graph.microsoft.com/beta/solutions/migrations/CrossTenantMigrationJobs?$skiptoken=%5b%7B%22compositeToken%22%3a%7B%22token%22%3a%22%2bRID%3a~q1NPAJxLNS1QBAAAAAAAAA%3d%3d%23RT%3a1%23TRC%3a20%23RTD%3aHPJJmKT1uZqlBBnGyNSOBMHbIcd%5d",
  "value": [
    {
      "id": "012ec4f4-df7e-41ae-ba95-6d7ccb8f74a1",
      "displayName": "Contoso_migration_job",
      "status": "completed",
      "jobType": "migrate",
      "message": "The batch and all of its users have been successfully migrated with no failures.",
      "completeAfterDateTime": "2025-11-06T09:11:33.2115505Z",
      "sourceTenantId": "12345678-1234-1234-1234-123456789012",
      "targetTenantId": "87654321-4321-4321-4321-210987654321",
      "resourceType": "users",
      "resources": [],
      "workloads": [],
      "createdBy": "a0d9fdb1-171f-4e2b-8a82-06775ad24790",
      "createdDateTime": "2025-11-06T09:06:34.4773205Z",
      "lastUpdatedDateTime": "2025-11-06T11:26:00Z",
      "exchangeSettings": {
        "targetDeliveryDomain": "fabrikam.onmicrosoft.com",
        "sourceEndpoint": "EXOHandler"
      }
    },
    {
      "id": "0d1d9dbb-7676-4731-a601-5e8406fd7bcf",
      "displayName": "Contoso_validation_job",
      "status": "validatePassed",
      "jobType": "validate",
      "message": "Validation has completed successfully with no failures.",
      "completeAfterDateTime": "2025-05-22T17:14:52Z",
      "sourceTenantId": "12345678-1234-1234-1234-123456789012",
      "targetTenantId": "87654321-4321-4321-4321-210987654321",
      "resourceType": "users",
      "resources": [],
      "workloads": [
        "teams"
      ],
      "createdBy": "a0d9fdb1-171f-4e2b-8a82-06775ad24790",
      "createdDateTime": "2025-11-07T00:19:21.4810014Z",
      "lastUpdatedDateTime": "2025-11-07T00:22:03Z",
      "exchangeSettings": {
        "targetDeliveryDomain": "fabrikam.onmicrosoft.com",
        "sourceEndpoint": "EXOHandler"
      }
    }
  ]
}
```

