---
title: "deletedItemContainer resource type (lifecycle workflows)"
description: "A container for workflows and lifecycle policies that have been deleted."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 11/02/2026
---

# deletedItemContainer resource type (lifecycle workflows)

Namespace: microsoft.graph

A container for [workflows](../resources/identitygovernance-workflow.md) and [lifecycle policies](../resources/identitygovernance-lifecyclepolicy.md) that have been deleted.

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List lifecyclePolicies](../api/identitygovernance-deleteditemcontainer-list-lifecyclepolicies.md)|[microsoft.graph.identityGovernance.lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md) collection|Get soft-deleted lifecycle policies.|

## Properties

| Property | Type | Description |
|----------|------|-------------|
| id | String | The unique identifier for the deleted item container. Inherited from [entity](../resources/entity.md). |

## Relationships

| Relationship | Type | Description |
|--------------|------|-------------|
| lifecyclePolicies | [microsoft.graph.identityGovernance.lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md) collection | A collection of soft-deleted lifecycle policies. |
| workflows | [microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md) collection | A collection of workflows that have been deleted. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.deletedItemContainer",
  "openType": false
} -->

```json
{
  "@odata.type": "#microsoft.graph.deletedItemContainer",
  "id": "String (identifier)",
  "lifecyclePolicies": [
    {
      "@odata.type": "#microsoft.graph.identityGovernance.lifecyclePolicy"
    }
  ],
  "workflows": [
    {
      "@odata.type": "#microsoft.graph.identityGovernance.workflow"
    }
  ]
}
```
