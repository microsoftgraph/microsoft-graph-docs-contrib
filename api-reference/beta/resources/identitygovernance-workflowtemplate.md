---
title: "workflowTemplate resource type"
description: "Methods, properties, and relationships of the workflowTemplate resource type"
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# workflowTemplate resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resource type noting templates of workflows created using Lifecycle Workflows. Workflows templates allow you to set up workflows based on common lifecycle management scenarios, and customize them as needed to quickly create workflows applicable for specific situations.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List workflowTemplates](../api/identitygovernance-lifecycleworkflowscontainer-list-workflowtemplates.md)|[microsoft.graph.identityGovernance.workflowTemplate](../resources/identitygovernance-workflowtemplate.md) collection|Get a list of the [workflowTemplate](../resources/identitygovernance-workflowtemplate.md) objects and their properties.|
|[Get workflowTemplate](../api/identitygovernance-workflowtemplate-get.md)|[microsoft.graph.identityGovernance.workflowTemplate](../resources/identitygovernance-workflowtemplate.md)|Read the properties and relationships of a [workflowTemplate](../resources/identitygovernance-workflowtemplate.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|category|String|The category of the workflow template.The possible values are: `joiner`, `leaver`.|
|description|String|The description of the `workflowTemplate`.|
|displayName|String|The display name of the `workflowTemplate`. <br><br>Supports  `orderby`.|
|executionConditions|[microsoft.graph.identityGovernance.workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md)|Conditions describing when to execute the workflow and the criteria to identify in-scope subject set.|
|id|String|The unique identifier for the `workflowTemplate`. Inherited from [entity](../resources/entity.md).|
|tasks|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|Represents the configured tasks to execute and their execution sequence within a `workflow`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|tasks|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|Represents the configured tasks to execute and their execution sequence within a `workflow`.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.workflowTemplate",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflowTemplates/$entity",
    "category": "joiner",
    "description": "Configure pre-hire tasks for onboarding employees before their first day",
    "displayName": "Onboard pre-hire employee",
    "id": "77179007-8114-41b5-922e-2e22109df41f",
    "executionConditions": {
        "@odata.type": "#microsoft.graph.identityGovernance.triggerAndScopeBasedConditions",
        "scope": {
            "@odata.type": "#microsoft.graph.identityGovernance.ruleBasedSubjectSet",
            "rule": "department eq 'Marketing'"
        },
        "trigger": {
            "@odata.type": "#microsoft.graph.identityGovernance.timeBasedAttributeTrigger",
            "timeBasedAttribute": "employeeHireDate",
            "offsetInDays": -7
        }
    },
    "tasks@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/workflowTemplates('77179007-8114-41b5-922e-2e22109df41f')/tasks",
    "tasks": [
        {
            "category": "joiner",
            "continueOnError": false,
            "description": "Generate Temporary Access Pass and send via email to user's manager",
            "displayName": "Generate TAP And Send Email",
            "executionSequence": 1,
            "id": "3e062c24-d219-483d-9258-288f2a039b94",
            "isEnabled": true,
            "taskDefinitionId": "1b555e50-7f65-41d5-b514-5894a026d10d",
            "arguments": [
                {
                    "name": "tapLifetimeMinutes",
                    "value": "480"
                },
                {
                    "name": "tapIsUsableOnce",
                    "value": "true"
                }
            ]
        }
    ]
}
```
