---
title: "taskDefinition resource type"
description: "Represents the built-in tasks that you can use to construct tasks for lifecycle workflows."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# taskDefinition resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the built-in tasks that you can use to construct tasks for lifecycle workflows. Each task has a unique template identifier. For a full list of available built-in tasks, see [supported tasks](../resources/identitygovernance-task.md#supported-tasks).

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List taskDefinitions](../api/identitygovernance-lifecycleworkflowscontainer-list-taskdefinitions.md)|[microsoft.graph.identityGovernance.taskDefinition](../resources/identitygovernance-taskdefinition.md) collection|Get a list of the [taskDefinition](../resources/identitygovernance-taskdefinition.md) objects and their properties.|
|[Get taskDefinition](../api/identitygovernance-taskdefinition-get.md)|[microsoft.graph.identityGovernance.taskDefinition](../resources/identitygovernance-taskdefinition.md)|Read the properties and relationships of a [taskDefinition](../resources/identitygovernance-taskdefinition.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|category|microsoft.graph.identityGovernance.lifecycleTaskCategory|The category of the HR function that the tasks created using this definition can be used with. The possible values are: `joiner`, `leaver`, `unknownFutureValue`. This is a multi-valued enumeration whose allowed combinations are `joiner`, `joiner,leaver`, or `leaver`.<br><br>Supports `$filter`(`eq`, `ne`, `has`) and `$orderby`. |
|ContinueOnError|Boolean|Defines if the workflow will continue if the task has an error.|
|description|String|The description of the taskDefinition.|
|displayName|String|The display name of the taskDefinition.<br><br>Supports `$filter`(`eq`, `ne`) and `$orderby`.|
|id|String|The unique identifier for the taskDefinition. Inherited from [entity](../resources/entity.md).|
|parameters|[microsoft.graph.identityGovernance.parameter](../resources/identitygovernance-parameter.md) collection|The parameters that must be supplied when creating a workflow task object.<br><br>Supports `$filter`(`any`).|
|version|Int32|The version number of the taskDefinition. New records are pushed when we add support for new parameters.<br><br>Supports `$filter`(`ge`, `gt`, `le`, `lt`, `eq`, `ne`) and `$orderby`.|

## Relationships

None.

## JSON representation

The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.taskDefinition",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.taskDefinition",
  "id": "String (identifier)",
  "category": "String",
  "continueOnError": "Boolean",
  "description": "String",
  "displayName": "String",
  "parameters": [
    {
      "@odata.type": "microsoft.graph.identityGovernance.parameter"
    }
  ],
  "version": "Integer"
}
```
