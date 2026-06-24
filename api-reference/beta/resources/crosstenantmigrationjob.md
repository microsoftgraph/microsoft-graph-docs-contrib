---
title: "crossTenantMigrationJob resource type"
description: "Represents a cross-tenant migration batch job that migrates user data from a source tenant to a target tenant."
author: "danguilliams"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "t2t-migration"
doc_type: resourcePageType
---

# crossTenantMigrationJob resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a [cross-tenant migration](../resources/crosstenantmigration.md) batch job that migrates user data from a source tenant to a target tenant. After you [create](../api/migrationsroot-post-crosstenantmigrationjobs.md) a job, call [validate](../api/crosstenantmigrationjob-validate.md) to verify tenant and resource configuration, then call [migrate](../api/crosstenantmigrationjob-migrate.md) to begin the actual migration.

Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/migrationsroot-list-crosstenantmigrationjobs.md)|[crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) collection|Get a list of the crossTenantMigrationJob objects and their properties.|
|[Create](../api/migrationsroot-post-crosstenantmigrationjobs.md)|[crossTenantMigrationJob](../resources/crosstenantmigrationjob.md)|Create a new [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) object.|
|[Get](../api/crosstenantmigrationjob-get.md)|[crossTenantMigrationJob](../resources/crosstenantmigrationjob.md)|Read the properties and relationships of a [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) object.|
|[Update](../api/crosstenantmigrationjob-update.md)|[crossTenantMigrationJob](../resources/crosstenantmigrationjob.md)|Update the properties of a [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) object.|
|[Delete](../api/migrationsroot-delete-crosstenantmigrationjobs.md)|None|Delete a crossTenantMigrationJob object.|
|[cancel](../api/crosstenantmigrationjob-cancel.md)|[crossTenantMigrationCancelResponse](../resources/crosstenantmigrationcancelresponse.md)|Cancel a [cross-tenant migration job](../resources/crosstenantmigrationjob.md).|
|[migrate](../api/crosstenantmigrationjob-migrate.md)|[crossTenantMigrationJob](../resources/crosstenantmigrationjob.md)|Migrate a [cross-tenant migration job](../resources/crosstenantmigrationjob.md) asynchronously.|
|[validate](../api/crosstenantmigrationjob-validate.md)|[crossTenantMigrationJob](../resources/crosstenantmigrationjob.md)|Validate a [cross-tenant migration job](../resources/crosstenantmigrationjob.md) asynchronously.|
|[List users](../api/crosstenantmigrationjob-list-users.md)|[crossTenantMigrationTask](../resources/crosstenantmigrationtask.md) collection|List the users in the migration and the status of their migration.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|completeAfterDateTime|DateTimeOffset|Date and time after which the migration should be performed. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`.|
|createdBy|String|User principal name (UPN) of the user who created the job. Read-only.|
|createdDateTime|DateTimeOffset|When the job was created. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`. Read-only.|
|displayName|String|Display name of the job. Must be unique per tenant.|
|exchangeSettings|[exchangeOnlineCrossTenantMigrationSettings](../resources/exchangeonlinecrosstenantmigrationsettings.md)|Settings to use for migration of Exchange workload. Nullable.|
|id|String|Unique identifier for the migration job. Read-only.|
|jobType|crossTenantMigrationJobType|Type of the migration job. The possible values are: `validate` (only validation is performed, no migration), `migrate` (content is migrated).|
|lastUpdatedDateTime|DateTimeOffset|When this migration job was last updated. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`. Read-only.|
|message|String|Status message of the migration job. Nullable. Read-only.|
|resources|String collection|IDs (GUID) of the resources that are migrated with the migration job.|
|resourceType|String|Type of resource being migrated. Only `Users` is currently supported.|
|sourceTenantId|String|ID (GUID) of the tenant that content is migrated from.|
|status|crossTenantMigrationJobStatus|Most recent status of the migration job. Read-only. The possible values are: `submitted`, `approved`, `processing`, `cuttingOver`, `inProgress`, `completed`, `completedWithErrors`, `failed`, `cancelled`, `pendingCancel`, `adminActionRequired`, `validateSubmitted`, `validateProcessing`, `validateInProgress`, `validatePassed`, `validateFailed`, `pendingDelete`, and `deleted`.|
|targetTenantId|String|ID of the tenant that content is migrated to. Read-only.|
|workloads|String collection|Workloads to migrate. Supported workloads are `Teams`, `Exchange`, and `ODSP` (OneDrive and SharePoint).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|users|[crossTenantMigrationTask](../resources/crosstenantmigrationtask.md) collection|Details and status of the users migrated in this migration job.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.crossTenantMigrationJob",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.crossTenantMigrationJob",
  "id": "String (identifier)",
  "displayName": "String",
  "jobType": "String",
  "sourceTenantId": "String",
  "targetTenantId": "String",
  "completeAfterDateTime": "String (timestamp)",
  "status": "String",
  "message": "String",
  "createdDateTime": "String (timestamp)",
  "createdBy": "String",
  "lastUpdatedDateTime": "String (timestamp)",
  "exchangeSettings": {
    "@odata.type": "microsoft.graph.exchangeOnlineCrossTenantMigrationSettings"
  },
  "workloads": [
    "String"
  ],
  "resourceType": "String",
  "resources": [
    "String"
  ]
}
```

