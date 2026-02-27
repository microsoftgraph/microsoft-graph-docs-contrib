---
title: "Get crossTenantMigrationJob"
description: "Read the properties and relationships of crossTenantMigrationJob object."
author: "danguilliams"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "t2t-migration"
doc_type: apiPageType
---

# Get crossTenantMigrationJob

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Read the properties and relationships of [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) object. Includes details of the [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) , but not details of the individual [crossTenantMigrationTasks](../resources/crosstenantmigrationtask.md) of the [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md).

[!INCLUDE [national-cloud-support](../../includes/global-only.md)]

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "crosstenantmigrationjob-get-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/crosstenantmigrationjob-get-permissions.md)]

[!INCLUDE [access-requirements](../includes/rbac-for-apis/rbac-crosstenantmigration-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
GET /solutions/migrations/crossTenantMigrationJobs/{crossTenantMigrationJobId}
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

If successful, this method returns a `200 OK` response code and a [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "get_crosstenantmigrationjob"
}
-->
``` http
GET https://graph.microsoft.com/beta/solutions/migrations/crossTenantMigrationJobs/012ec4f4-df7e-41ae-ba95-6d7ccb8f74a1
```


### Response

The following example shows the response.
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
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#solutions/migrations/crossTenantMigrationJobs/$entity",
  "id": "012ec4f4-df7e-41ae-ba95-6d7ccb8f74a1",
  "displayName": "Contoso_user_migration",
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
    "targetDeliveryDomain": "contoso.onmicrosoft.com",
    "sourceEndpoint": "EXOHandler"
  }
}
```

