---
title: "lifecycleWorkflowsContainer resource type"
description: "A container for the relationships that expose the Microsoft Entra ID Governance life cycle workflows API capabilities."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 08/19/2024
---

# lifecycleWorkflowsContainer resource type

Namespace: microsoft.graph.identityGovernance

A container for the relationships that expose the Microsoft Entra ID Governance life cycle workflows API capabilities.

Inherits from [entity](../resources/entity.md).

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier used for individually addressing the lifecycle workflows objects. Inherited from [entity](../resources/entity.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|customTaskExtensions|[microsoft.graph.identityGovernance.customTaskExtension](../resources/identitygovernance-customtaskextension.md) collection|The **customTaskExtension** instance.|
|deletedItems|[deletedItemContainer](../resources/deleteditemcontainer.md)|Deleted workflows in your lifecycle workflows instance.|
|insights|[microsoft.graph.identityGovernance.insights](../resources/identitygovernance-insights.md)|The insight container holding workflow insight summaries for a tenant.|
|settings|[microsoft.graph.identityGovernance.lifecycleManagementSettings](../resources/identitygovernance-lifecyclemanagementsettings.md)|The settings of the lifecycle workflows instance.|
|taskDefinitions|[microsoft.graph.identityGovernance.taskDefinition](../resources/identitygovernance-taskdefinition.md) collection|The definition of tasks within the lifecycle workflows instance.|
|workflows|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md) collection|The workflows in the lifecycle workflows instance.|
|workflowTemplates|[microsoft.graph.identityGovernance.workflowTemplate](../resources/identitygovernance-workflowtemplate.md) collection|The workflow templates in the lifecycle workflow instance. |

## JSON representation

The following JSON representation shows the resource type.
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
