---
title: "workflowBase resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# workflowBase resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**
This is an abstract type.

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List workflowBases](../api/identitygovernance-workflowbase-list.md)|[microsoft.graph.identityGovernance.workflowBase](../resources/identitygovernance-workflowbase.md) collection|Get a list of the [workflowBase](../resources/identitygovernance-workflowbase.md) objects and their properties.|
|[Get workflowBase](../api/identitygovernance-workflowbase-get.md)|[microsoft.graph.identityGovernance.workflowBase](../resources/identitygovernance-workflowbase.md)|Read the properties and relationships of a [workflowBase](../resources/identitygovernance-workflowbase.md) object.|
|[Update workflowBase](../api/identitygovernance-workflowbase-update.md)|[microsoft.graph.identityGovernance.workflowBase](../resources/identitygovernance-workflowbase.md)|Update the properties of a [workflowBase](../resources/identitygovernance-workflowbase.md) object.|
|[Delete workflowBase](../api/identitygovernance-workflowbase-delete.md)|None|Deletes a [workflowBase](../resources/identitygovernance-workflowbase.md) object.|
|[List user](../api/invitation-list-inviteduser.md)|[microsoft.graph.user](../resources/user.md) collection|Get the user resources from the createdBy navigation property.|
|[Add user](../api/identitygovernance-workflowbase-post-createdby.md)|[microsoft.graph.user](../resources/user.md)|Add createdBy by posting to the createdBy collection.|
|[Remove user](../api/identitygovernance-workflowbase-delete-createdby.md)|None|Remove a [user](../resources/user.md) object.|
|[List user](../api/invitation-list-inviteduser.md)|[microsoft.graph.user](../resources/user.md) collection|Get the user resources from the lastModifiedBy navigation property.|
|[Add user](../api/identitygovernance-workflowbase-post-lastmodifiedby.md)|[microsoft.graph.user](../resources/user.md)|Add lastModifiedBy by posting to the lastModifiedBy collection.|
|[Remove user](../api/identitygovernance-workflowbase-delete-lastmodifiedby.md)|None|Remove a [user](../resources/user.md) object.|
|[List runs](../api/identitygovernance-workflow-list-runs.md)|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md) collection|Get the run resources from the runs navigation property.|
|[Create run](../api/identitygovernance-workflowbase-post-runs.md)|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md)|Create a new run object.|
|[List tasks](../api/identitygovernance-taskprocessingresult-list-task.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|Get the task resources from the tasks navigation property.|
|[Create task](../api/identitygovernance-workflowbase-post-tasks.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md)|Create a new task object.|
|[List userProcessingResults](../api/identitygovernance-run-list-userprocessingresults.md)|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md) collection|Get the userProcessingResult resources from the userProcessingResults navigation property.|
|[Create userProcessingResult](../api/identitygovernance-workflowbase-post-userprocessingresults.md)|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md)|Create a new userProcessingResult object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|category|lifecycleWorkflowCategory|**TODO: Add Description**.The possible values are: `joiner`, `leaver`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|**TODO: Add Description**|
|description|String|**TODO: Add Description**|
|displayName|String|**TODO: Add Description**|
|executionConditions|[microsoft.graph.identityGovernance.workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md)|**TODO: Add Description**|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|createdBy|[user](../resources/user.md)|**TODO: Add Description**|
|lastModifiedBy|[user](../resources/user.md)|**TODO: Add Description**|
|runs|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md) collection|**TODO: Add Description**|
|tasks|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|**TODO: Add Description**|
|userProcessingResults|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md) collection|**TODO: Add Description**|

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
  "lastModifiedDateTime": "String (timestamp)"
}
```

