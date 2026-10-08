---
title: "deletedItemContainer resource type"
description: "A container for workflows that have been deleted."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 04/04/2024
---

# deletedItemContainer resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A container for [workflows](identitygovernance-workflow.md) that have been deleted.

## Properties

| Property | Type | Description |
|----------|------|-------------|
| id | String | The unique identifier for the deleted item container. Inherited from [entity](entity.md). |

## Relationships

| Relationship | Type | Description |
|--------------|------|-------------|
| workflows | [microsoft.graph.identityGovernance.workflow](identitygovernance-workflow.md) collection | A collection of workflows that have been deleted. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.deletedItemContainer",
  "openType": false
} -->

```json
{
  "@odata.type": "#microsoft.graph.identityGovernance.deletedItemContainer",
  "id": "String (identifier)",
  "workflows": [
    {
      "@odata.type": "#microsoft.graph.identityGovernance.workflow"
    }
  ]
}
```
