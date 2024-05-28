---
title: "membershipChangeTrigger resource type"
description: "An abstract type representing the change in group membership that triggers the execution conditions of a workflow for a user."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# membershipChangeTrigger resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type representing the change in group membership that triggers the execution conditions of a workflow for a user.

Inherits from [microsoft.graph.identityGovernance.workflowExecutionTrigger](../resources/identitygovernance-workflowexecutiontrigger.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|changeType|microsoft.graph.identityGovernance.membershipChangeType|Defines what change that happens to the workflow group to trigger the [workflowExecutionTrigger](../resources/identitygovernance-workflowexecutiontrigger.md). Possible values are: `add`, `remove`, `unknownFutureValue`.|

## Relationships
None.

## JSON representation
The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.membershipChangeTrigger"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.membershipChangeTrigger",
  "changeType": "String"
}
```
