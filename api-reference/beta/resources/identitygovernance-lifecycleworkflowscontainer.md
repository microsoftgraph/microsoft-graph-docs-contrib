---
title: "lifecycleWorkflowsContainer resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# lifecycleWorkflowsContainer resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [entity](../resources/entity.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List lifecycleWorkflowsContainers](../api/identitygovernance-list-lifecycleworkflows.md)|[microsoft.graph.identityGovernance.lifecycleWorkflowsContainer](../resources/identitygovernance-lifecycleworkflowscontainer.md) collection|Get a list of the [lifecycleWorkflowsContainer](../resources/identitygovernance-lifecycleworkflowscontainer.md) objects and their properties.|
|[Create lifecycleWorkflowsContainer](../api/identitygovernance-post-lifecycleworkflows.md)|[microsoft.graph.identityGovernance.lifecycleWorkflowsContainer](../resources/identitygovernance-lifecycleworkflowscontainer.md)|Create a new [lifecycleWorkflowsContainer](../resources/identitygovernance-lifecycleworkflowscontainer.md) object.|
|[Get lifecycleWorkflowsContainer](../api/identitygovernance-lifecycleworkflowscontainer-get.md)|[microsoft.graph.identityGovernance.lifecycleWorkflowsContainer](../resources/identitygovernance-lifecycleworkflowscontainer.md)|Read the properties and relationships of a [lifecycleWorkflowsContainer](../resources/identitygovernance-lifecycleworkflowscontainer.md) object.|
|[Update lifecycleWorkflowsContainer](../api/identitygovernance-lifecycleworkflowscontainer-update.md)|[microsoft.graph.identityGovernance.lifecycleWorkflowsContainer](../resources/identitygovernance-lifecycleworkflowscontainer.md)|Update the properties of a [lifecycleWorkflowsContainer](../resources/identitygovernance-lifecycleworkflowscontainer.md) object.|
|[Delete lifecycleWorkflowsContainer](../api/identitygovernance-delete-lifecycleworkflows.md)|None|Deletes a [lifecycleWorkflowsContainer](../resources/identitygovernance-lifecycleworkflowscontainer.md) object.|
|[List customTaskExtensions](../api/identitygovernance-lifecycleworkflowscontainer-list-customtaskextensions.md)|[microsoft.graph.identityGovernance.customTaskExtension](../resources/identitygovernance-customtaskextension.md) collection|Get the customTaskExtension resources from the customTaskExtensions navigation property.|
|[Create customTaskExtension](../api/identitygovernance-lifecycleworkflowscontainer-post-customtaskextensions.md)|[microsoft.graph.identityGovernance.customTaskExtension](../resources/identitygovernance-customtaskextension.md)|Create a new customTaskExtension object.|
|[List deletedItemContainer](../api/identitygovernance-lifecycleworkflowscontainer-list-deleteditems.md)|[microsoft.graph.deletedItemContainer](../resources/deleteditemcontainer.md) collection|Get the deletedItemContainer resources from the deletedItems navigation property.|
|[Create deletedItemContainer](../api/identitygovernance-lifecycleworkflowscontainer-post-deleteditems.md)|[microsoft.graph.deletedItemContainer](../resources/deleteditemcontainer.md)|Create a new deletedItemContainer object.|
|[List lifecycleManagementSettings](../api/identitygovernance-lifecycleworkflowscontainer-list-settings.md)|[microsoft.graph.identityGovernance.lifecycleManagementSettings](../resources/identitygovernance-lifecyclemanagementsettings.md) collection|Get the lifecycleManagementSettings resources from the settings navigation property.|
|[Create lifecycleManagementSettings](../api/identitygovernance-lifecycleworkflowscontainer-post-settings.md)|[microsoft.graph.identityGovernance.lifecycleManagementSettings](../resources/identitygovernance-lifecyclemanagementsettings.md)|Create a new lifecycleManagementSettings object.|
|[List taskDefinitions](../api/identitygovernance-lifecycleworkflowscontainer-list-taskdefinitions.md)|[microsoft.graph.identityGovernance.taskDefinition](../resources/identitygovernance-taskdefinition.md) collection|Get the taskDefinition resources from the taskDefinitions navigation property.|
|[Create taskDefinition](../api/identitygovernance-lifecycleworkflowscontainer-post-taskdefinitions.md)|[microsoft.graph.identityGovernance.taskDefinition](../resources/identitygovernance-taskdefinition.md)|Create a new taskDefinition object.|
|[List workflows](../api/deleteditemcontainer-list-workflows.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md) collection|Get the workflow resources from the workflows navigation property.|
|[Create workflow](../api/identitygovernance-lifecycleworkflowscontainer-post-workflows.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|Create a new workflow object.|
|[List workflowTemplates](../api/identitygovernance-lifecycleworkflowscontainer-list-workflowtemplates.md)|[microsoft.graph.identityGovernance.workflowTemplate](../resources/identitygovernance-workflowtemplate.md) collection|Get the workflowTemplate resources from the workflowTemplates navigation property.|
|[Create workflowTemplate](../api/identitygovernance-lifecycleworkflowscontainer-post-workflowtemplates.md)|[microsoft.graph.identityGovernance.workflowTemplate](../resources/identitygovernance-workflowtemplate.md)|Create a new workflowTemplate object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|id|String|**TODO: Add Description** Inherited from [entity](../resources/entity.md).|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|customTaskExtensions|[microsoft.graph.identityGovernance.customTaskExtension](../resources/identitygovernance-customtaskextension.md) collection|**TODO: Add Description**|
|deletedItems|[deletedItemContainer](../resources/deleteditemcontainer.md)|**TODO: Add Description**|
|settings|[lifecycleManagementSettings](../resources/identitygovernance-lifecyclemanagementsettings.md)|**TODO: Add Description**|
|taskDefinitions|[microsoft.graph.identityGovernance.taskDefinition](../resources/identitygovernance-taskdefinition.md) collection|**TODO: Add Description**|
|workflows|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md) collection|**TODO: Add Description**|
|workflowTemplates|[microsoft.graph.identityGovernance.workflowTemplate](../resources/identitygovernance-workflowtemplate.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.lifecycleWorkflowsContainer",
  "baseType": "microsoft.graph.entity",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.lifecycleWorkflowsContainer",
  "id": "String (identifier)"
}
```

