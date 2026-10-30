---
title: "migrationsRoot resource type"
description: "Provides the root path from which cross-tenant migration operations are performed."
author: "danguilliams"
ms.date: 09/24/2026
ms.localizationpriority: medium
ms.subservice: "t2t-migration"
doc_type: resourcePageType
---

# migrationsRoot resource type

Namespace: microsoft.graph

Provides the root path from which cross-tenant migration operations are performed.

Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List crossTenantMigrationJobs](../api/migrationsroot-list-crosstenantmigrationjobs.md)|[crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) collection|Get a list of the [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) objects and their properties.|
|[Create crossTenantMigrationJob](../api/migrationsroot-post-crosstenantmigrationjobs.md)|[crossTenantMigrationJob](../resources/crosstenantmigrationjob.md)|Create a new [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The migration root ID. Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|crossTenantMigrationJobs|[crossTenantMigrationJob](../resources/crosstenantmigrationjob.md) collection|Migration jobs associated with this tenant.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
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
