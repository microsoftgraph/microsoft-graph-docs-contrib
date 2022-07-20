---
title: "workflowVersion resource type"
description: "**TODO: Add Description**"
author: "**TODO: Provide Github Name. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
ms.localizationpriority: medium
ms.prod: "**TODO: Add MS prod. See [topic-level metadata reference](https://aka.ms/msgo?pagePath=API/Document/Guidelines/Metadata)**"
doc_type: resourcePageType
---

# workflowVersion resource type

Namespace: microsoft.graph.identityGovernance

[!INCLUDE [beta-disclaimer](../../includes/beta-disclaimer.md)]

**TODO: Add Description**


Inherits from [workflowBase](../resources/identitygovernance-workflowbase.md).

## Methods
|Method|Return type|Description|
|:---|:---|:---|
|[List workflowVersions](../api/identitygovernance-workflow-list-versions.md)|[microsoft.graph.identityGovernance.workflowVersion](../resources/identitygovernance-workflowversion.md) collection|Get a list of the [workflowVersion](../resources/identitygovernance-workflowversion.md) objects and their properties.|
|[Create workflowVersion](../api/identitygovernance-workflow-post-versions.md)|[microsoft.graph.identityGovernance.workflowVersion](../resources/identitygovernance-workflowversion.md)|Create a new [workflowVersion](../resources/identitygovernance-workflowversion.md) object.|
|[Get workflowVersion](../api/identitygovernance-workflowversion-get.md)|[microsoft.graph.identityGovernance.workflowVersion](../resources/identitygovernance-workflowversion.md)|Read the properties and relationships of a [workflowVersion](../resources/identitygovernance-workflowversion.md) object.|
|[Update workflowVersion](../api/identitygovernance-workflowversion-update.md)|[microsoft.graph.identityGovernance.workflowVersion](../resources/identitygovernance-workflowversion.md)|Update the properties of a [workflowVersion](../resources/identitygovernance-workflowversion.md) object.|
|[Delete workflowVersion](../api/identitygovernance-workflow-delete-versions.md)|None|Deletes a [workflowVersion](../resources/identitygovernance-workflowversion.md) object.|
|[List user](../api/invitation-list-inviteduser.md)|[microsoft.graph.user](../resources/user.md) collection|Get the user resources from the createdBy navigation property.|
|[Add user](../api/identitygovernance-workflowversion-post-createdby.md)|[microsoft.graph.user](../resources/user.md)|Add createdBy by posting to the createdBy collection.|
|[Remove user](../api/identitygovernance-workflowversion-delete-createdby.md)|None|Remove a [user](../resources/user.md) object.|
|[List user](../api/invitation-list-inviteduser.md)|[microsoft.graph.user](../resources/user.md) collection|Get the user resources from the lastModifiedBy navigation property.|
|[Add user](../api/identitygovernance-workflowversion-post-lastmodifiedby.md)|[microsoft.graph.user](../resources/user.md)|Add lastModifiedBy by posting to the lastModifiedBy collection.|
|[Remove user](../api/identitygovernance-workflowversion-delete-lastmodifiedby.md)|None|Remove a [user](../resources/user.md) object.|
|[List runs](../api/identitygovernance-workflow-list-runs.md)|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md) collection|Get the run resources from the runs navigation property.|
|[Create run](../api/identitygovernance-workflowversion-post-runs.md)|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md)|Create a new run object.|
|[List tasks](../api/identitygovernance-taskprocessingresult-list-task.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|Get the task resources from the tasks navigation property.|
|[Create task](../api/identitygovernance-workflowversion-post-tasks.md)|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md)|Create a new task object.|
|[List userProcessingResults](../api/identitygovernance-run-list-userprocessingresults.md)|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md) collection|Get the userProcessingResult resources from the userProcessingResults navigation property.|
|[Create userProcessingResult](../api/identitygovernance-workflowversion-post-userprocessingresults.md)|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md)|Create a new userProcessingResult object.|

## Properties
|Property|Type|Description|
|:---|:---|:---|
|category|lifecycleWorkflowCategory|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).The possible values are: `joiner`, `leaver`, `unknownFutureValue`.|
|createdDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|description|String|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|displayName|String|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|executionConditions|[microsoft.graph.identityGovernance.workflowExecutionConditions](../resources/identitygovernance-workflowexecutionconditions.md)|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|lastModifiedDateTime|DateTimeOffset|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md).|
|versionNumber|Int32|**TODO: Add Description**|

## Relationships
|Relationship|Type|Description|
|:---|:---|:---|
|createdBy|[user](../resources/user.md)|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md)|
|lastModifiedBy|[user](../resources/user.md)|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md)|
|runs|[microsoft.graph.identityGovernance.run](../resources/identitygovernance-run.md) collection|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md)|
|tasks|[microsoft.graph.identityGovernance.task](../resources/identitygovernance-task.md) collection|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md)|
|userProcessingResults|[microsoft.graph.identityGovernance.userProcessingResult](../resources/identitygovernance-userprocessingresult.md) collection|**TODO: Add Description** Inherited from [workflowBase](../resources/identitygovernance-workflowbase.md)|

## JSON representation
The following is a JSON representation of the resource.
<!-- {
  "blockType": "resource",
  "keyProperty": "id",
  "@odata.type": "microsoft.graph.identityGovernance.workflowVersion",
  "baseType": "microsoft.graph.identityGovernance.workflowBase",
  "openType": false
}
-->
``` json
{
  "@odata.type": "#microsoft.graph.identityGovernance.workflowVersion",
  "category": "String",
  "createdDateTime": "String (timestamp)",
  "description": "String",
  "displayName": "String",
  "executionConditions": {
    "@odata.type": "microsoft.graph.identityGovernance.workflowExecutionConditions"
  },
  "lastModifiedDateTime": "String (timestamp)",
  "versionNumber": "Integer"
}
```

