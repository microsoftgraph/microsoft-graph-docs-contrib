---
title: "lifecyclePolicyImpactSummary resource type"
description: "Summarizes the effect of a lifecycle policy on a subject during a specified period. Returned by the [impact](../api/identitygovernance-lifecyclepolicy-impact.md) function."
author: "faithwins"
ms.date: 09/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# lifecyclePolicyImpactSummary resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Summarizes the effect of a lifecycle policy on a subject during a specified period. Returned by the [impact](../api/identitygovernance-lifecyclepolicy-impact.md) function.

Inherits from [microsoft.graph.entity](../resources/entity.md).

## Methods

None.

## Properties

| Property | Type | Description |
|:---|:---|:---|
| actionsTaken | [microsoft.graph.identityGovernance.lifecyclePolicyImpactAction](../resources/identitygovernance-lifecyclepolicyimpactaction.md) collection | The policy actions taken for the subject during the evaluation period. |
| id | String | The unique identifier for the impact result. Inherited from [entity](../resources/entity.md). |

## Relationships

| Relationship | Type | Description |
|:---|:---|:---|
| subject | [directoryObject](../resources/directoryobject.md) | The subject evaluated by the policy. |

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicyImpactSummary",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
```json
{
  "@odata.type": "#microsoft.graph.identityGovernance.lifecyclePolicyImpactSummary",
  "id": "String (identifier)",
  "actionsTaken": [
    {
      "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicyImpactAction"
    }
  ]
}
```
