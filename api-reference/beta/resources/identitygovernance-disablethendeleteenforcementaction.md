---
title: "disableThenDeleteEnforcementAction resource type"
description: "Represents an enforcement action that disables and then, after a grace period, deletes an identity that becomes non-compliant with a lifecycle policy."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# disableThenDeleteEnforcementAction resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an enforcement action that first disables a non-compliant identity and then deletes it after a configurable grace period. This type is configured in the **enforcementAction** property of a [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md).

Inherits from [lifecyclePolicyEnforcementAction](../resources/identitygovernance-lifecyclepolicyenforcementaction.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|deletionGracePeriodInDays|Int32|The number of days to wait after disabling a non-compliant identity before deleting it.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.disableThenDeleteEnforcementAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.disableThenDeleteEnforcementAction",
  "deletionGracePeriodInDays": "Integer"
}
```

