---
title: "lifecycleWorkflowsContainer resource type"
description: "Methods, properties, and relationships for the lifecycleWorkflowsContainer resource"
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# lifecycleWorkflowsContainer resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

A resource type noting a Lifecycle Workflows instance.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|


## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier used for individually addressing the lifecycleworkflowscontainer. Inherited from [entity](../resources/entity.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|customTaskExtensions|[microsoft.graph.identityGovernance.customTaskExtension](../resources/identitygovernance-customtaskextension.md) collection|The **customTaskExtension** instance.|
|deletedItems|[deletedItemContainer](../resources/deleteditemcontainer.md)|Deleted workflows in your Lifecycle Workflows instance.|
|settings|[microsoft.graph.identityGovernance.lifecycleManagementSettings](../resources/identitygovernance-lifecyclemanagementsettings.md)|The settings of the Lifecycle Workflows instance.|
|taskDefinitions|[microsoft.graph.identityGovernance.taskDefinition](../resources/identitygovernance-taskdefinition.md) collection|The definition of tasks within the Lifecycle Workflows instance.|
|workflows|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md) collection|The workflows in the Lifecycle Workflows instance.|
|workflowTemplates|[microsoft.graph.identityGovernance.workflowTemplate](../resources/identitygovernance-workflowtemplate.md) collection|The workflow templates in the Lifecycle Workflow instance. |

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
