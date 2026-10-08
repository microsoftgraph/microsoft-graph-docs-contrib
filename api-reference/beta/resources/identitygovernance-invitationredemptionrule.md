---
title: "invitationRedemptionRule resource type"
description: "Represents a lifecycle policy rule that requires a guest user to redeem their invitation within a specified period."
author: "faithwins"
ms.date: 09/25/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# invitationRedemptionRule resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a lifecycle policy rule that requires a guest user to redeem their invitation within a specified period.
Inherits from [microsoft.graph.identityGovernance.lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md).

## Methods

This resource is part of a polymorphic collection managed by the [lifecyclePolicyRule resource](../resources/identitygovernance-lifecyclepolicyrule.md) base type. Operations are performed through the base type endpoints.

## Properties

| Property | Type | Description |
|:---|:---|:---|
| id | String | The unique identifier for the rule. Inherited from [entity](../resources/entity.md). |
| isEnabled | Boolean | Indicates whether the rule is enabled. Inherited from [lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md). |
| invitationRedemptionThresholdInDays | Int32 | The number of days in which the guest user must redeem their invitation. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.invitationRedemptionRule"
}
-->

```json
{
  "@odata.type": "#microsoft.graph.identityGovernance.invitationRedemptionRule",
  "id": "String (identifier)",
  "isEnabled": "Boolean",
  "invitationRedemptionThresholdInDays": "Integer"
}
```
