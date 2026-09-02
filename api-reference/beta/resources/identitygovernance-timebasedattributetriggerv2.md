---
title: "timeBasedAttributeTriggerV2 resource type"
description: "Represents an extensible time-based trigger that evaluates a user's date attribute to initiate a lifecycle workflow."
author: "jackschedel"
ms.date: 08/10/2026
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
---

# timeBasedAttributeTriggerV2 resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents an extensible time-based trigger that evaluates a user's date attribute by using a configurable operator to initiate a [lifecycle workflow](../resources/identitygovernance-workflow.md).

Inherits from [workflowExecutionTrigger](../resources/identitygovernance-workflowexecutiontrigger.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|attribute|String|The name of the date-type user attribute to evaluate, such as `employeeHireDate` or `employeeLeaveDateTime`.|
|operator|[microsoft.graph.identityGovernance.workflowExecutionTriggerOperator](../resources/identitygovernance-workflowexecutiontriggeroperator.md)|The operator that determines how to evaluate the date attribute.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.

<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.timeBasedAttributeTriggerV2",
  "baseType": "microsoft.graph.identityGovernance.workflowExecutionTrigger"
}
-->
```json
{
  "@odata.type": "#microsoft.graph.identityGovernance.timeBasedAttributeTriggerV2",
  "attribute": "String",
  "operator": {"@odata.type": "microsoft.graph.identityGovernance.workflowExecutionTriggerOperator"}
}
```
