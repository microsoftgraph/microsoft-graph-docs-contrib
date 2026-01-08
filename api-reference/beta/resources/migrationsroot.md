---
title: "migrationsRoot resource type"
description: "Migrations of content"
author: "danguilliams"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "t2t-migration"
doc_type: resourcePageType
---

# migrationsRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

The root path from which migration actions are performed.


Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List crossTenantMigrationJobs](../api/migrationsroot-list-crosstenantmigrationjobs.md)|[crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) collection|List all of the crossTenantMigrationJobs for this tenant|
|[Create crossTenantMigrationJob](../api/migrationsroot-post-crosstenantmigrationjobs.md)|[crossTenantMigrationJob](../resources/crosstenantmigrationjob.md)|Create a new crossTenantMigrationJob to migrate content to this tenant|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|ID|String|migrations root ID. Inherited from [entity](../resources/entity.md). Inherits from [entity](../resources/entity.md)|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|crossTenantMigrationJobs|[crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) collection|Migration Jobs associated with this tenant.|

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

