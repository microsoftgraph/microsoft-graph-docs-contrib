---
title: "crossTenantMigrationTask resource type"
description: "Represents a unit of user data to migrate as part of a cross-tenant migration job."
author: "danguilliams"
ms.date: 09/24/2026
ms.localizationpriority: medium
ms.subservice: "t2t-migration"
doc_type: resourcePageType
---

# crossTenantMigrationTask resource type

Namespace: microsoft.graph

Represents a unit of user data to migrate as part of a [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md).

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/crosstenantmigrationjob-list-users.md)|[crossTenantMigrationTask](../resources/crosstenantmigrationtask.md) collection|Get a list of the [crossTenantMigrationTasks](../resources/crosstenantmigrationtask.md) for users in a [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md).|
|[Get](../api/crosstenantmigrationtask-get.md)|[crossTenantMigrationTask](../resources/crosstenantmigrationtask.md)|Read the properties and relationships of a [crossTenantMigrationTask](../resources/crosstenantmigrationtask.md) object that provides details about the migration task for a single user in a [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md).|
|[Cancel](../api/crosstenantmigrationtask-cancel.md)|[crossTenantMigrationCancelResponse](../resources/crosstenantmigrationcancelresponse.md)|Cancel a specific [crossTenantMigrationTask](../resources/crosstenantmigrationtask.md) for a user in a [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md).|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|currentStatus|[crossTenantMigrationServiceStatusDetails](../resources/crosstenantmigrationservicestatusdetails.md) collection|Most recent status of this migration task.|
|id|String|ID (GUID) of the resource that's migrated with this task. Inherited from [entity](../resources/entity.md).|
|lastUpdatedDateTime|DateTimeOffset|Date and time when the task was last updated. The timestamp type represents date and time information using ISO 8601 format and is always in UTC. For example, midnight UTC on Jan 1, 2024, is `2024-01-01T00:00:00Z`.|
|taskType|String|Type of migration task. Currently, only `Users` is supported.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.crossTenantMigrationTask",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.crossTenantMigrationTask",
  "id": "String (identifier)",
  "taskType": "String",
  "lastUpdatedDateTime": "String (timestamp)",
  "currentStatus": [
    {
      "@odata.type": "microsoft.graph.crossTenantMigrationServiceStatusDetails"
    }
  ]
}
```
