---
title: "policyRuleDelta resource type"
description: "Defines the action for updating the policy rule."
author: "Moti-ba"
ms.localizationpriority: medium
ms.prod: identity-and-access
doc_type: resourcePageType
---

# policyRuleDelta resource type

Namespace: microsoft.graph.networkaccess

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Defines the action for [updating the policy rule](../api/networkaccess-forwardingpolicy-updatepolicyrules.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|action|microsoft.graph.networkaccess.forwardingRuleAction|Required. The possible values are: `bypass`, `forward`, `unknownFutureValue`.|
|ruleId|String|The identifier of the policy rule to update.|

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.networkaccess.policyRuleDelta"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.networkaccess.policyRuleDelta",
  "ruleId": "String",
  "action": "String"
}
```

