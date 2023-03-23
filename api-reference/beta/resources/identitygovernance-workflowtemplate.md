---
title: "workflowTemplate resource type"
description: "Represents a pre-configured template for lifecycle workflows that you can use to create a workflow. Workflow templates are available for common scenarios such as new hires and users that are leaving the organization."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# workflowTemplate resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

Represents the pre-configured templates of Lifecycle Workflows that are available in Azure AD. Workflow templates are available for common scenarios such as new hires and users that are leaving the organization.

Workflow templates allow you to set up workflows based on common lifecycle management scenarios. You can also create custom workflows from the workflow templates to achieve specific situations.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List workflowTemplates](../api/identitygovernance-lifecycleworkflowscontainer-list-workflowtemplates.md)|[microsoft.graph.identityGovernance.workflowTemplate](../resources/identitygovernance-workflowtemplate.md) collection|Get a list of the [workflowTemplate](../resources/identitygovernance-workflowtemplate.md) objects and their properties.|
|[Get workflowTemplate](../api/identitygovernance-workflowtemplate-get.md)|[microsoft.graph.identityGovernance.workflowTemplate](../resources/identitygovernance-workflowtemplate.md)|Read the properties and relationships of a [workflowTemplate](../resources/identitygovernance-workflowtemplate.md) object.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|category|microsoft.graph.identityGovernance.lifecycleWorkflowCategory|The category of the workflow template. The possible values are: `joiner`, `leaver`.<br><br>Supports `$filter`(`eq`, `ne`) and `$orderby`.|
|description|String|The description of the `workflowTemplate`.|
|displayName|String|The display name of the `workflowTemplate`.<br><br>Supports `$filter`(`eq`, `ne`) and `$orderby`.|
|executionConditions|[microsoft.graph.identityGovernance.workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md)|Conditions describing when to execute the workflow and the criteria to identify in-scope subject set.|
|id|String|The unique identifier for the `workflowTemplate`.Inherited from [entity](../resources/entity.md).<br><br>Supports `$filter`(`eq`, `ne`) and `$orderby`.|

### Supported workflow templates

Lifecycle Workflows currently provide the following predefined workflow templates:

[!INCLUDE [identitygovernance-lifecycleworkflows-workflowtemplates](../includes/identitygovernance-lifecycleworkflows-workflowtemplates.md)]

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|tasks|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|Represents the configured tasks to execute and their execution sequence within a [workflow](../resources/identitygovernance-workflow.md). This relationship is expanded by default.|

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
