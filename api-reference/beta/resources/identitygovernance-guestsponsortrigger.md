---
title: "guestSponsorTrigger resource type"
description: "Represents a workflow execution trigger that runs a lifecycle workflow when a guest user has fewer than the required number of sponsors."
author: "faithwins"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/08/2026
---

# guestSponsorTrigger resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a workflow execution trigger that initiates workflow execution when a guest user has fewer than the required number of sponsors.

This complex type is used in the **trigger** property of the [triggerAndScopeBasedConditions](../resources/identitygovernance-triggerandscopebasedconditions.md) resource.

Inherits from [microsoft.graph.identityGovernance.workflowExecutionTrigger](../resources/identitygovernance-workflowexecutiontrigger.md).

## Properties

| Property | Type | Description |
|:---|:---|:---|
| minimumRequiredSponsors | Int32 | The minimum number of sponsors required for a guest user. When a guest has fewer sponsors than this value, the workflow is triggered. |

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.guestSponsorTrigger",
  "baseType": "microsoft.graph.identityGovernance.workflowExecutionTrigger"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.identityGovernance.guestSponsorTrigger",
  "minimumRequiredSponsors": "Integer"
}
```
