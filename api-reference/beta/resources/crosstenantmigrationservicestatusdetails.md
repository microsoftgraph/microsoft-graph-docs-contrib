---
title: "crossTenantMigrationServiceStatusDetails resource type"
description: "Cross Tenant Migration Service Status Details"
author: "danguilliams"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "t2t-migration"
doc_type: resourcePageType
---

# crossTenantMigrationServiceStatusDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the status and details of a migration done as part of a [crossTenantMigrationTask](../resources/crosstenantmigrationtask.md) 


## Properties
|Property|Type|Description|
|:---|:---|:---|
|errors|[error](../resources/error.md) collection|Errors associated with the migration for this service|
|message|String|Service status message|
|service|String|Service or workload the status details are associated with|
|status|crossTenantMigrationServiceStatus|Status of the migration for the service. The possible values are: `notStarted`, `valid`, `invalid`, `error`, `inProgress`, `completed`, `failed`, `cancelled`, `pendingCancel`, `syncing`, `synced`, `finalizing`, and `forceComplete`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.crossTenantMigrationServiceStatusDetails"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.crossTenantMigrationServiceStatusDetails",
  "service": "String",
  "status": "String",
  "message": "String",
  "errors": [
    {
      "@odata.type": "microsoft.graph.error"
    }
  ]
}
```

