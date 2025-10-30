---
title: "crossTenantMigrationTask resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# crossTenantMigrationTask resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/crosstenantmigrationjob-list-users.md)|[crossTenantMigrationTask](../resources/crosstenantmigrationtask.md) collection|Get a list of the crossTenantMigrationTask objects and their properties.|
|[Create](../api/crosstenantmigrationjob-post-users.md)|[crossTenantMigrationTask](../resources/crosstenantmigrationtask.md)|Create a new crossTenantMigrationTask object.|
|[Get](../api/crosstenantmigrationtask-get.md)|[crossTenantMigrationTask](../resources/crosstenantmigrationtask.md)|Read the properties and relationships of [crossTenantMigrationTask](../resources/crosstenantmigrationtask.md) object.|
|[Update](../api/crosstenantmigrationtask-update.md)|[crossTenantMigrationTask](../resources/crosstenantmigrationtask.md)|Update the properties of a crossTenantMigrationTask object.|
|[Delete](../api/crosstenantmigrationjob-delete-users.md)|None|Delete a crossTenantMigrationTask object.|
|[cancel](../api/crosstenantmigrationtask-cancel.md)|[crossTenantMigrationCancelResponse](../resources/crosstenantmigrationcancelresponse.md)|**TODO: Add Description**|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|currentStatus|[crossTenantMigrationServiceStatusDetails](../resources/crosstenantmigrationservicestatusdetails.md) collection|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|
|lastUpdatedDateTime|DateTimeOffset|**TODO: Add Description**|
|taskType|String|**TODO: Add Description**|

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

