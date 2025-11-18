---
title: "crossTenantMigrationCancelResponse resource type"
description: "Contains cancel request response details"
author: "danguilliams"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "t2t-migration"
doc_type: resourcePageType
---

# crossTenantMigrationCancelResponse resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains cancellation request response details from a request to cancel a CrossTenantMigrationJob. 


## Properties
|Property|Type|Description|
|:---|:---|:---|
|status|String|The cancellation request status|
|message|String|The customer facing description of the cancellation request|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.crossTenantMigrationCancelResponse"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.crossTenantMigrationCancelResponse",
  "status": "String",
  "message": "String"
}
```