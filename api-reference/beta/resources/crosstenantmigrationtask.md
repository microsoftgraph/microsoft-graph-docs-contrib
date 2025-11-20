---
title: "crossTenantMigrationTask resource type"
description: "A Cross Tenant Migration Task. "
author: "danguilliams"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "t2t-migration"
doc_type: resourcePageType
---

# crossTenantMigrationTask resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a [crossTenantMigrationTask](../resources/crosstenantmigrationtask.md), which is a component of a [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md). A [crossTenantMigrationTask](../resources/crosstenantmigrationtask.md) is scoped to a particular unit to be migrated, such as a User. 


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/crosstenantmigrationjob-list-users.md)|[crossTenantMigrationTask](../resources/crosstenantmigrationtask.md) collection|Get a list of the crossTenantMigrationTask objects and their properties.|
|[Get](../api/crosstenantmigrationtask-get.md)|[crossTenantMigrationTask](../resources/crosstenantmigrationtask.md)|Read the properties and relationships of [crossTenantMigrationTask](../resources/crosstenantmigrationtask.md) object.|
|[cancel](../api/crosstenantmigrationtask-cancel.md)|[crossTenantMigrationCancelResponse](../resources/crosstenantmigrationcancelresponse.md)|Cancel the migration task for this resource|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|currentStatus|[crossTenantMigrationServiceStatusDetails](../resources/crosstenantmigrationservicestatusdetails.md) collection|Most recent status of this migration task|
|ID|String|ID (GUID) of the resource being migrated with this task|
|lastUpdatedDateTime|DateTimeOffset|Time the task was last updated|
|taskType|String|Type of migration task. Only Users are supported at this time.|

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

