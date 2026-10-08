---
title: "periodicAttestationRule resource type"
description: "Represents a lifecycle policy rule that requires an identity to be attested at a regular interval."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# periodicAttestationRule resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a compliance rule that requires an identity to be attested within a specified interval to remain compliant with its [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md).

Inherits from [lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md).


## Methods
For the list of operations, see the methods of the [lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md) base type.

## Properties
|Property|Type|Description|
|:---|:---|:---|
|attestationIntervalInDays|Int32|The number of days within which an identity must be attested to remain compliant with the rule.|
|id|String|The unique identifier for the rule. Inherited from [entity](../resources/entity.md).|
|isEnabled|Boolean|Indicates whether the rule is enabled and evaluated as part of its policy. Inherited from [lifecyclePolicyRule](../resources/identitygovernance-lifecyclepolicyrule.md).|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.periodicAttestationRule",
  "baseType": "microsoft.graph.identityGovernance.lifecyclePolicyRule",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.periodicAttestationRule",
  "id": "String (identifier)",
  "isEnabled": "Boolean",
  "attestationIntervalInDays": "Integer"
}
```
