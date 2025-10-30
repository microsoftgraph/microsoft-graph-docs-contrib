---
title: "crossTenantMigrationServiceStatusDetails resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# crossTenantMigrationServiceStatusDetails resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


## Properties
|Property|Type|Description|
|:---|:---|:---|
|errors|[error](../resources/error.md) collection|**TODO: Add Description**|
|message|String|**TODO: Add Description**|
|service|String|**TODO: Add Description**|
|status|crossTenantMigrationServiceStatus|**TODO: Add Description**. The possible values are: `notStarted`, `valid`, `invalid`, `error`, `inProgress`, `completed`, `failed`, `cancelled`, `pendingCancel`, `syncing`, `synced`, `finalizing`, `forceComplete`, `unknownFutureValue`.|

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

