---
title: "deleteOnlyEnforcementAction resource type"
description: "Represents an enforcement action that deletes an identity that becomes non-compliant with a lifecycle policy."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# deleteOnlyEnforcementAction resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an enforcement action that deletes a non-compliant identity. This type is configured in the **enforcementAction** property of a [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md).

Inherits from [lifecyclePolicyEnforcementAction](../resources/identitygovernance-lifecyclepolicyenforcementaction.md).


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.deleteOnlyEnforcementAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.deleteOnlyEnforcementAction"
}
```

