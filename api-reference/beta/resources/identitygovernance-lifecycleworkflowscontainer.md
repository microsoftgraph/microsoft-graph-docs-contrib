---
title: "lifecycleWorkflowsContainer resource type"
description: "A container for the relationships that expose the Azure AD Identity Governance life cycle workflows API capabilities."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# lifecycleWorkflowsContainer resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A container for the relationships that expose the Azure AD Identity Governance life cycle workflows API capabilities.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List lifecycleWorkflowsContainers](../api/identitygovernance-lifecycleworkflowscontainer-list-workflows.md)|[microsoft.graph.identityGovernance.lifecycleWorkflowsContainer](../resources/identitygovernance-lifecycleworkflowscontainer.md) collection|Get a list of the [lifecycleWorkflowsContainer](../resources/identitygovernance-lifecycleworkflowscontainer.md) objects and their properties.|
|[Create lifecycleWorkflowsContainer](../api/identitygovernance-lifecycleworkflowscontainer-post-workflows.md)|[microsoft.graph.identityGovernance.lifecycleWorkflowsContainer](../resources/identitygovernance-lifecycleworkflowscontainer.md)|Create a new [lifecycleWorkflowsContainer](../resources/identitygovernance-lifecycleworkflowscontainer.md) object.|
|[Get lifecycleWorkflowsContainer](../api/identitygovernance-workflow-get.md)|[microsoft.graph.identityGovernance.lifecycleWorkflowsContainer](../resources/identitygovernance-lifecycleworkflowscontainer.md)|Read the properties and relationships of a [lifecycleWorkflowsContainer](../resources/identitygovernance-lifecycleworkflowscontainer.md) object.|
|[Update lifecycleWorkflowsContainer](../api/identitygovernance-workflow-update.md)|[microsoft.graph.identityGovernance.lifecycleWorkflowsContainer](../resources/identitygovernance-lifecycleworkflowscontainer.md)|Update the properties of a [lifecycleWorkflowsContainer](../resources/identitygovernance-lifecycleworkflowscontainer.md) object.|
|[Delete lifecycleWorkflowsContainer](../api/identitygovernance-workflow-delete.md)|None|Deletes a [lifecycleWorkflowsContainer](../resources/identitygovernance-lifecycleworkflowscontainer.md) object.|
|[List customTaskExtensions](../api/identitygovernance-lifecycleworkflowscontainer-list-customtaskextensions.md)|[microsoft.graph.identityGovernance.customTaskExtension](../resources/identitygovernance-customtaskextension.md) collection|Get the customTaskExtension resources from the customTaskExtensions navigation property.|
|[Create customTaskExtension](../api/identitygovernance-lifecycleworkflowscontainer-post-customtaskextensions.md)|[microsoft.graph.identityGovernance.customTaskExtension](../resources/identitygovernance-customtaskextension.md)|Create a new customTaskExtension object.|
|[List deletedItemContainer](../api/identitygovernance-lifecycleworkflowscontainer-list-deleteditems.md)|[microsoft.graph.deletedItemContainer](../resources/deleteditemcontainer.md) collection|Get the deletedItemContainer resources from the deletedItems navigation property.|
|[List taskDefinitions](../api/identitygovernance-lifecycleworkflowscontainer-list-taskdefinitions.md)|[microsoft.graph.identityGovernance.taskDefinition](../resources/identitygovernance-taskdefinition.md) collection|Get the taskDefinition resources from the taskDefinitions navigation property.|
|[List Deleted workflows](../api/identitygovernance-lifecycleworkflowscontainer-list-deleteditems.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md) collection|Get the deleted workflow resources from the workflows navigation property.|
|[Create workflow](../api/identitygovernance-lifecycleworkflowscontainer-post-workflows.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|Create a new workflow object.|
|[List workflowTemplates](../api/identitygovernance-lifecycleworkflowscontainer-list-workflowtemplates.md)|[microsoft.graph.identityGovernance.workflowTemplate](../resources/identitygovernance-workflowtemplate.md) collection|Get the workflowTemplate resources from the workflowTemplates navigation property.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier used for individually addressing the lifecycle workflows objects. Inherited from [entity](../resources/entity.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|customTaskExtensions|[microsoft.graph.identityGovernance.customTaskExtension](../resources/identitygovernance-customtaskextension.md) collection|The **customTaskExtension** instance.|
|deletedItems|[deletedItemContainer](../resources/deleteditemcontainer.md)|Deleted workflows in your lifecycle workflows instance.|
|settings|[microsoft.graph.identityGovernance.lifecycleManagementSettings](../resources/identitygovernance-lifecyclemanagementsettings.md)|The settings of the lifecycle workflows instance.|
|taskDefinitions|[microsoft.graph.identityGovernance.taskDefinition](../resources/identitygovernance-taskdefinition.md) collection|The definition of tasks within the lifecycle workflows instance.|
|workflows|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md) collection|The workflows in the lifecycle workflows instance.|
|workflowTemplates|[microsoft.graph.identityGovernance.workflowTemplate](../resources/identitygovernance-workflowtemplate.md) collection|The workflow templates in the lifecycle workflow instance. |

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
