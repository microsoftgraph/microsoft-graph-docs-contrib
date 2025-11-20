---
title: "Create crossTenantMigrationJob"
description: "Create a new crossTenantMigrationJob."
author: "danguilliams"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "t2t-migration"
doc_type: apiPageType
---

# Create crossTenantMigrationJob

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Create a new [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md).

## Permissions

Choose the permission or permissions marked as least privileged for this API. Use a higher privileged permission or permissions [only if your app requires it](/graph/permissions-overview#best-practices-for-using-microsoft-graph-permissions). For details about delegated and application permissions, see [Permission types](/graph/permissions-overview#permission-types). To learn more about these permissions, see the [permissions reference](/graph/permissions-reference).

<!-- {
  "blockType": "permissions",
  "name": "migrationsroot-post-crosstenantmigrationjobs-permissions"
}
-->
[!INCLUDE [permissions-table](../includes/permissions/migrationsroot-post-crosstenantmigrationjobs-permissions.md)]

[!INCLUDE [access-requirements](../includes/rbac-for-apis/rbac-crosstenantmigration-apis.md)]

## HTTP request

<!-- {
  "blockType": "ignored"
}
-->
``` http
POST /solutions/migrations/crossTenantMigrationJobs
```

## Request headers

|Name|Description|
|:---|:---|
|Authorization|Bearer {token}. Required. Learn more about [authentication and authorization](/graph/auth/auth-concepts).|
|Content-Type|application/json. Required.|

## Request body

In the request body, supply a JSON representation of the [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) object.

You can specify the following properties when creating a **crossTenantMigrationJob**.

|Property|Type|Description|
|:---|:---|:---|
|displayName|String|Name of the crossTenantMigrationJob. Must be unique per tenant. Required.|
|completeAfterDateTime|DateTimeOffset|Time when the migration batch should begin processing. Required.|
|sourceTenantId|String|Tenant ID (GUID) of the source tenant for the migration. Required.|
|exchangeSettings|[exchangeOnlineCrossTenantMigrationSettings](../resources/exchangeonlinecrosstenantmigrationsettings.md)|Settings for Exchange Online migrations. Optional, but required if Exchange is a specified workload.|
|workloads|String collection|Workloads to migrate on the resources. Optional. If excluded, all available workloads are included in the migration.|
|resourceType|String|Type of resources to migrate. Only `Users` is supported at this time. Required.|
|resources|String collection|Object IDs (GUID) of the resources to migrate. Limit of 2,000 resources per [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) Required.|



## Response

If successful, this method returns a `201 Created` response code and a [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) object in the response body.

## Examples

### Request

The following example shows a request.
<!-- {
  "blockType": "request",
  "name": "create_crosstenantmigrationjob_from_"
}
-->
``` http
POST https://graph.microsoft.com/beta/solutions/migrations/crossTenantMigrationJobs
Content-Type: application/json

{
  "displayName": "xtmigration_user_req_1",
  "completeAfterDateTime": "2024-12-09T22:48:03.092Z",
  "sourceTenantId": "12345678-1234-1234-1234-123456789012",
  "exchangeSettings": {
    "targetDeliveryDomain": "xtmigration.onmicrosoft.com",
    "sourceEndpoint": "sampleEndpointText"
  },
  "resources": [
    "4dd550d9-9ea2-4e71-a16b-60b1d1c4f506",
    "63f15b55-f61a-49cb-a599-2e3d233afb2c",
    "41d94bac-3a53-47d6-a89e-583830104e15"
  ],
  "resourceType": "Users",
  "workloads": [
    "Teams",
    "Exchange",
    "ODSP"
  ]
}
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
HTTP/1.1 201 Created
Content-Type: application/json

{
  "@odata.context": "https://graph.microsoft.com/beta/$metadata#solutions/migrations/crossTenantMigrationJobs/$entity",
  "id": "add14989-2b21-4001-81bd-a18b0bac1dea",
  "displayName": "Contoso_migration_job",
  "jobType" : "migrate",
  "status": "Submitted",
  "message": "",
  "completeAfterDateTime": "2023-12-17T20:38:04.101Z",
  "sourceTenantId": "12345678-1234-1234-1234-123456789012",
  "exchangeSettings": {
    "targetDeliveryDomain": "fabirkam.onmicrosoft.com",
    "sourceEndpoint": "sampleEndpointText"
  },
  "resourceType":"Users",
  "workloads": ["Teams", "Exchange", "ODSP"],
  "createdBy": "66055c84-3b6e-4d14-9b9e-4c7f4105962e",
  "createdDateTime": "2025-11-14T20:55:10.5427196Z",
  "lastUpdatedDateTime": "2025-11-14T20:55:10.5427196Z"
}
```

