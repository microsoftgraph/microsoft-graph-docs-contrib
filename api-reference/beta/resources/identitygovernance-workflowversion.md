---
title: "workflowVersion resource type"
description: "**TODO: Add Description**"
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# workflowVersion resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resource type noting versions of workflows created using Lifecycle Workflows. Workflow versions are subsequent versions of workflows created when the need to change things other than its basic properties occur. Workflow versions also allow older versions of the workflow to be saved so that its history can be noted.

Inherits from [workflowBase](../resources/identitygovernance-workflowbase.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List workflowVersions](../api/identitygovernance-workflowversion-list.md)|[microsoft.graph.identityGovernance.workflowVersion](../resources/identitygovernance-workflowversion.md) collection|Get a list of the [workflowVersion](../resources/identitygovernance-workflowversion.md) objects and their properties.|
|[Get workflowVersion](../api/identitygovernance-workflowversion-get.md)|[microsoft.graph.identityGovernance.workflowVersion](../resources/identitygovernance-workflowversion.md)|Read the properties and relationships of a [workflowVersion](../resources/identitygovernance-workflowversion.md) object.|
|[List tasks](../api/identitygovernance-list-workflowtask.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|Get the task resources from the tasks navigation property.|
|[List userProcessingResults](../api/identitygovernance-userprocessingresult-list.md)|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md) collection|Get the userProcessingResult resources from the userProcessingResults navigation property.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|category|String|The category of the HR function supported by the workflows created using this template. A workflow can only belong to one category. The possible values are: `joiner`, `leaver`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|The date time when the `workflow` was versioned. <br><br>Supports `$filter`(`lt`, `gt`) and `$orderby`.|
|description|String|The description of the `workflowversion`.|
|displayName|String|The display name of the `workflowversion`. <br><br>Supports `$filter`(`eq`), `orderby`, and `$search`.|
|executionConditions|[microsoft.graph.identityGovernance.workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md)|Conditions describing when to execute the workflow and the criteria to identify in-scope subject set.|
|lastModifiedDateTime|DateTimeOffset|The date time when the `workflow` was last modified. <br><br>Supports `$filter`(`lt`,`gt`) and `$orderby`.|
|versionNumber|Int32|The version of the workflow.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|createdBy|[user](../resources/user.md)|The user who created the workflow.|
|lastModifiedBy|[user](../resources/user.md)|The user who last modified the workflow.|
|runs|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md) collection|A history of every time a workflow ran.|
|tasks|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|The tasks in the workflow.|
|userProcessingResults|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md) collection|The results of a user processed by the workflow.|

## JSON representation

The following is a JSON representation of the resource.
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
  "lastModifiedDateTime": "String (timestamp)",
  "versionNumber": "Integer"
}
```
