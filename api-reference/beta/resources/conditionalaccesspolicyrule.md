---
title: "conditionalAccessPolicyRule resource type"
description: "Represents scenario-specific conditions and enforcement controls in a Conditional Access policy plan."
author: "ebasseri"
ms.reviewer: conditionalaccesspm
ms.date: 10/02/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# conditionalAccessPolicyRule resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a rule in a Conditional Access policy plan. The rule defines scenario-specific conditions and enforcement controls that are combined with the parent plan's shared conditions during evaluation.

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/conditionalaccesspolicyplan-list-rules.md)|[conditionalAccessPolicyRule](../resources/conditionalaccesspolicyrule.md) collection|Retrieve the rules in a Conditional Access policy plan.|
|[Create](../api/conditionalaccesspolicyplan-post-rules.md)|[conditionalAccessPolicyRule](../resources/conditionalaccesspolicyrule.md)|Create a rule in a Conditional Access policy plan.|
|[Get](../api/conditionalaccesspolicyrule-get.md)|[conditionalAccessPolicyRule](../resources/conditionalaccesspolicyrule.md)|Retrieve a rule in a Conditional Access policy plan.|
|[Update](../api/conditionalaccesspolicyrule-update.md)|[conditionalAccessPolicyRule](../resources/conditionalaccesspolicyrule.md)|Update a rule in a Conditional Access policy plan.|
|[Delete](../api/conditionalaccesspolicyplan-delete-rules.md)|None|Delete a rule from a Conditional Access policy plan.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|conditions|[conditionalAccessConditionSet](../resources/conditionalaccessconditionset.md)|The conditions specific to the rule. During evaluation, these conditions are combined with the parent plan's **sharedConditions** property to determine the rule's effective targeting.|
|controls|[conditionalAccessPolicyRuleControls](../resources/conditionalaccesspolicyrulecontrols.md)|The grant and session controls enforced when the rule's effective conditions are met.|
|description|String|A free-text description of the rule's purpose.|
|displayName|String|The administrator-defined display name for the rule.|
|id|String|The unique identifier for the rule. Read-only. Inherits from [entity](../resources/entity.md).|
|state|[conditionalAccessPolicyState](../resources/enums.md#conditionalaccesspolicystate-values)|The state of the rule. The possible values are: `enabled`, `disabled`, `enabledForReportingButNotEnforced`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.conditionalAccessPolicyRule"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.conditionalAccessPolicyRule",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "state": "String",
  "conditions": {
    "@odata.type": "microsoft.graph.conditionalAccessConditionSet"
  },
  "controls": {
    "@odata.type": "microsoft.graph.conditionalAccessPolicyRuleControls"
  }
}
```
