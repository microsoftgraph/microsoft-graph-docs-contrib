---
title: "userInactivityTrigger resource type"
description: "Trigger based on a user's inactivity for initiating the execution of a lifecycle workflow."
author: "AlexFilipin"
ms.date: 08/25/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# userInactivityTrigger resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the change in user activity that triggers the execution conditions of a workflow for a user.

Inherits from [microsoft.graph.identityGovernance.workflowExecutionTrigger](../resources/identitygovernance-workflowexecutiontrigger.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|inactivityPeriodInDays|Int32|Defines, in days, the period of time in which a user has been inactive.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.userInactivityTrigger"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.userInactivityTrigger",
  "inactivityPeriodInDays": "Integer"
}
```
