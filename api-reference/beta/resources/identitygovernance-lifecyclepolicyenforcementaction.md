---
title: "lifecyclePolicyEnforcementAction resource type"
description: "Represents an abstract enforcement action applied to an identity that becomes non-compliant with a lifecycle policy."
author: "siaggarwal-ops"
ms.date: 07/31/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# lifecyclePolicyEnforcementAction resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the abstract base type for the action applied to an identity that becomes non-compliant with a lifecycle policy. This type is configured in the **enforcementAction** property of a [lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md).

You can't create instances of this abstract type directly. Instead, use one of the following derived types:

- [deleteOnlyEnforcementAction](../resources/identitygovernance-deleteonlyenforcementaction.md)
- [disableOnlyEnforcementAction](../resources/identitygovernance-disableonlyenforcementaction.md)
- [disableThenDeleteEnforcementAction](../resources/identitygovernance-disablethendeleteenforcementaction.md)

Instances are differentiated by the **@odata.type** property. This is an abstract type.


## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.lifecyclePolicyEnforcementAction"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.lifecyclePolicyEnforcementAction"
}
```

