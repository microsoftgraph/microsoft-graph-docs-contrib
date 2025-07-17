---
title: "timeBasedAttributeTrigger resource type"
description: "Trigger based on a time-based attribute for initiating the execution of a lifecycle workflow. The combination of scope and trigger conditions determine when a workflow is executed and on which identities."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# timeBasedAttributeTrigger resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Trigger based on a time-based attribute for initiating the execution of a [lifecycle workflow](../resources/identitygovernance-workflow.md). The combination of scope and trigger conditions determines when a workflow is executed and on which identities.

Inherits from [workflowExecutionTrigger](../resources/identitygovernance-workflowexecutiontrigger.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|offsetInDays|Int32|How many days before or after the time-based attribute specified the workflow should trigger. For example, if the attribute is `employeeHireDate` and offsetInDays is -1, then the workflow should trigger one day before the employee hire date. The value can range between -180 and 180 days.|
|timeBasedAttribute|[microsoft.graph.identityGovernance.workflowTriggerTimeBasedAttribute](../resources/identitygovernance-timebasedattributetrigger.md)|Determines which time-based identity property to reference. The possible values are: `employeeHireDate`, `employeeLeaveDateTime`, `createdDateTime`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
  "baseType": "microsoft.graph.identityGovernance.workflowExecutionTrigger"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
  "offsetInDays": "Integer",
  "timeBasedAttribute": "String"
}
```
