---
title: "lifecycleWorkflowsContainer resource type"
description: "A container for the relationships that expose the Microsoft Entra ID Governance life cycle workflows API capabilities."
author: "KristinaSmith"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 11/02/2026
---

# lifecycleWorkflowsContainer resource type

Namespace: microsoft.graph.identityGovernance

A container for the relationships that expose the Microsoft Entra ID Governance Lifecycle Workflows API capabilities. This object is configured in the **lifecycleWorkflows** relationship of the [identityGovernance](../resources/identitygovernance.md) resource.

Inherits from [entity](../resources/entity.md).

## Methods

|Method|Return type|Description|
|:---|:---|:---|
|[List lifecycle policies](../api/identitygovernance-lifecycleworkflowscontainer-list-lifecyclepolicies.md)|[microsoft.graph.identityGovernance.lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md) collection|Get lifecycle policies in the tenant.|
|[Create lifecycle policy](../api/identitygovernance-lifecycleworkflowscontainer-post-lifecyclepolicies.md)|[microsoft.graph.identityGovernance.lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md)|Create a lifecycle policy of a concrete derived type.|

## Properties

|Property|Type|Description|
|:---|:---|:---|
|id|String|Identifier used for individually addressing the lifecycle workflows objects. Inherited from [entity](../resources/entity.md).|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|customTaskExtensions|[microsoft.graph.identityGovernance.customTaskExtension](../resources/identitygovernance-customtaskextension.md) collection|The **customTaskExtension** instance.|
|deletedItems|[deletedItemContainer](../resources/identitygovernance-deleteditemcontainer.md)|Deleted workflows and lifecycle policies in your lifecycle workflows instance.|
|insights|[microsoft.graph.identityGovernance.insights](../resources/identitygovernance-insights.md)|The insight container holding workflow insight summaries for a tenant.|
|lifecyclePolicies|[microsoft.graph.identityGovernance.lifecyclePolicy](../resources/identitygovernance-lifecyclepolicy.md) collection|The lifecycle policies for guest users and agent identities.|
|lifecyclePolicyPriorityConfigurations|[microsoft.graph.identityGovernance.lifecyclePolicyPriorityConfiguration](../resources/identitygovernance-lifecyclepolicypriorityconfiguration.md) collection|The ordered lifecycle policy identifiers for each subject type.|
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
