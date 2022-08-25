---
title: "triggerAndScopeBasedConditions resource type"
description: "properties of the triggerAndScopeBasedConditions resource type"
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# triggerAndScopeBasedConditions resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resource type noting the trigger and scope for the execution conditions of a workflow created using Lifecycle Workflows. These determine who the workflow runs for, and what sets off the workflow to run.

Inherits from [workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md).

## Properties

|Property|Type|Description|
|:---|:---|:---|
|scope|[microsoft.graph.subjectSet](../resources/subjectset.md)|Defines who the workflow runs for.|
|trigger|[microsoft.graph.identityGovernance.workflowExecutionTrigger](../resources/identitygovernance-workflowexecutiontrigger.md)|Sets a workflow to run.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "@odata.type": "microsoft.graph.identityGovernance.triggerAndScopeBasedConditions"
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
  "scope": {
            "@odata.type": "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
            "rule": "(department eq 'Marketing')"
        },
        "trigger": {
            "@odata.type": "#microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
            "timeBasedAttribute": "employeeHireDate",
            "offsetInDays": 0
        }
}
```
