---
title: "conditionalAccessPolicyPlan resource type"
description: "Represents a Conditional Access policy plan that combines shared conditions with scenario-specific rules and enforcement controls."
author: "ebasseri"
ms.reviewer: conditionalaccesspm
ms.date: 10/02/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# conditionalAccessPolicyPlan resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a Conditional Access policy plan that groups shared conditions and related rules into a single policy configuration. The shared conditions apply to every rule in the plan, while each rule defines scenario-specific conditions and enforcement controls.

Inherits from [entity](../resources/entity.md)

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List](../api/conditionalaccessroot-list-plans.md)|[conditionalAccessPolicyPlan](../resources/conditionalaccesspolicyplan.md) collection|Retrieve a list of Conditional Access policy plans.|
|[Create](../api/conditionalaccessroot-post-plans.md)|[conditionalAccessPolicyPlan](../resources/conditionalaccesspolicyplan.md)|Create a Conditional Access policy plan.|
|[Get](../api/conditionalaccesspolicyplan-get.md)|[conditionalAccessPolicyPlan](../resources/conditionalaccesspolicyplan.md)|Retrieve a Conditional Access policy plan.|
|[Update](../api/conditionalaccesspolicyplan-update.md)|[conditionalAccessPolicyPlan](../resources/conditionalaccesspolicyplan.md)|Update a Conditional Access policy plan.|
|[Delete](../api/conditionalaccessroot-delete-plans.md)|None|Delete a Conditional Access policy plan.|
|[List rules](../api/conditionalaccesspolicyplan-list-rules.md)|[conditionalAccessPolicyRule](../resources/conditionalaccesspolicyrule.md) collection|Retrieve the rules contained in the Conditional Access policy plan.|
|[Create rule](../api/conditionalaccesspolicyplan-post-rules.md)|[conditionalAccessPolicyRule](../resources/conditionalaccesspolicyrule.md)|Create a rule in the Conditional Access policy plan.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|createdDateTime|DateTimeOffset|The date and time the plan was created, in UTC. Read-only.|
|description|String|A free-text description of the plan's purpose and scope.|
|displayName|String|The administrator-defined display name for the plan.|
|id|String|The unique identifier for the plan. Read-only. Inherits from [entity](../resources/entity.md).|
|modifiedDateTime|DateTimeOffset|The date and time the plan was last modified, in UTC. Read-only.|
|owners|String collection|The IDs of users and groups recorded as metadata owners of the plan. Does not grant any role or permission to the plan.|
|sharedConditions|[conditionalAccessConditionSet](../resources/conditionalaccessconditionset.md)|The conditions that apply to every rule in the plan. During evaluation, these conditions are combined with each rule's **conditions** property; rules can add conditions but can't remove plan-level conditions.|
|tags|String collection|The administrator-defined tags used to categorize and organize the plan.|
|templateId|String|The identifier of the Microsoft-managed template from which the plan was created. The value is `null` for custom plans.|
|version|Int32|The version number of the plan. The service increments this value each time the plan is updated. Read-only.|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|rules|[conditionalAccessPolicyRule](../resources/conditionalaccesspolicyrule.md) collection|The unordered collection of rules contained in the plan. Each rule defines scenario-specific conditions and enforcement controls.|

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.conditionalAccessPolicyPlan"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.conditionalAccessPolicyPlan",
  "id": "String (identifier)",
  "displayName": "String",
  "description": "String",
  "owners": [
    "String"
  ],
  "tags": [
    "String"
  ],
  "version": "Integer",
  "templateId": "String",
  "createdDateTime": "String (timestamp)",
  "modifiedDateTime": "String (timestamp)",
  "sharedConditions": {
    "@odata.type": "microsoft.graph.conditionalAccessConditionSet"
  },
  "rules": [
    {
      "@odata.type": "microsoft.graph.conditionalAccessPolicyRule"
    }
  ]
}
```
