---
title: "resourcePolicyDeletableRoot resource type"
description: "Provides access to deleted resource policy definitions and assignments through the **deletedItems** relationship of resourcePolicyRoot."
author: "dkershaw10"
ms.date: 10/22/2026
ms.localizationpriority: medium
ms.subservice: "entra-tenant-governance"
doc_type: resourcePageType
---

# resourcePolicyDeletableRoot resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Provides access to deleted resource policy definitions and assignments through the **deletedItems** relationship of [resourcePolicyRoot](../resources/resourcepolicyroot.md#relationships).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List deleted definitions](../api/resourcepolicydeletableroot-list-definitions.md)|[resourcePolicyDefinition](../resources/resourcepolicydefinition.md) collection|List deleted definitions.|
|[List deleted assignments](../api/resourcepolicydeletableroot-list-assignments.md)|[resourcePolicyAssignment](../resources/resourcepolicyassignment.md) collection|List deleted assignments.|
|[Restore definition](../api/resourcepolicydefinition-restore.md)|[resourcePolicyDefinition](../resources/resourcepolicydefinition.md)|Restore a deleted definition.|
|[Restore assignment](../api/resourcepolicyassignment-restore.md)|[resourcePolicyAssignment](../resources/resourcepolicyassignment.md)|Restore a deleted assignment.|
|[Permanently delete definition](../api/resourcepolicydeletableroot-delete-definitions.md)|None|Permanently delete a deleted definition.|
|[Permanently delete assignment](../api/resourcepolicydeletableroot-delete-assignments.md)|None|Permanently delete a deleted assignment.|

## Properties

None.

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|assignments|[resourcePolicyAssignment](../resources/resourcepolicyassignment.md) collection|The deleted assignments retained for 30 days, during which they can be restored.|
|definitions|[resourcePolicyDefinition](../resources/resourcepolicydefinition.md) collection|The deleted definitions retained for 30 days, during which they can be restored.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.resourcePolicyDeletableRoot",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.resourcePolicyDeletableRoot"
}
```
