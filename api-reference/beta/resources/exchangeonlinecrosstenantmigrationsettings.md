---
title: "exchangeOnlineCrossTenantMigrationSettings resource type"
description: "Settings used for Cross Tenant Migrations of Exchange Online resources"
author: "danguilliams"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "t2t-migration"
doc_type: resourcePageType
---

# exchangeOnlineCrossTenantMigrationSettings resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Settings used when migrating Exchange Online content during a [crossTenantMigrationJob](../resources/crosstenantmigrationjob.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|sourceEndpoint|String|Name of the Migration Endpoint in the source tenant|
|targetDeliveryDomain|String|Delivery domain on the target tenant|

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

