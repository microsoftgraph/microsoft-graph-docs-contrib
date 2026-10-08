---
title: "sponsorPresenceRule resource type"
description: "Represents a lifecycle policy rule that requires an identity to have a minimum number of sponsors."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# sponsorPresenceRule resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a compliance rule that requires an identity to have at least a minimum number of sponsors to remain compliant with its [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md).

Inherits from [lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md).


## Methods
For the list of operations, see the methods of the [lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md) base type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the rule. Inherited from [entity](../resources/entity.md).|
|isEnabled|Boolean|Indicates whether the rule is enabled and evaluated as part of its policy. Inherited from [lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md).|
|minimumSponsorCount|Int32|The minimum number of sponsors that an identity must have to remain compliant with the rule.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.sponsorPresenceRule",
  "baseType": "microsoft.graph.identityGovernance.lifecyclePolicyRule",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.sponsorPresenceRule",
  "id": "String (identifier)",
  "isEnabled": "Boolean",
  "minimumSponsorCount": "Integer"
}
```
