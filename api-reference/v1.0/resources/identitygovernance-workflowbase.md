---
title: "workflowBase resource type"
description: "An abstract type that exposes the properties for configuring a lifecycle workflow."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.subservice: "entra-id-governance"
doc_type: resourcePageType
ms.date: 04/03/2024
---

# workflowBase resource type

Namespace: microsoft.graph.identityGovernance

An abstract type that exposes the properties for configuring a custom lifecycle workflow. This resource is inherited by the following resource types:
+ [workflow](../resources/identitygovernance-workflow.md)
+ [workflowVersion](../resources/identitygovernance-workflowversion.md)

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|category|microsoft.graph.identityGovernance.lifecycleWorkflowCategory|The category of the workflow. The possible values are: `joiner`, `leaver`, `mover`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|When a workflow was created.|
|description|String|A string that describes the purpose of the workflow.|
|displayName|String|A string to identify the workflow.|
|executionConditions|[microsoft.graph.identityGovernance.workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md)|Defines when and for who the workflow will run.|
|isEnabled|Boolean|Whether the workflow is enabled or disabled. If this setting is `true`, the workflow can be run on demand or on schedule when **isSchedulingEnabled** is `true`.|
|isSchedulingEnabled|Boolean|If `true`, the Lifecycle Workflow engine executes the workflow based on the schedule defined by tenant settings. Can't be `true` for a disabled workflow (where **isEnabled** is `false`).|
|lastModifiedDateTime|DateTimeOffset|When the workflow was last modified.|

## Relationships

|Relationship|Type|Description|
|:---|:---|:---|
|createdBy|[user](../resources/user.md)|The user who created the workflow.|
|lastModifiedBy|[user](../resources/user.md)|The unique identifier of the Microsoft Entra identity that last modified the workflow.|
|tasks|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|The tasks in the workflow.|

## JSON representation

The following JSON representation shows the resource type.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.workflowBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.workflowBase",
  "category": "String",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "executionConditions": {
    "@odata.type": "microsoft.graph.identityGovernance.workflowExecutionConditions"
  },
  "isEnabled": "Boolean",
  "isSchedulingEnabled": "Boolean",
  "lastModifiedDateTime": "String (timestamp)"
}
```
