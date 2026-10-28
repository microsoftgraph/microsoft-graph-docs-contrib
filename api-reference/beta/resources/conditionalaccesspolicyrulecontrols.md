---
title: "conditionalAccessPolicyRuleControls resource type"
description: "Represents the grant and session controls that are enforced when a Conditional Access policy rule's effective conditions are met."
author: "ebasseri"
ms.reviewer: conditionalaccesspm
ms.date: 10/02/2026
ms.localizationpriority: medium
ms.subservice: "entra-sign-in"
doc_type: resourcePageType
---

# conditionalAccessPolicyRuleControls resource type

Namespace: microsoft.graph

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the grant and session controls configured in the **controls** property of a [conditionalAccessPolicyRule](../resources/conditionalaccesspolicyrule.md).

## Methods

None.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|grantControls|[conditionalAccessGrantControls](../resources/conditionalaccessgrantcontrols.md)|The grant controls to enforce, such as multifactor authentication, a compliant device, or blocking access.|
|sessionControls|[conditionalAccessSessionControls](../resources/conditionalaccesssessioncontrols.md)|The session controls to enforce, such as sign-in frequency or persistent browser settings.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.conditionalAccessPolicyRuleControls"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.conditionalAccessPolicyRuleControls",
  "grantControls": {
    "@odata.type": "microsoft.graph.conditionalAccessGrantControls"
  },
  "sessionControls": {
    "@odata.type": "microsoft.graph.conditionalAccessSessionControls"
  }
}
```
