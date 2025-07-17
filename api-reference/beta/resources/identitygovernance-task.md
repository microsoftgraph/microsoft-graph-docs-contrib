---
title: "task resource type (lifecycle workflow tasks)"
description: "Represents the built-in and custom tasks within workflows in Microsoft Entra Lifecycle Workflows."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 08/01/2024
---

# task resource type (lifecycle workflow tasks)

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the built-in tasks available for lifecycle workflows. Tasks are the actions a workflow executes when triggered. The built-in task "Run a custom task extension" can be used to trigger [custom task extensions](../resources/identitygovernance-customtaskextension.md) when you reach the limits of the other available built-in tasks. This task allows integration with Azure Logic Apps.

A workflow can have up to 25 tasks.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List tasks](../api/identitygovernance-workflow-list-task.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|Get a list of the [task](../resources/identitygovernance-task.md) objects and their properties.|
|[Get task](../api/identitygovernance-task-get.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md)|Read the properties and relationships of a [task](../resources/identitygovernance-task.md) object.|
|[Update task](../api/identitygovernance-task-update.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md)|update the properties of a [task](../resources/identitygovernance-task.md) object.|


## Properties

|Property|Type|Description|
|:---|:---|:---|
|arguments|[microsoft.graph.keyValuePair](../resources/keyvaluepair.md) collection|Arguments included within the task. <br/> For guidance to configure this property, see [Configure the arguments for built-in Lifecycle Workflow tasks](/graph/identitygovernance-lifecycleworkflows-task-arguments). Required.|
|category|microsoft.graph.identityGovernance.lifecycleTaskCategory|The category of the task. The possible values are: `joiner`, `leaver`, `unknownFutureValue`. This property is multi-valued and the same task can apply to both `joiner` and `leaver` categories.<br><br>Supports `$filter`(`eq`, `ne`).|
|continueOnError|Boolean|A Boolean value that specifies whether, if this task fails, the workflow stops, and subsequent tasks aren't run. Optional.|
|description|String|A string that describes the purpose of the task for administrative use. Optional.|
|displayName|String|A unique string that identifies the task. Required.<br><br>Supports `$filter`(`eq`, `ne`) and `orderBy`.|
|executionSequence|Int32|An integer that states in what order the task runs in a workflow.<br><br>Supports `$orderby`.|
|id|String|Identifier used for individually addressing a specific task. Inherited from [entity](../resources/entity.md).<br><br>Supports `$filter`(`eq`, `ne`) and `$orderby`.|
|isEnabled|Boolean|A Boolean value that denotes whether the task is set to run or not. Optional.<br><br>Supports `$filter`(`eq`, `ne`) and `orderBy`.|
|taskDefinitionId|String|A unique template identifier for the task. For more information about the tasks that Lifecycle Workflows currently supports and their unique identifiers, see [Configure the arguments for built-in Lifecycle Workflow tasks](/graph/identitygovernance-lifecycleworkflows-task-arguments). Required.<br><br>Supports `$filter`(`eq`, `ne`).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|taskProcessingResults|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) collection|The result of processing the task.|

## JSON representation

The following JSON representation shows the resource type.
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

## Related content

+ [Configure task arguments](/graph/identitygovernance-lifecycleworkflows-task-arguments)


<!-- {
  "type": "#page.annotation",
  "section": "documentation",
  "suppressions": []
} -->
