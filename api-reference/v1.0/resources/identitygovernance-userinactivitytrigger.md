---
title: "userInactivityTrigger resource type"
description: "Trigger based on a user's inactivity for initiating the execution of a lifecycle workflow."
author: "AlexFilipin"
ms.date: 11/03/2025
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# userInactivityTrigger resource type

Namespace: microsoft.graph.identityGovernance

Represents a trigger based on user inactivity that initiates workflow execution for a user.

Inherits from [microsoft.graph.identityGovernance.workflowExecutionTrigger](../resources/identitygovernance-workflowexecutiontrigger.md).


## Properties
|Property|Type|Description|
|:---|:---|:---|
|inactivityPeriodInDays|Int32|The number of days a user must be inactive before triggering workflow execution.|

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
