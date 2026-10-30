---
title: "crossTenantMigrationServiceStatusDetails resource type"
description: "Represents the status of a workload that participates in a cross-tenant migration task."
author: "danguilliams"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "t2t-migration"
doc_type: resourcePageType
---

# crossTenantMigrationServiceStatusDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the status of a workload that participates in a [crossTenantMigrationTask](../resources/crosstenantmigrationtask.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|errors|[error](../resources/error.md) collection|Errors associated with the migration for this service.|
|message|String|Service status message.|
|service|String|Service or workload associated with the status details.|
|status|crossTenantMigrationServiceStatus|Status of the migration for the service. The possible values are: `notStarted`, `valid`, `invalid`, `error`, `inProgress`, `completed`, `failed`, `cancelled`, `pendingCancel`, `syncing`, `synced`, `finalizing`, `forceComplete`, `unknownFutureValue`.|

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

