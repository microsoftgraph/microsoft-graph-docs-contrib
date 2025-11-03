---
title: "migrationsRoot resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide GitHub Name. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "**TODO: Add MS subservice. See [topic-level metadata reference](https://eng.ms/docs/products/microsoft-graph-service/microsoft-graph/document-apis/metadata)**"
doc_type: resourcePageType
---

# migrationsRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List crossTenantMigrationJobs](../api/migrationsroot-list-crosstenantmigrationjobs.md)|[crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) collection|**TODO: Add a useful description.**|
|[Create crossTenantMigrationJob](../api/migrationsroot-post-crosstenantmigrationjobs.md)|[crossTenantMigrationJob](../resources/crosstenantmigrationjob.md)|Create a new crossTenantMigrationJob object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|crossTenantMigrationJobs|[crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) collection|**TODO: Add Description**|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.migrationsRoot",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.migrationsRoot",
  "id": "String (identifier)"
}
```

