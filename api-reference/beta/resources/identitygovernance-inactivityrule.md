---
title: "inactivityRule resource type"
description: "Represents a lifecycle policy rule that flags an identity as non-compliant after a period of inactivity."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# inactivityRule resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a compliance rule that flags an identity as non-compliant with its [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md) when the identity is inactive beyond a specified threshold.

Inherits from [lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md).


## Methods
For the list of operations, see the methods of the [lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md) base type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|The unique identifier for the rule. Inherited from [entity](../resources/entity.md).|
|isEnabled|Boolean|Indicates whether the rule is enabled and evaluated as part of its policy. Inherited from [lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md).|
|lastActivityThresholdInDays|Int32|The maximum number of days an identity can remain inactive before it's flagged as non-compliant by the rule.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.inactivityRule",
  "baseType": "microsoft.graph.identityGovernance.lifecyclePolicyRule",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.inactivityRule",
  "id": "String (identifier)",
  "isEnabled": "Boolean",
  "lastActivityThresholdInDays": "Integer"
}
```
