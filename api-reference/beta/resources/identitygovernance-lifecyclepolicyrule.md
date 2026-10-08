---
title: "lifecyclePolicyRule resource type"
description: "Represents an abstract base compliance rule evaluated as part of a lifecycle policy."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# lifecyclePolicyRule resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an abstract base compliance rule that's evaluated as part of a [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md). The rules of a policy are combined with AND logic, and a maximum of 10 rules are allowed per policy.

You can't create instances of this abstract type directly. Instead, use one of the following derived types:

- [periodicAttestationRule](../resources/identitygovernance-periodicattestationrule.md)
- [sponsorPresenceRule](../resources/identitygovernance-sponsorpresencerule.md)
- [inactivityRule](../resources/identitygovernance-inactivityrule.md)

Instances are differentiated by the **@odata.type** property. This is an abstract type.

Inherits from [entity](../resources/entity.md).


## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List rules](../api/identitygovernance-lifecyclepolicy-list-rules.md)|[microsoft.graph.identityGovernance.lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md) collection|Get a list of the lifecyclePolicyRule objects and their properties.|
|[Get lifecyclePolicyRule](../api/identitygovernance-lifecyclepolicyrule-get.md)|[microsoft.graph.identityGovernance.lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md)|Read the properties and relationships of [lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md) object.|
|[Update lifecyclePolicyRule](../api/identitygovernance-lifecyclepolicyrule-update.md)|[microsoft.graph.identityGovernance.lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md)|Update the properties of a lifecyclePolicyRule object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the rule. Inherited from [entity](../resources/entity.md).|
|isEnabled|Boolean|Indicates whether the rule is enabled and evaluated as part of its policy.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicyRule",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.lifecyclePolicyRule",
  "id": "String (identifier)",
  "isEnabled": "Boolean"
}
```
