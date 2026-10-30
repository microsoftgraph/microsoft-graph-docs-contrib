---
title: "crossTenantMigrationCancelResponse resource type"
description: "Contains the result of a request to cancel a cross-tenant migration job or task."
author: "danguilliams"
ms.date: 10/30/2025
ms.localizationpriority: medium
ms.subservice: "t2t-migration"
doc_type: resourcePageType
---

# crossTenantMigrationCancelResponse resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Contains the result of a request to cancel a cross-tenant migration job or task. 

## Properties
|Property|Type|Description|
|:---|:---|:---|
|message|String|The description of the cancellation request.|
|status|String|The cancellation request status.|

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
