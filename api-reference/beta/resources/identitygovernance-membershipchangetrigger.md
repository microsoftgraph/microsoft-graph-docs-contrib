---
title: "membershipChangeTrigger resource type"
description: "An abstract type that represents what change to group membership triggers a workflow's execution conditions for a user."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# membershipChangeTrigger resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

This is an abstract type that defines what change happens to a user's group membership that triggers the execution conditions of a workflow.

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
