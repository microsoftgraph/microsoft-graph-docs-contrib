---
title: "quarantineCondition resource type"
description: "Represents a threshold condition that determines when a workflow is quarantined."
author: "ReanyAlex"
ms.date: 06/09/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# quarantineCondition resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a threshold condition that is evaluated against a [workflow](../resources/identitygovernance-workflow.md) run to determine whether the workflow should be quarantined. Quarantine conditions are configured in the **conditions** property of a [quarantineConfiguration](../resources/identitygovernance-quarantineconfiguration.md).

This is an abstract type. The following types are derived from this type:

- [countBasedQuarantineCondition](../resources/identitygovernance-countbasedquarantinecondition.md)
- [percentageBasedQuarantineCondition](../resources/identitygovernance-percentagebasedquarantinecondition.md)

The type of a condition is differentiated by its `@odata.type` property.

## Properties
None.

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.quarantineCondition"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.quarantineCondition"
}
```
