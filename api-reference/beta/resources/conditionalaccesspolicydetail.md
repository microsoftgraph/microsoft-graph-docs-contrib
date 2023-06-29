---
title: "conditionalAccessPolicyDetail resource type"
description: "Represents the configuration of a Microsoft recommended best-practice template for an Azure Active Directory conditional access policy."
author: "lisaychuang"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# conditionalAccessPolicyDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the configuration of the **details** property of a Microsoft recommended best-practice [template](../resources/conditionalaccesstemplate.md) for an Azure Active Directory [conditional access policy](../resources/conditionalaccesspolicy.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|conditions|[conditionalAccessConditionSet](../resources/conditionalaccessconditionset.md)| Represents the type of conditions that govern when the policy applies. |
|grantControls|[conditionalAccessGrantControls](../resources/conditionalaccessgrantcontrols.md)| Represents grant controls that must be fulfilled for the policy. |
|sessionControls|[conditionalAccessSessionControls](../resources/conditionalaccesssessioncontrols.md)| Represents a complex type of session controls that is enforced after sign-in. |

## Relationships
None.

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.conditionalAccessPolicyDetail"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.conditionalAccessPolicyDetail",
  "conditions": {
    "@odata.type": "microsoft.graph.conditionalAccessConditionSet"
  },
  "grantControls": {
    "@odata.type": "microsoft.graph.conditionalAccessGrantControls"
  },
  "sessionControls": {
    "@odata.type": "microsoft.graph.conditionalAccessSessionControls"
  }
}
```
