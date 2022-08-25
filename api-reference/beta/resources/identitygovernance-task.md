---
title: "task resource type"
description: "Methods, properties, and relationships of the task resource type"
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# task resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resource type for tasks within workflows created using Lifecycle Workflows. These are the actions a workflow will take when triggered.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List tasks](../api/identitygovernance-workflow-task-list.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|Get a list of the [task](../resources/identitygovernance-task.md) objects and their properties.|
|[Create task](../api/identitygovernance-taskprocessingresult-post-task.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md)|Create a new [task](../resources/identitygovernance-task.md) object.|
|[Get task](../api/identitygovernance-task-get.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md)|Read the properties and relationships of a [task](../resources/identitygovernance-task.md) object.|
|[Delete task](../api/identitygovernance-taskprocessingresult-delete-task.md)|None|Deletes a [task](../resources/identitygovernance-task.md) object.|
|[List taskProcessingResults](../api/identitygovernance-userprocessingresult-taskprocessingresult-list.md)|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) collection|Get the taskProcessingResult resources from the taskProcessingResults navigation property.|
|[Create taskProcessingResult](../api/identitygovernance-task-post-taskprocessingresults.md)|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md)|Create a new taskProcessingResult object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|arguments|[microsoft.graph.keyValuePair](../resources/intune-mam-keyvaluepair.md) collection|Arguments included within the task.|
|category|String|The category of the task. The possible values are: `joiner`, `leaver`, `unknownFutureValue`.|
|continueOnError|Boolean|A boolean value that determines if the failure of this task stops the subsequent workflows from running.|
|description|String|A string that describes the purpose of the task for administrative use.|
|displayName|String|A unique string that identifies the task. <br><br>Supports `$filter`(`eq`) and `orderby`.|
|executionSequence|Int32|An integer that states in what order the task will run in a workflow.|
|id|String|Identifier used for individually addressing a specific task. Inherited from [entity](../resources/entity.md).|
|isEnabled|Boolean|A boolean value that denotes whether the task is set to run or not. <br><br>Supports `$filter`(`eq`,`ne`) and `orderby`.|
|taskDefinitionId|String|A string that allows built-in workflow tasks to run.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|taskProcessingResults|[microsoft.graph.identityGovernance.taskProcessingResult](../resources/identitygovernance-taskprocessingresult.md) collection|The processing result of the task.|

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
