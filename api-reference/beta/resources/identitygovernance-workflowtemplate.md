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
|category|String|The category of the workflow template.The possible values are: `joiner`, `leaver`, `unknownFutureValue`.|
|description|String|The description of the `workflowTemplate`.|
|displayName|String|The display name of the `workflowTemplate`. <br><br>Supports  `orderby`.|
|executionConditions|[microsoft.graph.identityGovernance.workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md)|Conditions describing when to execute the workflow and the criteria to identify in-scope subject set.|
|id|String|The unique identifier for the `workflowTemplate`. Inherited from [entity](../resources/entity.md).|

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
  "@odata.type": "#microsoft.graph.identityGovernance.workflowTemplate",
  "id": "String (identifier)",
  "category": "String",
  "description": "String",
  "displayName": "String",
  "executionConditions": {
    "@odata.type": "microsoft.graph.identityGovernance.workflowExecutionConditions"
  }
}
```
