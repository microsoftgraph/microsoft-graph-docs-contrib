---
title: "taskDefinition resource type"
description: "Methods, properties, and relationships of the taskDefinition resource type"
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# taskDefinition resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resource type denoting the task definitions of Lifecycle Workflows. These define the built-in tasks that can be used to construct workflows created with Lifecycle Workflows.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List taskDefinitions](../api/identitygovernance-lifecycleworkflowscontainer-list-taskdefinitions.md)|[microsoft.graph.identityGovernance.taskDefinition](../resources/identitygovernance-taskdefinition.md) collection|Get a list of the [taskDefinition](../resources/identitygovernance-taskdefinition.md) objects and their properties.|
|[Create taskDefinition](../api/identitygovernance-lifecycleworkflowscontainer-post-taskdefinitions.md)|[microsoft.graph.identityGovernance.taskDefinition](../resources/identitygovernance-taskdefinition.md)|Create a new [taskDefinition](../resources/identitygovernance-taskdefinition.md) object.|
|[Get taskDefinition](../api/identitygovernance-taskdefinition-get.md)|[microsoft.graph.identityGovernance.taskDefinition](../resources/identitygovernance-taskdefinition.md)|Read the properties and relationships of a [taskDefinition](../resources/identitygovernance-taskdefinition.md) object.|
|[Update taskDefinition](../api/identitygovernance-taskdefinition-update.md)|[microsoft.graph.identityGovernance.taskDefinition](../resources/identitygovernance-taskdefinition.md)|Update the properties of a [taskDefinition](../resources/identitygovernance-taskdefinition.md) object.|
|[Delete taskDefinition](../api/identitygovernance-lifecycleworkflowscontainer-delete-taskdefinitions.md)|None|Deletes a [taskDefinition](../resources/identitygovernance-taskdefinition.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|category|lifecycleTaskCategory|The category of the task definition. The possible values are: `joiner`, `leaver`, `unknownFutureValue`.|
|continueOnError|Boolean|A boolean value that determines if the failure of the task definition stops the subsequent workflows from running.|
|description|String|A string that describes the purpose of the task definition for administrative use.|
|displayName|String|A unique string that identifies the task definition.|
|id|String|Identifier used for individually addressing a specific task definition. Inherited from [entity](../resources/entity.md).|
|parameters|[microsoft.graph.identityGovernance.parameter](../resources/identitygovernance-parameter.md) collection|The parameter of the task definition.|
|version|Int32|An integer noting the version of the task definition.|

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
