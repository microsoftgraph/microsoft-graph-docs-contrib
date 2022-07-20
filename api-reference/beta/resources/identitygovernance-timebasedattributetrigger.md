---
title: "timeBasedAttributeTrigger resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# timeBasedAttributeTrigger resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [workflowExecutionTrigger](../resources/identitygovernance-workflowexecutiontrigger.md).

## Properties
|Property|Type|Description|
|:---|:---|:---|
|offsetInDays|Int32|**TODO: Add Description**|
|timeBasedAttribute|workflowTriggerTimeBasedAttribute|**TODO: Add Description**.The possible values are: `employeeHireDate`, `unknownFutureValue`.|

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
  "offsetInDays": "Integer",
  "timeBasedAttribute": "String"
}
```

