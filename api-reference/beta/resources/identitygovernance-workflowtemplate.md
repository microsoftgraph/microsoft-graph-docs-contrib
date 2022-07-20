---
title: "workflowTemplate resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# workflowTemplate resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List workflowTemplates](../api/identitygovernance-lifecycleworkflowscontainer-list-workflowtemplates.md)|[microsoft.graph.identityGovernance.workflowTemplate](../resources/identitygovernance-workflowtemplate.md) collection|Get a list of the [workflowTemplate](../resources/identitygovernance-workflowtemplate.md) objects and their properties.|
|[Create workflowTemplate](../api/identitygovernance-lifecycleworkflowscontainer-post-workflowtemplates.md)|[microsoft.graph.identityGovernance.workflowTemplate](../resources/identitygovernance-workflowtemplate.md)|Create a new [workflowTemplate](../resources/identitygovernance-workflowtemplate.md) object.|
|[Get workflowTemplate](../api/identitygovernance-workflowtemplate-get.md)|[microsoft.graph.identityGovernance.workflowTemplate](../resources/identitygovernance-workflowtemplate.md)|Read the properties and relationships of a [workflowTemplate](../resources/identitygovernance-workflowtemplate.md) object.|
|[Update workflowTemplate](../api/identitygovernance-workflowtemplate-update.md)|[microsoft.graph.identityGovernance.workflowTemplate](../resources/identitygovernance-workflowtemplate.md)|Update the properties of a [workflowTemplate](../resources/identitygovernance-workflowtemplate.md) object.|
|[Delete workflowTemplate](../api/identitygovernance-lifecycleworkflowscontainer-delete-workflowtemplates.md)|None|Deletes a [workflowTemplate](../resources/identitygovernance-workflowtemplate.md) object.|
|[List tasks](../api/identitygovernance-taskprocessingresult-list-task.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|Get the task resources from the tasks navigation property.|
|[Create task](../api/identitygovernance-workflowtemplate-post-tasks.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md)|Create a new task object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|category|lifecycleWorkflowCategory|**TODO: Add Description**.The possible values are: `joiner`, `leaver`, `unknownFutureValue`.|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|executionConditions|[microsoft.graph.identityGovernance.workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md)|**TODO: Add Description**|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|tasks|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|**TODO: Add Description**|

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

