---
title: "timeBasedAttributeTrigger resource type"
description: "Properties of the timeBasedAttributeTrigger resource type"
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# timeBasedAttributeTrigger resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resource type noting the time based trigger attribute of an execution condition of a workflow created using Lifecycle Workflows.

Inherits from [workflowExecutionTrigger](../resources/identitygovernance-workflowexecutiontrigger.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|offsetInDays|Int32|How many days before or after the time-based attribute specified. For example, if the attribute is employeeHireDate and offsetInDays is -1, then the workflow should trigger 1 day before employee hire date.|
|timeBasedAttribute|String|Determines which time-based identity property to reference. The possible values are: `employeeHireDate`, `employeeLeaveDateTime`, `unknownFutureValue`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.timeBasedAttributeTrigger"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
  "timeBasedAttribute": "employeeHireDate",
  "offsetInDays": 0
}
```
