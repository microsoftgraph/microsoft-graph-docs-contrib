---
title: "workflowBase resource type"
description: "An abstract type that exposes the properties for configuring a lifecycle workflow."
author: "AlexFilipin"
ms.localizationpriority: medium
ms.prod: "governance"
doc_type: resourcePageType
---

# workflowBase resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

An abstract type that exposes the properties for configuring a custom lifecycle workflow. This resource is inherited by the following resource types:
+ [workflow](../resources/identitygovernance-workflow.md)
+ [workflowVersion](../resources/identitygovernance-workflowversion.md)

## Methods

None.

## Properties

|Property|Type|Description|
|:---|:---|:---|
|category|microsoft.graph.identityGovernance.lifecycleWorkflowCategory|The category of the workflow. The possible values are: `joiner`, `leaver`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|When a workflow was created.|
|description|String|A string that describes the purpose of the workflow.|
|displayName|String|A string to identify the workflow.|
|executionConditions|[microsoft.graph.identityGovernance.workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md)|Defines when and for who the workflow will run.|
|isEnabled|Boolean|Whether the workflow is enabled or disabled. If this setting is `true`, the workflow can be run on demand or on schedule when **isSchedulingEnabled** is `true`.|
|isSchedulingEnabled|Boolean|If `true`, the Lifecycle Workflow engine executes the workflow based on the schedule defined by tenant settings. Cannot be `true` for a disabled workflow (where **isEnabled** is `false`).|
|lastModifiedDateTime|DateTimeOffset|When the workflow was last modified.|

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
