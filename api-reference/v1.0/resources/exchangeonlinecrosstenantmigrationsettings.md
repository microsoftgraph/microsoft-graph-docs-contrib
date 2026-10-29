---
title: "exchangeOnlineCrossTenantMigrationSettings resource type"
description: "Contains Exchange Online settings for a cross-tenant migration job."
author: "danguilliams"
ms.date: 09/24/2026
ms.localizationpriority: medium
ms.subservice: "t2t-migration"
doc_type: resourcePageType
---

# exchangeOnlineCrossTenantMigrationSettings resource type

Namespace: microsoft.graph

Contains Exchange Online settings for a [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|sourceEndpoint|String|Name of the migration endpoint in the source tenant.|
|targetDeliveryDomain|String|Delivery domain on the target tenant.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.exchangeOnlineCrossTenantMigrationSettings"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.exchangeOnlineCrossTenantMigrationSettings",
  "sourceEndpoint": "String",
  "targetDeliveryDomain": "String"
}
```
