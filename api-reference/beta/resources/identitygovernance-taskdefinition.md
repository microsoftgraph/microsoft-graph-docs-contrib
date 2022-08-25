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
|[List taskDefinitions](../api/identitygovernance-taskreport-list-taskdefinition.md)|[microsoft.graph.identityGovernance.taskDefinition](../resources/identitygovernance-taskdefinition.md) collection|Get a list of the [taskDefinition](../resources/identitygovernance-taskdefinition.md) objects and their properties.|
|[Get taskDefinition](../api/identitygovernance-taskdefinition-get.md)|[microsoft.graph.identityGovernance.taskDefinition](../resources/identitygovernance-taskdefinition.md)|Read the properties and relationships of a [taskDefinition](../resources/identitygovernance-taskdefinition.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|category|String|The category of the HR function that the tasks created using this definition can be used with. The possible values are: `joiner`, `leaver`.|
|description|String|The description of the `taskDefinition`.|
|displayName|String|The display name of the `taskDefinition`.|
|id|String|The unique identifier for the `taskDefinition`. Inherited from [entity](../resources/entity.md).|
|parameters|[microsoft.graph.identityGovernance.parameter](../resources/identitygovernance-parameter.md) collection|The parameters that must be supplied when creating a `task`.|
|version|Int32|The version number of the `taskDefinition`. New records are pushed when we add support for new parameters.|

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
    "@odata.context": "https://graph.microsoft.com/beta/$metadata#identityGovernance/lifecycleWorkflows/taskDefinitions/$entity",
    "category": "joiner,leaver",
    "description": "Disable user account in the directory",
    "displayName": "Disable User Account",
    "id": "1dfdfcc7-52fa-4c2e-bf3a-e3919cc12950",
    "version": 1,
    "parameters": []
}
```
