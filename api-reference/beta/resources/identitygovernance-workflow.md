---
title: "workflow resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# workflow resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [workflowBase](../resources/identitygovernance-workflowbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List workflows](../api/deleteditemcontainer-list-workflows.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md) collection|Get a list of the [workflow](../resources/identitygovernance-workflow.md) objects and their properties.|
|[Create workflow](../api/deleteditemcontainer-post-workflows.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|Create a new [workflow](../resources/identitygovernance-workflow.md) object.|
|[Get workflow](../api/identitygovernance-workflow-get.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|Read the properties and relationships of a [workflow](../resources/identitygovernance-workflow.md) object.|
|[Update workflow](../api/identitygovernance-workflow-update.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|Update the properties of a [workflow](../resources/identitygovernance-workflow.md) object.|
|[Delete workflow](../api/deleteditemcontainer-delete-workflows.md)|None|Deletes a [workflow](../resources/identitygovernance-workflow.md) object.|
|[activate](../api/identitygovernance-workflow-activate.md)|None|**TODO: Add Description**|
|[createNewVersion](../api/identitygovernance-workflow-createnewversion.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|**TODO: Add Description**|
|[restore](../api/identitygovernance-workflow-restore.md)|[microsoft.graph.identityGovernance.workflow](../resources/identitygovernance-workflow.md)|**TODO: Add Description**|
|[List user](../api/invitation-list-inviteduser.md)|[microsoft.graph.user](../resources/user.md) collection|Get the user resources from the createdBy navigation property.|
|[Add user](../api/identitygovernance-workflow-post-createdby.md)|[microsoft.graph.user](../resources/user.md)|Add createdBy by posting to the createdBy collection.|
|[Remove user](../api/identitygovernance-workflow-delete-createdby.md)|None|Remove a [user](../resources/user.md) object.|
|[List executionScope](../api/invitation-list-inviteduser.md)|[microsoft.graph.user](../resources/user.md) collection|Get the user resources from the executionScope navigation property.|
|[Add user](../api/identitygovernance-workflow-post-executionscope.md)|[microsoft.graph.user](../resources/user.md)|Add executionScope by posting to the executionScope collection.|
|[Remove executionScope](../api/identitygovernance-workflow-delete-executionscope.md)|None|Remove a [user](../resources/user.md) object.|
|[List user](../api/invitation-list-inviteduser.md)|[microsoft.graph.user](../resources/user.md) collection|Get the user resources from the lastModifiedBy navigation property.|
|[Add user](../api/identitygovernance-workflow-post-lastmodifiedby.md)|[microsoft.graph.user](../resources/user.md)|Add lastModifiedBy by posting to the lastModifiedBy collection.|
|[Remove user](../api/identitygovernance-workflow-delete-lastmodifiedby.md)|None|Remove a [user](../resources/user.md) object.|
|[List runs](../api/identitygovernance-workflow-list-runs.md)|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md) collection|Get the run resources from the runs navigation property.|
|[Create run](../api/identitygovernance-workflow-post-runs.md)|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md)|Create a new run object.|
|[List tasks](../api/identitygovernance-taskprocessingresult-list-task.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|Get the task resources from the tasks navigation property.|
|[Create task](../api/identitygovernance-workflow-post-tasks.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md)|Create a new task object.|
|[List userProcessingResults](../api/identitygovernance-run-list-userprocessingresults.md)|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md) collection|Get the userProcessingResult resources from the userProcessingResults navigation property.|
|[Create userProcessingResult](../api/identitygovernance-workflow-post-userprocessingresults.md)|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md)|Create a new userProcessingResult object.|
|[List versions](../api/identitygovernance-workflow-list-versions.md)|[microsoft.graph.identityGovernance.workflowVersion](../resources/identitygovernance-workflowversion.md) collection|Get the workflowVersion resources from the versions navigation property.|
|[Create workflowVersion](../api/identitygovernance-workflow-post-versions.md)|[microsoft.graph.identityGovernance.workflowVersion](../resources/identitygovernance-workflowversion.md)|Create a new workflowVersion object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|category|lifecycleWorkflowCategory|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).The possible values are: `joiner`, `leaver`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|deletedDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|displayName|String|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|executionConditions|[microsoft.graph.identityGovernance.workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md)|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|id|String|**TODO: Add Description**|
|isEnabled|Boolean|**TODO: Add Description**|
|isSchedulingEnabled|Boolean|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|nextScheduleRunDateTime|DateTimeOffset|**TODO: Add Description**|
|version|Int32|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|createdBy|[user](../resources/user.md)|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md)|
|executionScope|[microsoft.graph.user](../resources/user.md) collection|**TODO: Add Description**|
|lastModifiedBy|[user](../resources/user.md)|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md)|
|runs|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md) collection|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md)|
|tasks|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md)|
|userProcessingResults|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md) collection|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md)|
|versions|[microsoft.graph.identityGovernance.workflowVersion](../resources/identitygovernance-workflowversion.md) collection|**TODO: Add Description**|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.workflow",
  "baseType": "microsoft.graph.identityGovernance.workflowBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.workflow",
  "category": "String",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "executionConditions": {
    "@odata.type": "microsoft.graph.identityGovernance.workflowExecutionConditions"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "deletedDateTime": "String (timestamp)",
  "id": "String (identifier)",
  "isEnabled": "Boolean",
  "isSchedulingEnabled": "Boolean",
  "nextScheduleRunDateTime": "String (timestamp)",
  "version": "Integer"
}
```

