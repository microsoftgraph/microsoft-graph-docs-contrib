---
title: "task resource type (lifecycle workflow tasks)"
description: "Represents the built-in and custom tasks within workflows in Azure AD Lifecycle Workflows."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# task resource type (lifecycle workflow tasks)

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the built-in tasks available for lifecycle workflows. Tasks are the actions a workflow will execute when triggered. The built-in task "Run a custom task extension" can be used to trigger [custom task extensions](../resources/identitygovernance-customtaskextension.md) when you reach the limits of the other available built-in tasks, this allows integration with Azure Logic Apps.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List tasks](../api/identitygovernance-workflow-list-task.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|Get a list of the [task](../resources/identitygovernance-task.md) objects and their properties.|
|[Get task](../api/identitygovernance-task-get.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md)|Read the properties and relationships of a [task](../resources/identitygovernance-task.md) object.|


## Properties

|Property|Type|Description|
|:---|:---|:---|
|arguments|[microsoft.graph.keyValuePair](../resources/keyvaluepair.md) collection|Arguments included within the task.|
|category|String|The category of the task. The possible values are: `joiner`, `leaver`, `unknownFutureValue`. This property is multi-valued and the same task can apply to both `joiner` and `leaver` categories.|
|continueOnError|Boolean|A boolean value that determines if the failure of this task stops the subsequent workflows from running.|
|description|String|A string that describes the purpose of the task for administrative use.|
|displayName|String|A unique string that identifies the task. <br><br>Supports `$filter`(`eq`) and `orderBy`.|
|executionSequence|Int32|An integer that states in what order the task will run in a workflow.|
|id|String|Identifier used for individually addressing a specific task. Inherited from [entity](../resources/entity.md).|
|isEnabled|Boolean|A boolean value that denotes whether the task is set to run or not. <br><br>Supports `$filter`(`eq`, `ne`) and `orderBy`.|
|taskDefinitionId|String|A unique template identifier for the task. For more information about the tasks that Lifecycle Workflows currently supports and their unique identifiers, see [supported tasks](../resources/identitygovernance-task.md#supported-tasks)|

### Supported tasks

Lifecycle Workflows currently support the following tasks:

| Task                                                                    | taskDefinitionID                     |
|-------------------------------------------------------------------------|--------------------------------------|
| Send welcome email to new hire                                          | 70b29d51-b59a-4773-9280-8841dfd3f2ea |
| Generate Temporary Access Password and send via email to user's manager | 1b555e50-7f65-41d5-b514-5894a026d10d |
| Add user to group                                                       | 22085229-5809-45e8-97fd-270d28d66910 |
| Add user to team                                                        | e440ed8d-25a1-4618-84ce-091ed5be5594 |
| Enable user account                                                     | 6fc52c9d-398b-4305-9763-15f42c1676fc |
| Run a custom task extension                                             | 4262b724-8dba-4fad-afc3-43fcbb497a0e |
| Disable user account                                                    | 1dfdfcc7-52fa-4c2e-bf3a-e3919cc12950 |
| Remove user from group                                                  | 1953a66c-751c-45e5-8bfe-01462c70da3c |
| Remove users from all groups                                            | b3a31406-2a15-4c9a-b25b-a658fa5f07fc |
| Remove user from teams                                                  | 06aa7acb-01af-4824-8899-b14e5ed788d6 |
| Remove user from all teams                                              | 81f7b200-2816-4b3b-8c5d-dc556f07b024 |
| Remove all license assignments from user                                | 8fa97d28-3e52-4985-b3a9-a1126f9b8b4e |
| Delete user                                                             | 8d18588d-9ad3-4c0f-99d0-ec215f0e3dff |
| Send email to manager before user last day                              | 52853a3e-f4e5-4eb8-bb24-1ac09a1da935 |
| Send email on users last day                                            | 9c0a1eaf-5bda-4392-9d9e-6e155bb57411 |
| Send offboarding email to users manager after their last day            | 6f22ddd4-b3a5-47a4-a846-0d7c201a49ce |

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|taskProcessingResults|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) collection|The result of processing the task.|

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.task",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.task",
  "id": "String (identifier)",
  "arguments": [
    {
      "@odata.type": "microsoft.graph.keyValuePair"
    }
  ],
  "category": "String",
  "continueOnError": "Boolean",
  "description": "String",
  "displayName": "String",
  "executionSequence": "Integer",
  "isEnabled": "Boolean",
  "taskDefinitionId": "String"
}
```
