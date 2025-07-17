---
title: "workflowVersion resource type"
description: "The version of a lifecycle workflow."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 07/22/2024
---

# workflowVersion resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents a version of a [lifecycle workflow](../resources/identitygovernance-workflowversion.md). Workflow versions are subsequent versions of workflows you can create when you need to change the workflow configuration other than its basic properties. You can view older versions of the workflow and associated reports will note which workflow version had been run.

Inherits from [workflowBase](../resources/identitygovernance-workflowbase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[Create](../api/identitygovernance-workflow-createnewversion.md)|[microsoft.graph.identityGovernance.workflowVersion](../resources/identitygovernance-workflowversion.md)|Create a new workflowVersion object.|
|[List](../api/identitygovernance-workflow-list-versions.md)|[microsoft.graph.identityGovernance.workflowVersion](../resources/identitygovernance-workflowversion.md) collection|Get a list of the [workflowVersion](../resources/identitygovernance-workflowversion.md) objects and their properties. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|[Get](../api/identitygovernance-workflowversion-get.md)|[microsoft.graph.identityGovernance.workflowVersion](../resources/identitygovernance-workflowversion.md)|Read the properties and relationships of a [workflowVersion](../resources/identitygovernance-workflowversion.md) object. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|[List tasks for a workflow version](../api/identitygovernance-workflowversion-list-tasks.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-workflowversion.md) collection|Get the task resources from the tasks navigation property. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|[Get task](../api/identitygovernance-task-get.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md)|Read the properties and relationships of a [task](../resources/identitygovernance-task.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|category|microsoft.graph.identityGovernance.lifecycleWorkflowCategory|The category of the HR function supported by the workflows created using this template. A workflow can only belong to one category. The possible values are: `joiner`, `leaver`, `mover`, `unknownFutureValue`. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).<br><br>Supports `$filter`(`eq`,`ne`) and `$orderby`|
|createdDateTime|DateTimeOffset|The date time when the `workflow` was versioned. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).<br><br>Supports `$filter`(`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderby`.|
|description|String|The description of the `workflowversion`. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|displayName|String|The display name of the `workflowversion`. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).<br><br>Supports `$filter`(`eq`, `ne`) and `orderby`.|
|executionConditions|[microsoft.graph.identityGovernance.workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md)|Conditions describing when to execute the workflow and the criteria to identify in-scope subject set. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|isEnabled|Boolean|Whether the workflow is enabled or disabled. If this setting is `true`, the workflow can be run on demand or on schedule when **isSchedulingEnabled** is `true`. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).<br><br>Supports `$filter`(`eq`, `ne`) and `orderBy`.|
|isSchedulingEnabled|Boolean|If `true`, the Lifecycle Workflow engine executes the workflow based on the schedule defined by tenant settings. Cannot be `true` for a disabled workflow (where **isEnabled** is `false`). Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).<br><br>Supports `$filter`(`eq`, `ne`) and `orderBy`.|
|lastModifiedDateTime|DateTimeOffset|The date time when the `workflow` was last modified. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).<br><br>Supports `$filter`(`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderby`.|
|versionNumber|Int32|The version of the workflow.<br><br>Supports `$filter`(`lt`, `le`, `gt`, `ge`, `eq`, `ne`) and `$orderby`.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|createdBy|[user](../resources/user.md)|The user who created the workflow. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).<br><br>Supports `$filter`(`eq`, `ne`) and `$expand`.|
|lastModifiedBy|[user](../resources/user.md)|The user who last modified the workflow.<br><br>Supports `$filter`(`eq`, `ne`) and `$expand`.|
|tasks|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|The tasks in the workflow. Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.workflowVersion",
  "baseType": "microsoft.graph.identityGovernance.workflowBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.workflowVersion",
  "category": "String",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "executionConditions": {
    "@odata.type": "microsoft.graph.identityGovernance.workflowExecutionConditions"
  },
  "isEnabled": "Boolean",
  "isSchedulingEnabled": "Boolean",
  "lastModifiedDateTime": "String (timestamp)",
  "versionNumber": "Integer"
}
```
