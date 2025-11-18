---
title: "crossTenantMigrationJob resource type"
description: "A Cross Tenant Migration Job"
author: "danguilliams"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "t2t-migration"
doc_type: resourcePageType
---

# crossTenantMigrationJob resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A Cross Tenant Migration Job. Represents a long running job that migrates user data from a source tenant to a target tenant. 


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/migrationsroot-list-crosstenantmigrationjobs.md)|[crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) collection|Get a list of the crossTenantMigrationJob objects and their properties.|
|[Create](../api/migrationsroot-post-crosstenantmigrationjobs.md)|[crossTenantMigrationJob](../resources/crosstenantmigrationjob.md)|Create a new crossTenantMigrationJob object|
|[Get](../api/crosstenantmigrationjob-get.md)|[crossTenantMigrationJob](../resources/crosstenantmigrationjob.md)|Read the properties and relationships of [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) object.|
|[Update](../api/crosstenantmigrationjob-update.md)|[crossTenantMigrationJob](../resources/crosstenantmigrationjob.md)|Update the properties of a crossTenantMigrationJob object|
|[Delete](../api/migrationsroot-delete-crosstenantmigrationjobs.md)|None|Delete a crossTenantMigrationJob object.|
|[cancel](../api/crosstenantmigrationjob-cancel.md)|[crossTenantMigrationCancelResponse](../resources/crosstenantmigrationcancelresponse.md)|Cancels a Cross tenant Migration Job.|
|[validate](../api/crosstenantmigrationjob-validate.md)|[crossTenantMigrationJob](../resources/crosstenantmigrationjob.md)|Validate a Cross Tenant Migration Job|
|[List users](../api/crosstenantmigrationjob-list-users.md)|[crossTenantMigrationTask](../resources/crosstenantmigrationtask.md) collection|List the users being migrated and the status of their migration|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|completeAfterDateTime|DateTimeOffset|DateTime after which the migration should be performed|
|createdBy|String|ID of the user that created the job|
|createdDateTime|DateTimeOffset|When the job what created|
|displayName|String|Display name of the job. Must be unique per tenant|
|exchangeSettings|[exchangeOnlineCrossTenantMigrationSettings](../resources/exchangeonlinecrosstenantmigrationsettings.md)|Settings to use for migration of Exchange workload|
|ID|String|ID (GUID) of the migration job|
|jobType|crossTenantMigrationJobType|Type of the migration job. The possible values are: `validate` (only validation is performed, no migration), `migrate` (Content is migrated)|
|lastUpdatedDateTime|DateTimeOffset|When this migration job was last updated|
|message|String|Status message of the migration job|
|resources|String collection|IDs (GUID) of the resources being migrated with the migration job|
|resourceType|String|Type of resource being migrated. Only `Users` is currently supported|
|sourceTenantId|String|ID (GUID) of the tenant that content is being migrated from|
|status|crossTenantMigrationJobStatus|Most recent status of the migration job. The possible values are: `submitted`, `approved`, `processing`, `cuttingOver`, `inProgress`, `completed`, `completedWithErrors`, `failed`, `cancelled`, `pendingCancel`, `adminActionRequired`, `validateSubmitted`, `validateProcessing`, `validateInProgress`, `validatePassed`, `validateFailed`, `pendingDelete`, and `deleted`|
|targetTenantId|String|ID of the tenant that content is being migrated to|
|workloads|String collection|Workloads to migrate. Supported workloads are `Teams`, `Exchange`, and `ODSP` (OneDrive/SharePoint)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|users|[crossTenantMigrationTask](../resources/crosstenantmigrationtask.md) collection|Details and status of the users being migrated in this migration job|

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

