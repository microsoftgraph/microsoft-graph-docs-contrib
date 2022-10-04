---
title: "conditionalAccessPolicyDetail resource type"
description: "Represents details of a Microsoft recommended template for Azure Active Directory conditional access policy."
author: "xuchen1"
ms.localizationpriority: medium
ms.prod: "identity-and-sign-in"
doc_type: resourcePageType
---

# conditionalAccessPolicyDetail resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents details of Conditional Access policy templates.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|conditions|[conditionalAccessConditionSet](../resources/conditionalaccessconditionset.md)| Represents the type of conditions that govern when the policy applies. |
|grantControls|[conditionalAccessGrantControls](../resources/conditionalaccessgrantcontrols.md)| Represents grant controls that must be fulfilled to pass the policy. |
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